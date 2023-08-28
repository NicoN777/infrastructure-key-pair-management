provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "key_pair" {
  key_name = lookup(local.all_available[var.key_pair_tier], "Name", "NO!")
  public_key = file("./${lookup(local.all_available[var.key_pair_tier], "PublicKey", "NO!")}")
  tags = lookup(local.all_available, var.key_pair_tier)
}

