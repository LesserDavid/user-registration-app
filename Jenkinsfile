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
        stage ('Docker image build') {
            steps {
                sh 'docker build -t dhodowany/user-registration-app .'
            }
        }
        stage ('Docker container run') {
            steps {
                sh 'docker run -p 80:80 dhodowany/user-registration-app'
            }
        }
    }
}