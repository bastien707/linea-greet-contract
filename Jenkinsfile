pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'curl -L https://foundry.paradigm.xyz | bash'
        sh '. /var/jenkins_home/.bashrc && foundryup'
        sh '. /var/jenkins_home/.bashrc && forge build'
        sh 'forge build'
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