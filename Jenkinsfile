pipeline {
  agent { label 'WORKSTATION' }

  stages {

    stage('VPC') {
      steps {
         sh '''
         cd vpc
         make dev-apply
         '''
      }
    }

    stage('DB') {
      steps {
        sh '''
        cd db
        make dev-apply
        '''
      }
    }

    stage('ALB') {
      steps {
        sh '''
        cd alb
        make dev-apply
        '''
      }
    }

  }
}