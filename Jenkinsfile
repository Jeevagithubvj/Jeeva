pipeline {
    agent any 
    stages {
        stage('git integration') {
            steps {
                git branch: 'main', url: 'https://github.com/Jeevagithubvj/Jeeva.git'
            }
        }
        stage('build') {
            steps {
                // Adjusting for Windows to compile and run Java code
                bat 'javac HelloWorld.java'
                bat 'java HelloWorld'
            }
        }
    }
}
