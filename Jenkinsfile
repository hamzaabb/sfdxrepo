pipeline {
    agent {
        docker {
            // Use the Salesforce CLI Docker image
            image 'salesforce/cli:2.18.6-slim'
            // Use an absolute path for the working directory
            args "-v ${WORKSPACE}:/workspace"

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
            steps {
                script {
                    // Use Salesforce CLI commands inside the Docker container
                    sh 'sf version'
                    // Add more Salesforce CLI commands as needed
                }
            }
        }
    }
}
