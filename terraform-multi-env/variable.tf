variable "instance" {
    type = map
    default = {
        mongodb = "t3.small"
        catalogue = "t2.micro"
        cart = "t2.micro"
        user = "t2.micro"
        web = "t2.micro"
    }
}

variable "ami_id" {
    type = string
    default = "ami-03265a0778a880afb"
}

variable "domain_name" {
    default = "174a9.online"
}

variable "zone_id" {
    default = "Z0820524U587YTI3CYP8"
}

