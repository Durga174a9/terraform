resource "aws_instance" "instance" {
    instance_type = local.instance
    ami = var.ami
}