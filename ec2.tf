resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.type
  vpc_security_group_ids = [aws_security_group.terraform_web_allow_remote.id, aws_security_group.terraform_web_allow_http.id]
  key_name = aws_key_pair.terrafom_key.id
  user_data = file("user_data.sh")
  tags = {
    Name = "terrafom_webserver"
  }
}