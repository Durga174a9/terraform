locals {
    instance = var.is_prod ? "t3.small" : "t2.micro"
}