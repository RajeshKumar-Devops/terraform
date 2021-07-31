pipeline {
  agent {
    node {
        label 'master'
    }
}

  stages {
    stage('Pull changes') {
      steps {
        sh "cd /home/ubuntu/terraform && git pull origin main"
      }
    }
    stage('Terraform Init') {
      steps {
        sh "cd /home/ubuntu/terraform && terraform init -input=false"
      }
    }
    stage('Terraform Plan') {
      steps {
        sh "cd /home/ubuntu/terraform && terraform plan -out=tfplan -input=false"
      }
    }
    stage('Terraform Apply') {
      steps {
        input 'Apply Plan'
        sh "cd /home/ubuntu/terraform && terraform apply -input=false tfplan && sudo rm -rf tfplan"
      }
    }
  }
}
