terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.28.0"
    }
random = {
      source = "hashicorp/random"
      version = "3.8.0"
    }

  }
}

# kis region me kaam karna hain wo bata raha hu
provider "aws" {
    region = "us-east-1"   # Configuration options
}

resource "random_id" "rand_id" {  # Random resource for display the random ID 
  byte_length = 8
}

resource "aws_s3_bucket" "Demo-bucket" {       # bucket details
  bucket = "parth-bucket-${random_id.rand_id.hex}"
}

resource "aws_s3_object" "Object-data" {     # store the data in S3 bucket
  bucket = aws_s3_bucket.Demo-bucket.bucket
  source = "./object.txt"
  key    = "object.txt"   #key = S3 bucket ke andar file ka naam / path
}

output "name" {
  value = random_id.rand_id.hex   # Show the details on display witch is give you on value
}