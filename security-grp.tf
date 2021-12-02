resource "aws_security_group" "terraform_web_allow_http" {
  name        = "terraform_web_allow_http_renamed"
  description = "Allow http inbound traffic"
  vpc_id      = ""

  ingress {
    description      = "allow http"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    prefix_list_ids  = [] 
    security_groups  = []
    self             = false
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    prefix_list_ids  = [] 
    security_groups  = []
    self             = false
  }

  tags = {
    Name = "terraform_web_allow_http"
  }

 
}

resource "aws_security_group" "terraform_web_allow_remote" {
  name        = "terraform_web_allow_remote"
  description = "Allow ssh inbound traffic"
  vpc_id      = ""

  ingress {
    description      = "allow ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    prefix_list_ids  = [] 
    security_groups  = []
    self             = false
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    prefix_list_ids  = [] 
    security_groups  = []
    self             = false
  }

  tags = {
    Name = "terraform_web_allow_remote"
  }
}



