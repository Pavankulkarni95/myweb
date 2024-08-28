pipeline{
    agent any
    stages{
        stage("Maven Build"){
            steps{
               sh "mvn package"
            }
        }
        stage("SonarQube Analysis"){
            steps{
               withSonarQubeEnv('sonar7') {
                    sh "mvn sonar:sonar"
               }
            }
        }
      stage("Tomcat Deploy"){
            steps{
                sshagent(['Tomcat']) {
                    // copy war file to tomcat server
                    sh """
                        scp -o StrictHostKeyChecking=no target/myweb*.war ec2-user@172.31.8.104:/opt/tomcat9/webapps/myweb.war
                        ssh ec2-user@172.31.8.104 /opt/tomcat9/bin/shutdown.sh
                        ssh ec2-user@172.31.8.104 /opt/tomcat9/bin/startup.sh
                    """
                }
            }
        }
        stage("Nexus"){
            steps{
               echo "uploading artifacts to nexus...."
            }
        }
    }
}
