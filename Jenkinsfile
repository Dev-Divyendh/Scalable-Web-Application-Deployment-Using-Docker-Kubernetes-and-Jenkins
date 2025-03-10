pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'tejaswi0502/ass2-dockerimage-dt'
        DOCKER_TAG = 'latest'
        DOCKER_HUB_CREDENTIALS = 'docker-hub-credentials'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Dev-Divyendh/SWE645_Assignment2_DT'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE:$DOCKER_TAG .'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: "$DOCKER_HUB_CREDENTIALS", url: ""]) {
                    sh 'docker push $DOCKER_IMAGE:$DOCKER_TAG'
                }
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh '''
                kubectl set image deployment/survey-app survey-container=tejaswi0502/ass2-dockerimage-dt:latest --namespace=default
                '''
            }
        }
    }
}
