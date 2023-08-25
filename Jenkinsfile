/* Requires the Docker Pipeline plugin */
pipeline {
    agent any
    stages {
        stage('Test and Coverage') {
            steps {
                sh 'pytest -v --cov'
            }
        }
         stage('Build') {
            steps {
                sh 'docker build . --file Dockerfile --tag jenkinspipeline:$(date +%s)'
            }
        }
    }
}