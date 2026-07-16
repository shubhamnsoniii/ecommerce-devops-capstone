pipeline {
    agent any

    environment {
        PROJECT_DIR = 'D:\\Capstone'
    }

    stages {

        stage('Checkout Source') {
            steps {
                echo 'Checking out source code...'
            }
        }

        stage('Verify Docker') {
            steps {
                bat 'docker --version'
                bat 'docker compose version'
            }
        }

        stage('Build Images') {
            steps {
                dir("${env.PROJECT_DIR}") {
                    bat 'docker compose build'
                }
            }
        }

        stage('Deploy') {
            steps {
                dir("${env.PROJECT_DIR}") {
                    bat 'docker compose down'
                    bat 'docker compose up -d'
                }
            }
        }

        stage('Verify Deployment') {
            steps {
                bat 'docker ps'
            }
        }

    }

    post {

        success {
            echo 'Deployment completed successfully.'
        }

        failure {
            echo 'Deployment failed.'
        }

        always {
            echo 'Pipeline execution finished.'
        }

    }
}