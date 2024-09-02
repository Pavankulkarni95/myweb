pipeline{
    agent any
    stages{
        stage("Maven Build"){
            steps{
               sh "mvn clean package"
            }
        }
        stage("SonarQube Analysis"){
            steps{
               echo "Sonar Scanning...."
            }
        }
      stage("Tomcat Deploy"){
            steps{
               echo "Tomcat deployment...."
            }
        }
        stage("Nexus"){
            steps{
               echo "uploading artifacts to nexus...."
            }
        }
    }
}
