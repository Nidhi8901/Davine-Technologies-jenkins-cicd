pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Checking out source code...'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Building application...'
                sh 'ls -la'
                sh 'echo Build completed successfully'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh './test.sh'
            }
        }

        stage('Validation') {
            steps {
                echo 'Running validation...'
                sh 'test -f app/index.html'
                echo 'Validation passed: app/index.html exists.'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }

        failure {
            echo 'Pipeline failed. Check the console logs.'
        }
    }
}
