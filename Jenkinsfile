pipeline {
    agent any

    environment {
        TF_IN_AUTOMATION = "true"

        TF_VAR_aws_region         = credentials('tf-aws-region')

        TF_VAR_project_name       = credentials('tf-project-name')

         TF_VAR_vpc_cidr           = credentials('tf-vpc-cidr')

        TF_VAR_public_subnet_cidr = credentials('tf-public-subnet')

        TF_VAR_availability_zone  = credentials('tf-az')

        TF_VAR_instance_type      = credentials('tf-instance-type')

        TF_VAR_ami_id             = credentials('tf-ami-id')

        TF_VAR_key_name           = credentials('tf-key-name')
    }

    options {
        timestamps()
        disableConcurrentBuilds()
        buildDiscarder(logRotator(numToKeepStr: '20'))
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Format Check') {
            steps {
                sh 'terraform fmt -check -recursive'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Security Scan') {
            steps {
                sh 'tfsec . || true'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Archive Terraform Plan') {
            steps {
                archiveArtifacts artifacts: 'tfplan', fingerprint: true
            }
        }

        stage('Manual Approval') {
            steps {
                timeout(time: 30, unit: 'MINUTES') {
                    input message: 'Approve Terraform Apply?', ok: 'Deploy'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }

    post {

        success {
            echo 'Terraform deployment completed successfully.'
        }

        failure {
            echo 'Terraform pipeline failed.'
        }

        always {
            cleanWs()
        }
    }
}