pipeline {

    agent any

    stages {

        stage('Terraform Init') {
            steps {

                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: 'aws-creds'
                ]]) {

                    sh 'terraform init'
                    sh 'terraform validate'
                    sh 'terraform plan'
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
