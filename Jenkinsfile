pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        echo 'Checkout source'
        checkout scm
      }
    }

    stage('Build Docker Image') {
      steps {
        echo 'Build image'
        sh 'docker build -t nginx-test-app .'
      }
    }

    stage('Run Container') {
      steps {
        echo 'Run container'
        sh '''
                  docker rm -f nginx-test || true
                  docker run -d                     --name nginx-test                     -p 900:80                     nginx-test-app
                '''
      }
    }

  }
}