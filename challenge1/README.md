#Challenge #1
#A 3 tier environment is a common setup. Use a tool of your choosing/familiarity create these resources. Please remember we will not be judged on the #outcome but more focusing on the approach, style and reproducibility.

# Terraform code to deploy three-tier architecture on azure

#Azure 3-tier architecture contains
	- one virtual network 
	- 3 subnets in the vnet (web, app, db)
	- 1 webtier subnet, 1 app tier subnetn, 1 db tier subnet
	- 1 web-vm, 1 app-vm and database 
	
	- 3 nsg to restrict traffic and assign to subnets
	- web nsg/vm - allow inbound traffic form internet
	- app nsg/vm - allow inbound traffic from web and allow outbound traffic to web 
	- db nsg - allow traffic from app, allow traffic to app, deny traffic to web tier
	
#Terraform Modules
resourcegroup - creating resourcegroup
networking - creating azure virtual network and required subnets
securitygroup - creating network security group, setting desired security rules and associating them to subnets
compute - creating availability sets, network interfaces and virtual machines
database - creating database server and database

#Deployment - 
1. checkout repo
2. make sure terraform installed 
3. execute below commands from challenge1 directory
terraform init
terraform plan
terraform validate
terraform apply
