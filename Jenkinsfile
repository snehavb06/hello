pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'snehavb06/hello-world'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/snehavb06/hello.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'snehavb06', url: '']) {
                    sh 'docker push $DOCKER_IMAGE'
                }
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f k8s-deployment.yaml'
            }
        }
    }
}
