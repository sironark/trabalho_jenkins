/* Requires the Docker Pipeline plugin */
pipeline {
    agent { docker { image 'node:18.17.1-alpine3.18' } }
    stages {
        stage('Test and Coverage') {
            steps {
                sh 'pytest -v --cov'
            }
        }
    }
}