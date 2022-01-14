pipeline {
  agent { label 'WORKSTATION' }

  environment {
    ACTION = "apply"
    ENV = "dev"
    SSH = credentials('centos_ssh')
  }

  options {
    ansiColor('xterm')
    disableConcurrentBuilds()
  }

  parameters {
    choice(name: 'ENV', choices: ['dev', 'prod'], description: 'Choose Environment')
    choice(name: 'ACTION', defaultValue: 'apply', description: 'Give an action to do on terraform')
  }

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