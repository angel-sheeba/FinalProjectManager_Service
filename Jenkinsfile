pipeline {
    agent any
    tools { 
        maven 'maven3.3.9'
        jdk 'jdk8' 
    }
    stages {
         stage ('Env Variable Initialize') {
            steps {
                bat '''
                    echo "PATH = %PATH%"
                    echo "M2_HOME = %M2_HOME%"
                '''
            }
        }
        stage ('build') {
            steps {
                    bat 'mvn install'
            }
        }
        stage ('Docker-Build') {
            steps {
                    bat 'mvn package docker:build'
            }
        }
    }
}
