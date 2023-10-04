 pipeline {
    agent {
        label 'WS'
    }
   
     parameters {
        choice(name: 'ENV', choices: ['dev', 'prod'], description: 'Select the Environment')
    }
  
  
 stages {
                 
        stage('terraform init'){
             steps {
                sh "terrafile -f env-${ENV}/Terrafile"
                sh "terraform init -backend-config=env-${ENV}/${ENV}-backend.tfvars"
             }
        }
        stage('terraform plan'){
             steps {
                sh "terraform plan -var-file=env-${ENV}/${ENV}.tfvars"
             }
        }
        stage('terraform apply'){
             steps {
                sh "tterraform apply -auto-approve -var-file=env-${ENV}/${ENV}.tfvars"
             }
        }
    }
 }