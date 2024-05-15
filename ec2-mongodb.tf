provider "aws" {
  access_key = "###"
  secret_key = "###"
  region     = "sa-east-1"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-###"  # Ubuntu AMI
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.basic_security.id]
  tags = {
    Name = "instanceName"
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("keypairs.pem")
    host        = self.public_ip
  }

  provisioner "local-exec" {
    #command = "sleep 10"    # linux
    command = "ping 127.0.0.1 -n 1 -w 10000 >NUL" # windows
  }
}

resource "aws_security_group" "basic_security" {
    name = "sg-instanceName"
    description = "Allow TLS inbound traffic"

    ingress {
        from_port = 22
        to_port   = 22
        protocol  = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    egress {
        from_port = "0"
        to_port   = "0"
        protocol  = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
}