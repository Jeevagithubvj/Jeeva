pipeline
{
    agent any

    stages{
        stage ('git integration')
        {
            step {
                git branch: 'main', url: 'https://github.com/Jeevagithubvj/Jeeva.git'
            }
        }
        stage ('build')
        {
            step {
                sh ('javac HelloWorld;java HelloWorld')
            }
        }
    }
}
