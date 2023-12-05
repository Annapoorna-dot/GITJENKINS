pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                script {
                    checkout scm
                }
            }
        }

        stage('Build') {
            steps {
                script {
                    sh 'python hello_world.py'
                }
            }
        }
    }

    post {
        success {
            emailext subject: 'Build Successful',
                      body: 'The build was successful. Check the console output for details.',
                      recipientProviders: [[$class: 'CulpritsRecipientProvider']]
        }
        failure {
            emailext subject: 'Build Failed',
                      body: 'The build failed. Check the console output for details.',
                      recipientProviders: [[$class: 'CulpritsRecipientProvider']]
        }
    }
}
