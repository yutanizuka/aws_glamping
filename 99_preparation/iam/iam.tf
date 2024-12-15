provider "aws" {
  profile = "terraform"
  region = "ap-northeast-1"
}

resource "aws_iam_user" "glamping_user_yuta_nizuka" {
  name = "glamping_user_yuta_nizuka"
  force_destroy = true
  
  tags = {
    env = "aws-glamping"
  }
}

resource "aws_iam_user_login_profile" "glamping_user_yuta_nizuka" {
  user = aws_iam_user.glamping_user_yuta_nizuka.name
  password_reset_required = true
}

resource "aws_iam_user" "glamping_user_yui_oki" {
  name = "glamping_user_yui_oki"
  force_destroy = true
  
  tags = {
    env = "aws-glamping"
  }
}

resource "aws_iam_user_login_profile" "glamping_user_yui_oki" {
  user = aws_iam_user.glamping_user_yui_oki.name
  password_reset_required = true
}

resource "aws_iam_user" "glamping_user_taniguchi" {
  name = "glamping_user_taniguchi"
  force_destroy = true
  
  tags = {
    env = "aws-glamping"
  }
}

resource "aws_iam_user_login_profile" "glamping_user_taniguchi" {
  user = aws_iam_user.glamping_user_taniguchi.name
  password_reset_required = true
}

resource "aws_iam_user" "glamping_user_yoichi_murata" {
  name = "glamping_user_yoichi_murata"
  force_destroy = true
  
  tags = {
    env = "aws-glamping"
  }
}

resource "aws_iam_user_login_profile" "glamping_user_yoichi_murata" {
  user = aws_iam_user.glamping_user_yoichi_murata.name
  password_reset_required = true
}
