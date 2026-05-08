resource "aws_instance" "terraformVM" {

  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"

  tags = {
    Name = "JenkinsTerraformServer"
  }
}
