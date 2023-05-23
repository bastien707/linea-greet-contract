pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh '''docker pull ghcr.io/foundry-rs/foundry:latest
'''
        sh 'forge build'
        echo 'Built'
      }
    }

    stage('Test') {
      steps {
        echo 'Testing..'
        sh 'forge test -vvvv'
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploying....'
      }
    }

  }
}