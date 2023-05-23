pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'curl -L https://foundry.paradigm.xyz | bash'
        sh '. /var/jenkins_home/.bashrc'
        sh 'ls'
        sh 'cd /var/jenkins_home/workspace/contract_pipeline-implementation@tmp/'
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