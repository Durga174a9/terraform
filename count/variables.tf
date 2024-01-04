variable "instance_name" {
    type = list
    default = ["mongodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","dispatch","web"]
}

variable "ami_id" {
    type = string
    default = "ami-03265a0778a880afb"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "domain_name" {
    default = "174a9.online"
}

variable "zone_id" {
    default = "Z0820524U587YTI3CYP8"
}

