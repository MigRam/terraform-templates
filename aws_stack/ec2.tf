resource "aws_instance" "ec2-dev-1" {
  ami           = lookup(var.ami, var.region)
  instance_type = "t2.micro"
  count         = var.flag == true ? 2 : 0
}

resource "aws_instance" "ec2-stage-1" {
  ami           = lookup(var.ami, var.region)
  instance_type = "t2.micro"
  count         = var.flag == true ? 2 : 0
  key_name      = "labsuser"

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install -y nginx1.12",
      "sudo systemctl start nginx",
    ]
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("~/Downloads/labsuser.pem")
    port        = 22
    host        = self.public_ip
  }
}

