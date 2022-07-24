pipeline {
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
                sh 'cp Dockerfile  /usr/jenkins/workspace/dotnet/DotnetCore/xUnitSample/bin/Debug/netcoreapp2.2/.'
		sh 'docker build -t mydotnet:latest .'
            }
            
        }
    }
}
