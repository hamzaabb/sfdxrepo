node {
    def app

    stage('Clone repository') {
      

        checkout scm
    }

    stage('Build image') {
  
       app = docker.build("escowar/sfdximage")
    }

    // stage('Test image') {
  

    //     app.inside {
    //         sh 'sfdx force:auth:device:login -a ayoub7nafil10-rpsq@force.com -r https://test.salesforce.com'
    //     }
    // }

    stage('Test image') {
  

            sh 'sfdx --help'
        
    }

    stage('Push image') {
        
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
            app.push("${env.BUILD_NUMBER}")
        }
    }
    
    stage('Trigger ManifestUpdate') {
                echo "triggering updatemanifestjob"
                build job: 'updatemanifest', parameters: [string(name: 'DOCKERTAG', value: env.BUILD_NUMBER)]
        }
}