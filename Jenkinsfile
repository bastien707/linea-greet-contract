pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh '''docker pull ghcr.io/foundry-rs/foundry:latest
'''
        sh 'docker tag ghcr.io/foundry-rs/foundry:latest foundry:latest'
        sh 'export RPC_URL="https://eth.llamarpc.com"'
        sh 'docker run foundry "cast block --rpc-url "https://eth.llamarpc.com" latest"'
        echo 'Built'
      }
    }

    stage('Test') {
      steps {
        echo 'Testing..'
        sh 'echo $PWD && echo ls'
        sh 'docker run foundry "forge test -vvvv"'
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploying....'
      }
    }

  }
}