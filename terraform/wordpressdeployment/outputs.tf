output "instance_id"  {
    description = "The ID of the EC2 instance"
    value = aws_instance.WordpressTF.id
}

output "Wordpress_URL" {
    description = "Wordpress URL"
    value = "http://${aws_instance.WordpressTF.public_ip}"

}