pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
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