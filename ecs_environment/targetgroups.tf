resource "aws_alb_target_group" "design_kit_tg" {
  port = 80
  protocol = "HTTP"
  vpc_id = "${aws_vpc.design-kit.id}"
  depends_on = ["aws_alb.alb"]
  deregistration_delay = 30
  health_check {
    path = "/css/prism.css"
    protocol = "HTTP"
  }
}
