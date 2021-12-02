resource "aws_key_pair" "terrafom_key" {
  key_name   = "terrafom-key"
  public_key = file("./../terraform.pub")
  }