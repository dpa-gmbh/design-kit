data "template_file" "design-kit" {
  template = "${file("design-kit-task-definition.json")}"

  vars {
    task_name                  = "design-kit"
    registry_design_kit_image  = "${var.design_kit_docker_repo}:${var.design_kit_container_tag}"
    design_kit_lg = "${aws_cloudwatch_log_group.design-kit.name}"
  }
}

