pipeline {
    agent {
        label 'AGENT-1'
    }
    options {
        timeout(time: 30, unit: 'MINUTES')
        disableConcurrentBuilds()
        ansiColor('xterm')
    }
    parameters {
        string(name: 'appVersion', defaultValue: '1.0.0', description: 'What is the application version?')
    }
    environment{
        def appVersion = '' //variable declaration
        nexusUrl = 'nexus.daws78s.online:8081'
    }
    stages {
        stage('print the version'){
            steps{
                script{
                    echo "Application version: ${params.appVersion}"
                }
            }
        }


         stage('terraform init'){
            steps{
               sh """
                   cd terraform
                   terraform init
               """
            }
        }

        stage('terraform plan'){
            steps{
               sh """
                   cd terraform
                   terraform plan
               """
            }
        }
    stage('terraform apply'){
            steps{
               sh """
                   cd terraform
                   terraform apply -auto-approve
               """
            }
        }
        
    }
    post { 
        always { 
            echo 'I will always say Hello again!'
            deleteDir()
        }
        success { 
            echo 'I will run when pipeline is success'
        }
        failure { 
            echo 'I will run when pipeline is failure'
        }
    }
}