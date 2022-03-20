resource "aws_instance" "tf_web_server_instance" {
  ami             = "ami-02e136e904f3da870"
  instance_type   = "t2.micro"
  key_name        = "whizlabs-key"
  security_groups = ["${aws_security_group.tf_web_server_security_group.name}"]

  user_data = <<-EOF
        #!/bin/bash
        sudo su
        yum update -y
        yum install httpd -y
        systemctl start httpd
        systemctl enable  httpd      
        echo "<html><h1>Welcome to Whizlabs. Happy Learning...</h1></html>" >> /var/www/html/index.html
    EOF

  tags = {
    name = "web_instance"
  }
}