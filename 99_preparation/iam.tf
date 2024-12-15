provider "aws" {
  profile = "terraform"
  region = "ap-northeast-1"
}

resource "aws_iam_user" "glamping_user_yui" {
  name = "glamping_user_yui"
  tags = {
    env = "aws-glamping"
  }
}

resource "aws_iam_user" "glamping_user_taniguchi" {
  name = "glamping_user_taniguchi"
  tags = {
    env = "aws-glamping"
  }
}