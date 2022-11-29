# Deploy the Microsoft Cloud Adoption Framework Enterprise-Scale Module

This repo is a companion repo to the [Deploy the Microsoft Cloud Adoption Framework Enterprise-Scale Module](https://developer.hashicorp.com/terraform/tutorials/azure/microsoft-caf-enterprise-scale) tutorial. 

## Requirements

- Terraform: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
- Azure CLI: https://learn.microsoft.com/en-us/cli/azure/install-azure-cli
- Azure Pass Subscription: https://www.microsoftazurepass.com/Home/HowTo?Length=5
- Visual Studio Code: https://code.visualstudio.com/

## Deployment

- Install all the requirements
- Clone folder to local filesystem
- Open it in visual studio code
- Modify parameters as required
- in a terminal windows inside the main folder of the source code  you can  execute the following commands:

## Login to your Azure Account

```az login```
- copy the ID of your subscription either from azure portal or from az login result

## Set the subscription to be used

```az set account --subscription="<Your subscription Id>"```
 
## Initialize terraform
  
```terraform init```

## Validate your terraform code
  
```terraform validate```

## Preview your terraform changes
  
 ```terraform plan -var-file="terraform.tfvars"```
  
## Apply your terraform changes
  
```terraform apply -var-file="terraform.tfvars"```

## Destroy when finished
  
 ```terraform destroy```
