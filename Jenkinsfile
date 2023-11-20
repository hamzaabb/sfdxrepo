pipeline {
    agent {
        docker {
            // Use the Salesforce CLI Docker image
            image 'escowar/sfdximage'
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
                    sh 'sf '
                    sh 'sfdx'
                    // Add more Salesforce CLI commands as needed
                }
            }
        }
    }
}
