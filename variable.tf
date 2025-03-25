#vpc varialbes
variable "vpc_cidr" {
  default = "10.0.0.0/16"
  description = "vpc cidr block"
  type = string
}

variable "public_subnet_az1_cidr" {
  default = "10.0.0.0/24"
  description = "public subnet az1 cidr block"
  type = string
}

variable "public_subnet_az2_cidr" {
  default = "10.0.1.0/24"
  description = "public subnet az2 cidr block"
  type = string
}

variable "private_app_subnet_az1_cidr" {
  default = "10.0.2.0/24"
  description = "private app subnet az1 cidr block"
  type = string
}

variable "private_app_subnet_az2_cidr" {
  default = "10.0.3.0/24"
  description = "private app subnet az2 cidr block"
  type = string
}

variable "private_data_subnet_az1_cidr" {
  default = "10.0.4.0/24"
  description = "private data subnet az1 cidr block"
  type = string
}

variable "private_data_subnet_az2_cidr" {
  default = "10.0.5.0/24"
  description = "private data subnet az2 cidr block"
  type = string
}

variable "ssh_location" {
  default = "86.149.34.231/32"
  description = "the ip address that can ssh into the ec2"
  type = string
}

#rds variables
variable "database_snapshot_identifier" {
  default = "arn:aws:rds:eu-west-2:216989101000:snapshot:shopwise-snapshot"
  description = "the database snapshot arn"
  type = string
}

variable "database_instance_class" {
  default = "db.t3.micro"
  description = "the database instance type"
  type = string
}

variable "database_instance_identifier" {
  default = "dev-rds-db"
  description = "the database instance identifier"
  type = string
}

variable "multi_az_deployment" {
  default = false
  description = "create a standby db instance"
  type = bool
}

variable "ssl_certificate_arn" {
  default = "arn:aws:acm:eu-west-2:216989101000:certificate/68c2aad6-d8a7-456a-be70-f232c4297a44"
  description = "ssl certificate arn"
  type = string
}

#sns topic variable
variable "operator_email" {
  default = "isamotuayokunmi@gmail.com"
  description = "a valid email address"
  type = string
}

#autoscaling group variable
variable "launch_template_name" {
  default = "dev-launch-template"
  description = "name of the launch template"
  type = string
}

variable "ec2_image_id" {
  default = "ami-0457f5e303c61ceee"
  description = "id of the ami"
  type = string
}

variable "ec2_instance_type" {
  default = "t2.micro"
  description = "ec2 instance type"
  type = string
}

variable "ec2_key_pair_name" {
  default = "anike"
  description = "name of the ec2 key pair"
  type = string
}

#route 53 variable
variable "domain_name" {
  default = "adebisianike.com"
  description = "domain name"
  type = string
}

variable "record_name" {
  default = "www.adebisianike.com"
  description = "sub domain name"
  type = string
}