pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Build'
                git 'https://github.com/msarunpandian006/jenkin-demo'
                bat 'mvn clean install -DskipTests'
            }
        }
        stage('Containerize') {
            steps {
                echo 'Building Success'
                echo 'Containerizing'
                bat 'docker build -t msarunpandian/jenkin-demo-img .'
            }
        }
        stage('Publish') {
            steps {
                echo 'Containerizing Success'
                echo 'Pushing to hub.docker.com'
                bat 'docker push msarunpandian/jenkin-demo-img'
            }
        }
    }
}