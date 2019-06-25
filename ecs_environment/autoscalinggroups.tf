/**
 * Autoscaling group.
 */
resource "aws_autoscaling_group" "design_kit" {
  name                 = "${terraform.env}-design-kit"
  availability_zones   = ["${split(",", var.availability_zones)}"]
  launch_configuration = "${aws_launch_configuration.design_kit.name}"
  min_size             = "${var.autoscaling_group_min_size}"
  max_size             = "${var.autoscaling_group_max_size}"
  desired_capacity     = "${var.autoscaling_group_desired_capacity}"
  vpc_zone_identifier  = ["${aws_subnet.sn.*.id}"]
  tag {
    key                 = "stage"
    propagate_at_launch = true
    value               = "${terraform.env}"
  }
}
