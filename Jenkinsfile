pipeline {
    agent none
    stages {
        stage('Compile, Test and Build jar') {
            agent { docker { image 'maven:3.6.3-openjdk-11' } }
            steps {
                sh 'pwd'
                sh 'mvn clean install'
            }
        }
        stage('Create docker image') {
            agent any
            steps {
                sh 'docker build -f Dockerfile.production.dockerfile -t docker-test .'
                sh 'docker images'
            }
        }
    }
}
