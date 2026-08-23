terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}



resource "aws_instance" "nginx" {
  ami           = local.instance_ami
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.nginx-sg.id]
  user_data = file("cloud-init.yml")
}

resource "aws_security_group" "nginx-sg" {
    name = "nginx-sg"
    ingress {
    from_port   = 80    #http
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

    ingress { #SSH (My IP)
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = [var.my_ip_cidr]
    }

    egress { # Traffic coming out
        from_port = 0
        to_port = 0
        protocol = "-1" #-1 means all 
        cidr_blocks = ["0.0.0.0/0"]

    }    
}
