resource "aws_instance" "instance" {
    for_each = var.instance_name

    instance_type = each.value
    ami = var.ami_id

    tags = {
        name = each.key
    }
}

resource "aws_route53_record" "www" {
  for_each = aws_instance.instance
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}" #interpolation
  type    = "A"
  ttl     = 1
  records = [each.key == "web" ? each.value.public_ip : each.value.private_ip]
}