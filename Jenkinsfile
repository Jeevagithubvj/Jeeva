pipeline {
    agent none
    stages {
        stage('first') {
            agent {
                docker {
                    image 'maven:latest'
                }
            }
            steps {
                sh 'ls'
            }
        }
        stage('second') {
            agent {
                docker {
                    image 'nginx:latest'
                }
            }
            steps {
                sh 'pwd'
            }
        }
    }
}
