resource "aws_instance" "aws2" {
    instance_type = "t2.micro"
    ami = "ami-03265a0778a880afb"

    tags = {
        Name = "web"
    }

    lifecycle {
        ignore_changes = [
            tags
        ]
        # what ever we keep in this block , will ignore by terraform if any manual changes were made
        # in this example we keep ignore of tags , so if i login to console and edit name of instance, Then terrafore will not track this changes
        # we can see it is list so we can add other items also

    }

    lifecycle {
        create_before_destroy = true
        # This will create before destory,let take example if you update instance_type = t3.micro then, First it will create t3.micro service then will destroy t2.micro
    }

    lifecycle {
        prevent_destroy = true
        # this lifecycle is use to prevent the destory the resource by mistake
        # let's take example, In above field if we change ami id then it will show error
        # so this kind of lifecycle rules is used to prevent Database'see

    }
}


