pipeline {
  agent none
  stages {
    stage('Test') {
        agent { label 'test-cluster'}
        steps {
            sh 'terraform init'
            sh 'terraform plan'
            sh 'terraform apply --auto-approve=true'
        }
    }
  }
}