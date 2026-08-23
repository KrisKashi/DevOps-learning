variable "instance_type" {
    type = string   
}

locals {
    instance_ami = "ami-06f9e3b45a89cf4aa"

}


variable "MY_IP" {
    type = string
}

variable "DB_NAME" {
    type = string   
}

variable "DB_USER" {
    type = string  
}

variable "DB_PASSWORD" {
    type = string
}

