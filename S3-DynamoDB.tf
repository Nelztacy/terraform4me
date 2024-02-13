/**
# S3 Bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name" # Specify your desired bucket name
  acl    = "private"                # Specify the ACL for the bucket, e.g., "private", "public-read", etc.

  tags = {
    Name = "My S3 Bucket"
  }
}

# DynamoDB Table
resource "aws_dynamodb_table" "my_table" {
  name           = "my-dynamodb-table" # Specify your desired table name
  billing_mode   = "PAY_PER_REQUEST"   # Specify the billing mode, e.g., "PROVISIONED" or "PAY_PER_REQUEST"
  hash_key       = "id"                # Specify the hash key attribute name
  attribute {
    name = "id"
    type = "S" # Specify the attribute type, e.g., "S" for string, "N" for number, etc.
  }

  tags = {
    Name = "My DynamoDB Table"
  }
}
**/