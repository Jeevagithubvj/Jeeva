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
                echo 'checkouts completed'
            }
            steps
            {
                sh '''ss -tuln '''
            }
        }
    }
}
