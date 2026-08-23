output "instance_id"  {
    description = "The ID of the EC2 instance"
    value = aws_instance.nginx.id
}

output "NGINX_URL" {
    description = "NGINX URL"
    value = "http://${aws_instance.nginx.public_ip}"

}