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

        stage('Sanity check') {
            steps {
                input "Does the test environment look ok?"
            }
        }

        stage('Build') {
            steps {
                sh 'docker build . --file Dockerfile --tag jenkinspipeline:$(date +%s)'
            }
        }
        
        stage('Deploy') {
            steps {
                sh 'curl "https://trabalho-jenkins.vercel.app"'
            }
        }
    }
}