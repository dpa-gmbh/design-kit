resource "aws_ecs_task_definition" "design_kit" {
  family                = "design-kit"
  container_definitions = "${data.template_file.design-kit.rendered}"
  task_role_arn = "${aws_iam_role.iam_role_design_kit_task_role.arn}"
}

resource "aws_iam_role" "iam_role_design_kit_task_role" {
  name               = "${terraform.env}_iam_role_notification_task_role"

  assume_role_policy = <<EOF
{
  "Version": "2008-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}