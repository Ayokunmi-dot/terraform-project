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
  default = "arn:aws:rds:eu-west-2:216989101000:snapshot:dev-rds-db-snapshot"
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