resource "aws_instance" "instance" {
    count = 11
    instance_type = var.instance_name[count.index] == "mongodb" || var.instance_name == "mysql" || var.instance_type == "rabbitmq" ? "t3.small" : "t2.micro"
    ami = var.ami_id

    tags = {
        Name = var.instance_name[count.index]
    }
}

resource "aws_route53_record" "www" {
  count = 11
  #count = length(var.instance_names)
  zone_id = var.zone_id
  name    = "${var.instance_name[count.index]}.${var.domain_name}" #interpolation
  type    = "A"
  ttl     = 1
  records = [var.instance_name[count.index] == "web" ? aws_instance.instance[count.index].public_ip : aws_instance.instance[count.index].private_ip]
}