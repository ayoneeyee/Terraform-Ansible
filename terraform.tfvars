// access options
aws_access_key 	= ""
aws_secret_key 	= ""
aws_key_name   	= "codedeploy"

// instance options
aws_region     		= "us-east-1"
ami 				= "ami-a4dc46db"
instance_type   	= "t2.micro"

// networking options
vpc_cidr 			= "10.0.0.0/16"
public_subnet_cidr 	= "10.0.0.0/24"
private_subnet_cidr = "10.0.1.0/24"
