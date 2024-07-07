pipeline {
    agent any
    
    stages {
        stage('Git Integration') {
            steps {
                git branch: 'main', url: 'https://github.com/Jeevagithubvj/Jeeva.git'
            }
        }
        
        stage('Build') {
            steps {
                sh 'javac HelloWorld.java'
                sh 'java HelloWorld'
            }
        }
    }
}
