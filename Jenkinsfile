pipeline {
    agent {
        label 'AGENT-1'
    }
    environment{
        def appVersion = ''   //variable declaration
        nexusUrl = 'nexus.daws78s-rev.online:8081'

    }

    parameters {
        string(name:'appVersion', defaultValue: '1.0.0', description: 'What is the version?')
    }
    stages {

        stage('Print the version')
        {
            steps{
                script{
                

                echo "application version is "{params.appVersion}""
                }
            }
        }
       
    }
    post {
    always {
       
          deleteDir()
    }
}


}