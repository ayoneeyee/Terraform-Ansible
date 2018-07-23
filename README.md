# Instructions;

#NOTE!!! YOU MIGHT NEED TO REMOVE THE FOLLOWING FILES AS IT MIGHT DUPLICATE SOME RESOURCES LIKE ROUTE TABLE WHICH WILL COME BACK AS ERROR
# If you are having errors with default route table make sure to remove;  'terraform.tfstate' ,  'terraform.tfstate.backup'

# clone the git 'https://github.com/temitos2/Terraform-Ansible'

# Make sure to delete the .terraform folder, so that a new one is created when you run terraform init or plan

# cd into the 'Terraform-Ansible' you will find the following files and directories

database  img  main.tf  provider.tf  README.md  SCRIPTS  terraform.tfstate  terraform.tfstate.backup  terraform.tfvars  variables.tf  vpc  webserver

# 1- under terraform.tfvars file, you need to modify access and secret key 
aws_access_key = "xxxxxxxxxxxxxxxxxxxxxx"

aws_secret_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"


# 2- create key pair called codedeploy on aws console and download the codedeploy.pem key
# 3- copy and paste the codedeploy.pem  private keypair into the codedeply.pem file
# 4- cd into webserver directory and run command; 'chmod 400 codedeploy.pem' to give the codedeploy.pem more permission

# 5- under variables.tf u need to modiy your region and image id to fit your region
variable "aws_region" {
  description = "EC2 Region for the VPC"
  default     = "us-east"
}

variable "ami" {
  description = "AMI id"
  default     = "ami-a4dc46db" # Ubuntu
}

# 6- in the directory where you have the following files;

database  img  main.tf  provider.tf  README.md  SCRIPTS  terraform.tfstate  terraform.tfstate.backup  terraform.tfvars  variables.tf  vpc  webserver

# run 'terraform validate' to validate your scripts 
#     'terraform init' to initialize the scripts
#     'terraform plan' to refresh and itemize all that will be created
#     'terraform apply' to create everything that the plan itemized.
# 

