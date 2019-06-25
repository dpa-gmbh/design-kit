resource "aws_cloudwatch_log_group" "design-kit" {
  name = "${terraform.env}-design-kit-lg"

  tags {
    environment = "${terraform.env}"
  }
}