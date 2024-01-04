output "instance_id" {
    value = aws_instance.app.id
}

output "instace_public_ip" {
    value = aws_instance.app.public_ip
} 