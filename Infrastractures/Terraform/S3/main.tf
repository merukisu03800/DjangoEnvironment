# Terraform定義
terraform {
  required_version = ">=1.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}
# グローバル変数の定義
locals {
  region = "ap-northeast-1"
}
# プロバイダーの設定（AWSを使用する場合）
provider "aws" {
  region = local.region
}
# S3バケットの作成
resource "aws_s3_bucket" "example_bucket" {
  bucket = "your-unique-bucket-name-12341234124123" # ユニークなバケット名を指定
#  acl    = "private" # バケットのアクセス許可設定 (private, public-read, public-read-write など)
}

# S3バケットへのアクセス許可の設定（例: パブリックアクセスを許可）
resource "aws_s3_bucket_public_access_block" "example_bucket_public_access" {
  bucket = aws_s3_bucket.example_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

# S3バケットへのバケットポリシーの設定（例: パブリックアクセスを許可）
resource "aws_s3_bucket_policy" "example_bucket_policy" {
  bucket = aws_s3_bucket.example_bucket.id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "${aws_s3_bucket.example_bucket.arn}/*"
    }
  ]
}
EOF
}
