resource "aws_instance" "app" {
    ami           = "ami-03265a0778a880afb" #devops-practice
    instance_type = "t2.micro"

    tags = {
      Name = "HelloTerraform"
  }
}

resource "aws_security_group" "robo" {
    name = var.sg-name
    description = var.sg-description

    ingress {
        description      = "Allow All ports"
        from_port        = 0 # 0 means all ports
        to_port          = 0 
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        name = "roboshop"
    }
}