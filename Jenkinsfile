@Library('share-library') _
pipeline{
    agent {
        label 'alma_slave'
    }
    stages {
       /* stage('Build') { 
            steps {
                sh 'mvn -B -DskipTests clean package' 
            }
        }*/

        stage('Test') {
            steps {
                sh 'mvn test'
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }
        
   }
}
