pipeline {
    agent any

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
                    // Use Salesforce CLI commands
                    sh 'sf '
                    sh 'sfdx'
                    // Add more Salesforce CLI commands as needed
                }
            }
        }
    }
}
