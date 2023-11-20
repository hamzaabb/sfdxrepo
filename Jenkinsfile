pipeline {
    agent {
        docker {
            // Use the Salesforce CLI Docker image
            image 'salesforce/cli:2.18.6-slim'
        }
    }

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
