
node {
     stage('Clone') {
         checkout scm
     }
     stage('Build') {
         app = docker.build("skarltjr/jenkinsci")
     }
     stage('Push') {
         docker.withRegistry('https://registry.hub.docker.com', 'docker_hub') {
             app.push("${env.BUILD_NUMBER}")
             app.push("latest")
         }
     }
 }
