resource "aws_s3_bucket" "source_bucket" {
  bucket = "cocosurf-gear-miami"

  tags = local.common_tags
}

resource "aws_s3_bucket" "state_file" {
  bucket = "solo-developer-tf-statefile"

  tags = local.common_tags
}
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.source_bucket.id

  versioning_configuration {
    status = var.versioning
  }
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "class-test-bucket"

  tags = local.common_tags
}