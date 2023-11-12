####################
## VPC CIDR Block ##
####################

variable " vpc_cidr" {
    dafault     = "10.0.0.0/16"
    description = "VPC_cidr Block"
    type        = string
}


####################################
## Presentation Tier CIDR Block 1 ##
####################################

variable "public-subnet-1-cidr" {
    default     = "10.0.1.0/24"
    description = "public_subnet1"
    type        = string
}

####################################
## Presentation Tier CIDR Block 2 ##
####################################

variable "public-subnet-2-cidr" {
    default     = "10.0.2.0/24"
    description = "public_subnet2"
    type        = string
}

####################################
## Presentation Tier CIDR Block 3 ##
####################################

variable "public-subnet-3-cidr" {
    dafault     = "10.0.3.0/24"
    description = "public_subnet2"
    type        = string
}

###########################
## App Tier CIDR Block 1 ##
###########################

variable "private-subnet-1-cidr" {
    default     = "10.0.4.0/24"
    description = "private-subnet1"
    type        = string
}

###########################
## App Tier CIDR Block 2 ##
###########################

variable "private-subnet-2-cidr" {
    default     = "10.0.5.0/24"
    description = "private-subnet2"
    type        = string
}

###########################
## App Tier CIDR Block 3 ##
###########################

variable "private-subnet-3-cidr" {
    default     = "10.0.6.0/24"
    description = "private-subnet3"
    type        = string
}

###########################
## DB Tier CIDR Block 4 ##
###########################

variable "private-subnet-4-cidr" {
    default     = "10.0.7.0/24"
    description = "private-subnet4"
    type        = string
}

###########################
## DB Tier CIDR Block 5 ##
###########################

variable "private-subnet-5-cidr" {
    default     = "10.0.8.0/24"
    description = "private-subnet5"
    type        = string
}

##########################
## DB Tier CIDR Block 6 ##
##########################

variable "private-subnet-6-cidr" {
    default     = "10.0.8.0/24"
    description = "private-subnet6"
    type        = string
}


#############################
## App Tier Security Group ##
#############################

variable "ssh-locate" {
    default     = "your_ip_address"
    description = "ip address"
    type        = string
}

#################
## DB Instance ##
#################

variable "database-instance-class" {
    default     = "db.t2.micro"
    description = "The Database Instance Type"
    type        = string
}

##############
## multi_AZ ##
##############

variable "multi_az-deployment" {
    default     = true
    description = "Create a Standby DB Instance"
    type        = bool
}
