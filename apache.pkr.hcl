source "amazon-ebs" "ubuntu" {
    ami_name      = "apache-on-ubuntu"
    instance_type = var.instance_type
    region        = var.region
    source_ami    = data.amazon-ami.ubuntu.id      // ami-051835d754b74795c
    ssh_username  = "ubuntu"
    vpc_filter {
        filters = {
            "tag:Name": var.vpc_name
        }
    }
    subnet_filter {
        filters = {
            "tag:Name": var.subnet_name
        }
    }
}

build {
    name     = "ebs-builder"
    sources  = [
        "source.amazon-ebs.ubuntu"
    ]

    provisioner "ansible" {
        playbook_file = "./ansible/playbook.yml"
    }
}
