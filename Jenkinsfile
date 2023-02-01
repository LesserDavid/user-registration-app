pipeline {
    agent any
    tools {
        git 'Default'
        gradle 'Gradle 7.6'
    }
    stages {
        stage('GitHub repository pull') {
            steps {
                git branch: 'main', url: 'https://github.com/LesserDavid/user-registration-app'
            }
        }
        stage ('Gradle build') {
            steps {
                sh 'gradle build --scan -s'
            }
        }
        stage ('Docker build') {
            steps {
                script {
                    sh 'docker build -t user-registration-app:latest .'
                    sh 'docker run -p 80:80 --name web-app-server user-registration-app:latest'
                }

            }
        }
    }
}