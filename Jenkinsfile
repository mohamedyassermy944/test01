pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Build Complete'
      }
    }

    stage('test') {
      parallel {
        stage('test') {
          steps {
            echo 'test'
          }
        }

        stage('firsttime') {
          steps {
            echo 'test 1'
          }
        }

      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploy'
      }
    }

  }
}