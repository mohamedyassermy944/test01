pipeline {
  agent any
  stages {
    stage('Bulid') {
      steps {
        echo 'Bulid Complated'
      }
    }

    stage('Stage') {
      parallel {
        stage('Stage') {
          steps {
            echo 'Start Testing'
          }
        }

        stage('Test1') {
          steps {
            echo 'Test1'
          }
        }

      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploy Completed'
      }
    }

  }
}