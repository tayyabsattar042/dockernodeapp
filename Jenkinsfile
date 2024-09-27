// pipeline {
//     agent any
//     environment {

//         withCredentials([usernamePassword (credentialsId: 'docker_cred',passwordVariable: 'DOCKER_PASSWORD' ,usernameVariable: 'DOCKER_USERNAME')]) 
//         DOCKER_IMAGE = 'tayyab042/docker-nodejs-repo'
//     }
//     stages {
//         stage('Clone') {
//             steps { git url: 'https://github.com/tayyabsattar042/dockernodeapp.git'}
//         }

//         stage('Deploy') {
//             steps {
//                 script {
//                     sh 
//                     ' docker stop tayyab042/docker-nodejs-repo || true '
//                     ' docker rm tayyab042/docker-nodejs-repo || true '
//                     ' docker run -p 3011:3000 --name tayyab042/docker-nodejs-repo ${tayyab042/docker-nodejs-repo}:latest '
//                 }
//             }
//         }
//     }
// }


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
                    withCredentials([usernamePassword(credentialsId: 'docker_cred', passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USERNAME')]) {
                        sh '''
                        docker stop tayyab042/docker-nodejs-repo || true
                        docker rm tayyab042/docker-nodejs-repo || true
                        docker run -p 3011:3000 --name tayyab042/docker-nodejs-repo ${DOCKER_IMAGE}:latest
                        '''
                    }
                }
            }
        }
    }
}

