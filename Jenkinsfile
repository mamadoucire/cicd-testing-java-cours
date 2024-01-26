@Library('share-library') _
pipeline{
    agent {
        label 'alma_slave'
    }
    stages {
        stage('Build with test') {
           steps {
               script {
                  sh 'echo bonjour'
                  sh "mvn clean install"
               }
           }
        }

        /*stage('Sonarqube Analysis') {
            withSonarQubeEnv('SonarQubeLocalServer') {
                sh " mvn sonar:sonar -Dintegration-tests.skip=true -Dmaven.test.failure.ignore=true"
            }
            timeout(time: 1, unit: 'MINUTES') {
                def qg = waitForQualityGate() // Reuse taskId previously collected by withSonarQubeEnv
                if (qg.status != 'OK') {
                    error "Pipeline aborted due to quality gate failure: ${qg.status}"
                }
            }
        }*/
   }
}
