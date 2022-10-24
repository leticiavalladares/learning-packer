resource "aws_instance" "pub_server" {
  ami                    = data.aws_ami.my_ubuntu_image.id
  instance_type          = var.instance_type
  subnet_id              = data.aws_subnet.pub_subnet.id
  vpc_security_group_ids = [data.aws_security_group.sg.id]
  key_name               = var.keypair

  tags = {
      Name = "pub-webserver"
  }

  depends_on = [
    data.aws_ami.my_ubuntu_image,
    data.aws_subnet.pub_subnet,
    data.aws_security_group.sg
  ]
}