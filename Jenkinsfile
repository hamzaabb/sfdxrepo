pipeline {
   

    stages {
        stage('Checkout') {
            steps {
                script {
                    // Checkout your Salesforce project from Git
                    checkout scm
                }
            }
        }

        stage('Build and Deploy') {
            environment {
                  HOME="."
                }
            steps {
                script {
                    // Use Salesforce CLI commands inside the Docker container
                    sh 'echo version'
                    // Add more Salesforce CLI commands as needed
                }
            }
        }
    }
}
