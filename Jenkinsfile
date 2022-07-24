pipeline {
    agent any
    stages {
	    stage('Compile Source codes '){
            steps{
                sh "echo 'Start compile ....'"
                build job: 'dotnet'
                sh "echo 'Finish compile ...'"
            }
            
        }
	}
}
