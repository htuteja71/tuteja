pipeline{
    agent any
	environment {
		ARM_CLIENT_ID = "23101c39-455f-4b5f-9b33-ab76d68b4f7c"
		ARM_CLIENT_SECRET = "PFt7Q~qs~YA3iZ11aHNugEmUB4fbhbPZ2v9hk"
		ARM_TENANT_ID = "fc4cf7ec-2b33-4ccb-bf4f-dfdf72a2e9c6"
		AZURE_CLIENT_ID = "23101c39-455f-4b5f-9b33-ab76d68b4f7c"
		AZURE_CLIENT_SECRET = "PFt7Q~qs~YA3iZ11aHNugEmUB4fbhbPZ2v9hk"
		AZURE_TENANT_ID = "fc4cf7ec-2b33-4ccb-bf4f-dfdf72a2e9c6"

	}
    stages{
        stage('Terraform version info'){
            steps{
                sh '/usr/bin/terraform version'
            }
        }
        stage('Git'){
            steps{
                git 'https://github.com/htuteja71/tuteja.git'
            }
        }
        stage('terraform init'){
            steps{
                echo "++++++  Terraform Initilising "
                sh '/usr/bin/terraform init'
            }
        }
        stage('terraform plan'){
            steps{
                echo "++++++  Terraform Plan -out "
                sh '/usr/bin/terraform plan'
            }
        }
        stage('terraform apply'){
            steps{
                echo "++++++  Terraform apply "
                sh '/usr/bin/terraform apply --auto-approve'
            }
        }		
    }
}
