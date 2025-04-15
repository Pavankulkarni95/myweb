pipeline{
    agent any
    stages{
        stage("Welcome"){
            steps{
                echo Welcome to my company
            }
        }
        stage("Maven Build"){
            steps{
                sh 'mvn clean package'
            }
        }
    }
}
