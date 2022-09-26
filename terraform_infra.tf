terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}
provider "aws" {
  region = "us-west-2"
  access_key = "AKIA2RDXS76M26VZM3NH"
  secret_key = "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"
}
  resource "aws_instance" "ec2_variable" {
    ami               = "ami-0c2ab3b8efb09f272"
    instance_type     = "t2.large"
    count    = "5"
    vpc_security_group_ids = ["sg-00a9dc8a18b91dd02"]
    availability_zone = "us-west-2b"
    user_data         = file("installation.sh")
    key_name          = "O123"
  
  root_block_device {
    volume_size = "30"
    volume_type = "gp2"
    encrypted   = false
    delete_on_termination = true
    }
}
