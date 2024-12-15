provider "aws" {
  alias   = "policy"
  profile = "terraform"
  region  = "ap-northeast-1"
}

resource "aws_iam_policy" "ec2_vpc_elb_access" {
  name        = "ec2_vpc_elb_access"
  description = "Policy for EC2, VPC and ELB access with t2.micro restriction"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "ec2:*",
          "elasticloadbalancing:*", 
          "vpc:*",
          "route53:*",
          "route53domains:*",
          "cloudwatch:*",
          "acm:*",
          "rds:*"
        ]
        Resource = "*"
      },
      {
        Effect = "Allow"
        Action = [
          "ec2:RunInstances",         # インスタンス作成
          "ec2:DescribeInstances",    # インスタンス情報の取得
          "ec2:TerminateInstances"    # インスタンス削除
        ]
        Resource = "*"
        Condition = {
          StringEquals = {
            "ec2:InstanceType" = "t2.micro"
          }
        }
      },
      {
        Effect = "Allow"
        Action = [
          "ec2:DescribeImages",       # AMI情報の取得
          "ec2:DescribeKeyPairs",     # キーペア情報の取得
          "ec2:DescribeSecurityGroups" # セキュリティグループの取得
        ]
        Resource = "*"
      }
    ]
  })

  tags = {
    env = "aws-glamping"
  }
}

resource "aws_iam_group" "glamping_group_policy" {
  name = "glamping_group_policy"
}