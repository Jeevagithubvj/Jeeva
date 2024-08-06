pipeline {
    agent none  // No global agent specified
    stages {
        stage('first') {
            agent {
                docker { image 'maven:latest' }  // Use Maven Docker image for this stage
            }
            steps {
                sh 'ls'  // List files in the current directory
            }
        }
        stage('second') {
            agent {
                docker { image 'nginx:latest' }  // Use Nginx Docker image for this stage
            }
            steps {
                sh 'pwd'  // Print the working directory
            }
        }
    }
}
