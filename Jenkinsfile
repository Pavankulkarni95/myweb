pipeline{
    agent any
    stages{
        stage("Welcome"){
            steps{
                sh 'echo Welcome to my Company'
            }
        }
        stage("Maven Build"){
            steps{
                sh 'mvn clean package'
            }
        }
    }
}
