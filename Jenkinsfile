pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'curl -L https://foundry.paradigm.xyz | bash'
        sh '. /var/jenkins_home/.bashrc'
        sh 'pwd'
        sh 'ls'
        sh '. /var/jenkins_home/.nvm/nvm.sh && foundryup'
        sh 'pwd'
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