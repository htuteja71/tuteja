pipeline{
    agent any
	environment {
		ARM_CLIENT_ID = "af216b78-4588-4d50-bb22-c56e1b1accd4"
		ARM_CLIENT_SECRET = "HIr7Q~p5Q~DhX7ONEldIrDwBbOuMrmBGfHL6-"
		ARM_TENANT_ID = "0a7db384-b668-458a-ae2e-c532ef6042b3"
		AZURE_CLIENT_ID = "af216b78-4588-4d50-bb22-c56e1b1accd4"
		AZURE_CLIENT_SECRET = "HIr7Q~p5Q~DhX7ONEldIrDwBbOuMrmBGfHL6-"
		AZURE_TENANT_ID = "0a7db384-b668-458a-ae2e-c532ef6042b3"
		ARM_SUBSCRIPTION_ID = "115633b2-033b-457a-bf9a-b64fb459dd7d"
	}
    stages{
        stage('Terraform version info'){
            steps{
                sh '/usr/bin/terraform version'
            }
        }
        stage('Git'){
            steps{
                git 'https://github.com/bhaskarmulinty/devops/'
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
