pipeline {
    agent { docker { image 'maven:3.6.3-openjdk-11' } }
    stages {
        stage('all') {
            steps {
                sh 'mvn clean install'
            }
        }
    }
}
