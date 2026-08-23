variable "instance_type" {
    type = string   
}

locals {
    instance_ami = "ami-06f9e3b45a89cf4aa"

}


variable "my_ip_cidr" {
    type = string
}