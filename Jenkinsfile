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
                sh 'pwd'
            }
            
        }
    }
}
