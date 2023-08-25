/* Requires the Docker Pipeline plugin */
pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                sh 'pytest -v'
            }
        }
        stage('Coverage') {
            steps {
                sh 'pytest --cov'
            }
        }
         stage('Build') {
            steps {
                sh 'docker build . --file Dockerfile --tag jenkinspipeline:$(date +%s)'
            }
        }
    }
}