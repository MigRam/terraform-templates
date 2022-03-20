resource "aws_instance" "web-server" {
  ami             = "ami-01cc34ab2709337aa"
  instance_type   = "t2.micro"
  key_name        = "whizlabs-key"
  security_groups = ["${aws_security_group.web-sg.name}"]
  count           = 2

  user_data = <<-EOF

       #!/bin/bash

       sudo su

        yum update -y

        yum install httpd -y

        systemctl start httpd

        systemctl enable httpd

        echo "<html><h1> Welcome to Whizlabs. Happy Learning from $(hostname -f)...</p> </h1></html>" >> /var/www/html/index.html

        EOF


  tags = {

    Name = "instance-${count.index}"

  }
}