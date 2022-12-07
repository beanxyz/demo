# Terraform snippet for deploying ASG in private subnet behind ALB

Below is the architecture to be implemented:


The files included are:

    a)  main.tf: main.tf file contains the terraform script to create necessary resources.
    b)  variables.tf: for declaring variables being used in the main script
    c)  terraform.tfvars: for defining/overriding the varibles
    d)  out.tf:  output the alb dns name
    e)  init_webserver.sh: User data script for launch config which installs & starts nginx server and creates mount points
    f)  health_check.sh: a simple bash script to test URL status code


# Prerequisites:

1. AWS account
2. IAM role with necessary permissions
3. Terraform & AWS CLI configured on machine from which the scripts are to be run

# Implement the terraform code:
terraform init
terraform plan
terraform apply
