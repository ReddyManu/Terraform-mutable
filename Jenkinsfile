pipeline {
  agent { label 'WORKSTATION' }

  environment {
//     ACTION = "apply"
//     ENV = "dev"
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
        sh 'echo ${SSH} >/tmp/out'

        sh '''
        cd vpc
        make ${ENV}-${ACTION}
        '''
      }
    }

    stage('DB') {
      steps {
        sh '''
        cd db
        make ${ENV}-${ACTION}
        '''
      }
    }

    stage('ALB') {
      steps {
        sh '''
        cd alb
        make ${ENV}-${ACTION}
        '''
      }
    }

  }
}