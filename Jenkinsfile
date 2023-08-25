/* Requires the Docker Pipeline plugin */
pipeline {
    agent any
    stages {
        stage('Test and Coverage') {
            steps {
                sh 'pytest -v --cov'
            }
        }
    }
}