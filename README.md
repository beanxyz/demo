# Terraform Demo for deploying ASG nginx webserver in the private subnets behind ALB

Below is the architecture to be implemented:

![image](https://github.com/beanxyz/demo/blob/master/topology.PNG)

The files included are:

    a)  main.tf: main.tf file contains the terraform script to create necessary resources.
    b)  variables.tf: for declaring variables being used in the main script
    c)  terraform.tfvars: for defining/overriding the varibles
    d)  out.tf:  output the alb dns name
    e)  init_webserver.sh: User data script for launch config which installs & starts nginx server 
    f)  health_check.sh: a simple bash script to test URL status code


# Prerequisites:

1. AWS account
2. IAM role with necessary permissions
3. Terraform & AWS CLI configured on machine from which the scripts are to be run

# Implement the terraform code:
terraform init \
terraform plan \
terraform apply

It will deploy a Nginx server in an ASG behind an application load balancer. 
At the end of the terraform apply, it will print out the DNS name of the application load balancer.

We can access the page via http://alb-dns-name

We can use curl to test the health status of the URL. If the status code is 200, it means it's up and running.
There is a simple script to do the job.
e.g 

./health_check.sh Demo-ALG-275938888.ap-southeast-2.elb.amazonaws.com
