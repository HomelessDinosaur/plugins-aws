output "suga" {
  value = {
    id            = aws_lambda_function.function.arn
    domain_name   = split("/", aws_lambda_function_url.endpoint.function_url)[2]
    http_endpoint = aws_lambda_function_url.endpoint.function_url
    exports = {
      resources = {
        "aws_lambda_function" = aws_lambda_function.function.arn
      }
    }
  }
}

