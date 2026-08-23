resource "aws_instance" "exampletf" {
  ami           = local.instance_ami
  instance_type = var.instance_type

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_instance" "example" {
    ami           = local.instance_ami
    instance_type = var.instance_type
    tags = {
    Name = "example"
  }
   user_data_replace_on_change = false



}