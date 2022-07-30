pipeline {
	node {
        stage('SCM') {
        checkout scm
        }
    stage('SonarQube Analysis') {
       def scannerHome = tool 'SonarScanner for MSBuild'
       withSonarQubeEnv() {
          bat "dotnet ${scannerHome}\\SonarScanner.MSBuild.dll begin /k:\"test_1\""
          bat "dotnet build"
          bat "dotnet ${scannerHome}\\SonarScanner.MSBuild.dll end"
       }
     }
   }
 
    agent any
    stages {
	stage('Compile Source codes '){
            steps{
                build job: 'dotnet'
            }
            
        }
	stage('Create Docker file'){
             agent { label 'linux' }
	     steps{
                sh 'cp Dockerfile  /usr/jenkins/workspace/dotnet/DotnetCore/xUnitSample/bin/Debug/.'
		sh 'docker build -t mydotnet:latest /usr/jenkins/workspace/dotnet/DotnetCore/xUnitSample/bin/Debug/.'
            }
            
        }
    }
}
