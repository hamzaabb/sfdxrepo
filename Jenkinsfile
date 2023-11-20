pipeline {
    agent {
        docker {
            // Use the Salesforce CLI Docker image
            image 'salesforce/cli:2.18.6-slim'
        }
    }

    //stages {
        stage('Checkout') {
            steps {
                script {
                    // Checkout your Salesforce project from Git
                    checkout scm
                }
            }
        }

        withEnv(["HOME=${env.WORKSPACE}"]) {
        stage('Build and Deploy') {
            // environment {
            //       HOME="${env.WORKSPACE}"
            //     }
            steps {
                script {
                    // Use Salesforce CLI commands inside the Docker container
                    sh 'sf version'
                    // Add more Salesforce CLI commands as needed
                }
            }
        }}
    //}
}
