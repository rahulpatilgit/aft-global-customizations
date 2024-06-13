data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_bucket_new" {
  bucket = "aft-sandbox-${data.aws_caller_identity.current.account_id}-new"
  acl    = "private"
}