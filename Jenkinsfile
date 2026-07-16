pipeline {
    agent any

    stages {

        stage('Checkout Verification') {
            steps {
                echo 'Source code successfully checked out.'
                bat 'dir'
            }
        }

        stage('Docker Version') {
            steps {
                bat 'docker --version'
                bat 'docker compose version'
            }
        }

        stage('Build Docker Images') {
            steps {
                bat 'docker compose build'
            }
        }
    }
}