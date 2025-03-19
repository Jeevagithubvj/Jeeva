pipeline
{
   agent none
    stages
    {
        
        stage ('git checkout')
        {
             agent
         {
           docker { image 'nginx:latest'}
         }
            steps
            {
                script
                {
                echo 'checkouts completed'
                sh '''ls -ltr'''
                }
            }
        }
         stage ('multi docker agent pipeline')
        {
             agent
         {
           docker { image 'jeeva1235/heyalam:v2'}
         }
            steps
            {
                script
                {
                echo 'second stage'
                sh '''pwd'''
                }
            }
        }
    
    }
}
