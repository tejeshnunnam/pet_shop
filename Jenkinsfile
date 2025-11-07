pipeline {
    agent any

    stages {
        stage('Get the Code from git') {
            steps {
               git branch: 'main', url: 'https://github.com/tejeshnunnam/pet_shop.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Deploy to Tomcat') {
            steps {
                deploy adapters: [tomcat9(alternativeDeploymentContext: '', credentialsId: 'tomcatcredentials', path: '', url: 'http://3.237.173.201:8090')], contextPath: 'Tejesh', war: '**/*.war'  
            }
        }
    }
}
   
