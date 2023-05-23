pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'curl -L https://foundry.paradigm.xyz | bash'
        sh 'foundryup'
        echo 'Built'
      }
    }

    stage('Test') {
      steps {
        echo 'Testing..'
        sh 'ls'
        sh 'forge test -vv'
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploying....'
      }
    }

  }
}