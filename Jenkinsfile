pipeline {
  agent any
  stages {
    stage('Build') {
      agent any
      steps {
        sh 'curl -L https://foundry.paradigm.xyz | bash'
        sh '. /var/jenkins_home/.bashrc && foundryup'
        sh '. /var/jenkins_home/.bashrc && forge build'
        echo 'Built'
      }
    }

    stage('Test') {
      steps {
        echo 'Testing..'
        sh 'ls'
        sh '. /var/jenkins_home/.bashrc && forge test -vv && forge test -vvvv'
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploying....'
      }
    }

  }
}