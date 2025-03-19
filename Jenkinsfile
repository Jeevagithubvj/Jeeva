pipeline
{
    agent
    {
        docker { image 'nginx:latest'}
    }
    stages
    {
        stage ('git checkout')
        {
            steps
            {
                script
                {
                echo 'checkouts completed'
                sh '''ls -ltr'''
                }
            }
        }
    
    }
}
