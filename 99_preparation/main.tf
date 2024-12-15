provider "aws" {
  profile = "terraform"
  region  = "ap-northeast-1"
}

resource "aws_instance" "main" {
  ami           = "ami-023ff3d4ab11b2525"
  instance_type = "t2.micro"
  tags = {
    Name = "glamping-instance"
  }
}
