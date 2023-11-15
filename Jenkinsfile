#!groovy

import groovy.json.JsonSlurperClassic

node {

    def SF_CONSUMER_KEY=env.SF_CONSUMER_KEY
    def SF_USERNAME=env.SF_USERNAME
    def SERVER_KEY_CREDENTALS_ID=env.SERVER_KEY_CREDENTALS_ID
    def TEST_LEVEL='RunLocalTests'
    def PACKAGE_NAME='0Ho1U000000CaUzSAK'
    def PACKAGE_VERSION
    def SF_INSTANCE_URL = env.SF_INSTANCE_URL ?: "https://login.salesforce.com"




    println 'KEYS ARE' 
    println SF_INSTANCE_URL
    println SF_USERNAME
    println SF_CONSUMER_KEY
    println SERVER_KEY_CREDENTALS_ID

    // -------------------------------------------------------------------------
    // Check out code from source control.
    // -------------------------------------------------------------------------

    stage('checkout source') {
        checkout scm
    }

    // -------------------------------------------------------------------------
    // Run the Docker container with the Salesforce DX image.
    // -------------------------------------------------------------------------

    // stage('Run Docker Container') {
    //     // Modify the Docker image name and tag as needed
    //     def dockerImage = 'escowar/sfdximage'
    //     docker.image(dockerImage).run()
    // }


    // -------------------------------------------------------------------------
    // Run all the enclosed stages with access to the Salesforce
    // JWT key credentials.
    // -------------------------------------------------------------------------
    
 
        
    withCredentials([file(credentialsId: SERVER_KEY_CREDENTALS_ID, variable: 'server_key_file')]) {

            // -------------------------------------------------------------------------
            // Authorize the Dev Hub org with JWT key and give it an alias.
            // -------------------------------------------------------------------------

            stage('Run Docker Container') {
                def customImage = docker.build("escowar/sfdximage")
                customImage.inside("-u root") {
                stage ("SFDX Authentication") {
                    sh "sf org login jwt --jwt-key-file ${server_key_file} --set-default-dev-hub --alias HubOrg --instance-url ${SF_INSTANCE_URL} --client-id ${SF_CONSUMER_KEY} --username ${SF_USERNAME}"
               }
                
            }}

            // stage('Authorize DevHub') {
            //     rc = command "sf org login jwt --jwt-key-file ${server_key_file} --set-default-dev-hub --alias HubOrg --instance-url ${SF_INSTANCE_URL} --client-id ${SF_CONSUMER_KEY} --username ${SF_USERNAME}"
            //     if (rc != 0) {
            //         error 'Salesforce dev hub org authorization failed.'
            //     }
            // }

            




    }
    
}

def command(script) {
    if (isUnix()) {
        return sh(returnStatus: true, script: script);
    } else {
        return bat(returnStatus: true, script: script);
    }
}