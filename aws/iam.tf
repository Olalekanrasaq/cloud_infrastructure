data "aws_iam_policy_document" "s3_policy_doc" {
  statement {
    sid = "AllowS3Access"

    actions = [
      "s3:Get*",
      "s3:Put*",
      "s3:List*"
    ]

    resources = [
      "arn:aws:s3:::cocosurf-gear-miami",
      "arn:aws:s3:::cocosurf-gear-miami/*"
    ]
  }
}

resource "aws_iam_policy" "s3_policy" {
  name   = "solo-bucket-policy"
  path   = "/"
  policy = data.aws_iam_policy_document.s3_policy_doc.json
}