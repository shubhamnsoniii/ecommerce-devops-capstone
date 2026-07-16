pipeline {
    agent any

    environment {
        PROJECT_DIR = 'D:\\Capstone'
    }

    stages {

        stage('Checkout Source') {
            steps {
                echo '========================================='
                echo 'Checking out latest source code...'
                echo '========================================='
                checkout scm
            }
        }

        stage('Verify Docker') {
            steps {
                echo 'Verifying Docker installation...'

                bat 'docker --version'
                bat 'docker compose version'
            }
        }

        stage('Build Docker Images') {
            steps {
                dir("${env.PROJECT_DIR}") {

                    echo 'Building Docker images...'

                    bat 'docker compose build'
                }
            }
        }

        stage('Stop Existing Containers') {
            steps {
                dir("${env.PROJECT_DIR}") {

                    echo 'Stopping existing containers...'

                    bat 'docker compose down --remove-orphans'
                }
            }
        }

        stage('Deploy Application') {
            steps {
                dir("${env.PROJECT_DIR}") {

                    echo 'Starting application...'

                    bat 'docker compose up -d'
                }
            }
        }

        stage('Verify Containers') {
            steps {

                echo 'Checking running containers...'

                bat 'docker ps'
            }
        }

        stage('Wait for Application') {
            steps {

                echo 'Waiting 30 seconds for services to initialize...'

                sleep time: 30, unit: 'SECONDS'
            }
        }

        stage('Health Check') {
            steps {
                script {

                    def retries = 10

                    for (int i = 1; i <= retries; i++) {

                        def status = bat(
                            script: '@echo off\r\ncurl --silent --fail http://localhost:5000/products >nul',
                            returnStatus: true
                        )

                        if (status == 0) {
                            echo "✅ Product Service is healthy."
                            return
                        }

                         echo "Attempt ${i}/${retries} failed. Waiting 5 seconds..."

                        sleep time: 5, unit: 'SECONDS'
                    }

                    error("❌ Product Service failed health check.")
                }
            }
        }

        stage('Cleanup') {
            steps {

                echo 'Cleaning unused Docker images...'

                bat 'docker image prune -f'
            }
        }
    }

    post {

        success {

            echo '========================================='
            echo '✅ Deployment completed successfully.'
            echo '========================================='
        }

        failure {

            echo '========================================='
            echo '❌ Deployment failed.'
            echo '========================================='
        }

        always {

            echo '========================================='
            echo 'Pipeline execution finished.'
            echo '========================================='
        }
    }
}