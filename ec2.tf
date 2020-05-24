resource "aws_instance" "test_ec2" {
  ami           = "ami-0b44050b2d893d5f7"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.deployer.key_name
  user_data     = data.template_file.init.rendered
}

