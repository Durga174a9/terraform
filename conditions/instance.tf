resource "aws_instance" "app" {
    ami           = var.ami_id #devops-practice
    instance_type = var.instance_name == "mongodb" ? "t3.small" : "t2.micro"
    #vpc_security_group_ids = [aws_security_group.robo.id]

    tags = {
      Name = "HelloTerraform"
  }
}