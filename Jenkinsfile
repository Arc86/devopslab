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
                snDevOpsChange changeCreationTimeOut: 3600, changeRequestDetails: '{ "attributes": { "short_description": "Test description", "priority": "1", "start_date": "2021-02-05 08:00:00", "end_date": "2022-04-05 08:00:00", "justification": "test justification", "description": "test description", "cab_required": true, "comments": "This update for work notes is from jenkins file", "work_notes": "test work notes", "assignment_group": "a715cd759f2002002920bde8132e7018" }, "setCloseCode": false, "autoCloseChange": true }', changeStepTimeOut: 18000, configurationName: 'snDevOpsChange', pollingInterval: 60
            }
        }
    }
}
