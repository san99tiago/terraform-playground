resource "aws_iam_role" "iam_for_lambda_devsecops" {
  name = "iam_for_lambda_devsecops"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_lambda_function" "test_lambda" {
  filename      = "lambda.zip"
  function_name = "hello-lambda"
  role          = aws_iam_role.iam_for_lambda_devsecops.arn
  handler       = "index.handler"
  runtime       = "nodejs12.x"
}
