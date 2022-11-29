# Deploy the Microsoft Cloud Adoption Framework Enterprise-Scale Module

This repo is a companion repo to the [Deploy the Microsoft Cloud Adoption Framework Enterprise-Scale Module](https://developer.hashicorp.com/terraform/tutorials/azure/microsoft-caf-enterprise-scale) tutorial. 

# Requirements

- Terraform: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
- Azure CLI: https://learn.microsoft.com/en-us/cli/azure/install-azure-cli
- Azure Pass Subscription: https://www.microsoftazurepass.com/Home/HowTo?Length=5
- Visual Studio Code: https://code.visualstudio.com/

# Deployment

- Install all the requirements
- Clone folder to local filesystem
- Open it in visual studio code
- Modify parameters as required
- in a terminal windows inside the main folder of the source code run the following commands:
- az login
- az set accouunt --subscription="<Your subscription Id>"
- terraform init
- terraform validate
- terraform plan -var-file="terraform.tfvars"
- terraform apply -var-file="terraform.tfvars"
