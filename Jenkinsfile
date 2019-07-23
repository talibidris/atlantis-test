pipeline {
  agent none
  stages {
    stage('Test') {
        agent { label 'test-cluster'}
        steps {
            sh 'echo hello from fargate'
        }
    }
  }
}