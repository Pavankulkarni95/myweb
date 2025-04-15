pipeline{
    agent any
    stages{
        stage("Welcome"){
            steps{
                sh 'echo Welcome to my company'
            }
        }
        stage("Maven Build"){
            steps{
                sh 'mvn clean package'
            }
        }
    }
}
