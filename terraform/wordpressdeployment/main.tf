terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}



resource "aws_instance" "WordpressTF" {
  ami           = local.instance_ami
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.web-sg.id]
  key_name = "KP2EU"
  user_data = templatefile("setup.sh.tpl", {
    DB_NAME = var.DB_NAME
    DB_USER = var.DB_USER
    DB_PASS = var.DB_PASSWORD


  }
  
  
  )
  tags = {
    Name = "Wordpress"
  }
}

# Security groups
resource "aws_security_group" "web-sg" {
    name = "web-sg"
    ingress {
    from_port   = 80    #http
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

    ingress { #https
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress { #SSH (My IP)
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = [var.MY_IP]
    }

    egress { # Traffic coming out
        from_port = 0
        to_port = 0
        protocol = "-1" #-1 means all 
        cidr_blocks = ["0.0.0.0/0"]

    }    
}

