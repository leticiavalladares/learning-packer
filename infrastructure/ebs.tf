resource "aws_ebs_volume" "data_logs" {
    availability_zone = "eu-central-1a"
    size              = 8
    type              = "gp3"

    tags = {
        Name = "data_log_vol"
    }
}

resource "aws_volume_attachment" "data_log_att" {
    device_name = "/dev/sdd"
    volume_id   = aws_ebs_volume.data_logs.id
    instance_id = aws_instance.pub_server.id
}