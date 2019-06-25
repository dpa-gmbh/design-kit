resource "aws_ecs_service" "design_kit_service" {
  name            = "design-kit-service"
  task_definition = "${aws_ecs_task_definition.design_kit.arn}"
  iam_role        = "${aws_iam_role.design_kit_ecs_service.name}"
  cluster         = "${aws_ecs_cluster.design_kit_cluster.id}"
  desired_count   = "${var.design_kit_service_tasks_desired_count}"
  load_balancer {
    container_name   = "${aws_ecs_task_definition.design_kit.family}"
    container_port   = 8080
    target_group_arn = "${aws_alb_target_group.design_kit_tg.arn}"
  }
  depends_on      = ["aws_alb_listener.listener"]
}

