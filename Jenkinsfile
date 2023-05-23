pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh '''docker pull ghcr.io/foundry-rs/foundry:latest
'''
        sh 'docker tag ghcr.io/foundry-rs/foundry:latest foundry:latest'
        sh 'export RPC_URL="https://eth.llamarpc.com"'
        sh 'docker run foundry "cast block --rpc-url $RPC_URL latest"'
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