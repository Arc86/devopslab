pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t demo-app .'
            }
        }
        stage('Test') {
            steps {
                sh 'docker run demo-app'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying... (This is a placeholder for actual deployment steps)'
            }
        }
    }
}
