provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "web_instance" {
  ami           = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"
  key_name      = "TF_key"

  subnet_id                   = aws_subnet.public-us-east-1a.id
  vpc_security_group_ids      = [aws_security_group.aws_sg.id]
  associate_public_ip_address = true
} 
