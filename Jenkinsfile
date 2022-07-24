pipeline {
    agent any
    stages {
	stage('Compile Source codes '){
            steps{
                build job: 'dotnet'
            }
            
        }
	stage('Create Docker file'){
            steps{
                sh 'docker build -d'
            }
            
        }
    }
}
