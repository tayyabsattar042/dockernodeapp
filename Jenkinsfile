pipeline {
    agent any
    environment {
        DOCKER_IMAGE = 'tayyab042/docker-nodejs-repo'
    }
    stages {
        stage('Clone') {
            steps {
                git url: 'https://github.com/tayyabsattar042/dockernodeapp.git'
            }
        }
        
        stage('Deploy') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'dockernodeappjenkins', passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USERNAME')]) {
                        sh '''
                           docker stop trusting_sutherland || true
                           docker rm trusting_sutherland|| true
                           docker run -d -p 3011:3000 --name trusting_sutherland ${DOCKER_IMAGE}:latest
                        '''
                    }
                }
            }
        }
    }
}

