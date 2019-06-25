resource "aws_alb" "alb" {
  name            = "${terraform.env}-design-kit-alb"
  internal        = false
  security_groups = ["${aws_security_group.lb.id}"]
  subnets         = ["${aws_subnet.sn.*.id}"]
}

resource "aws_alb_listener" "listener" {
  "default_action" {
    target_group_arn = "${aws_alb_target_group.design_kit_tg.arn}"
    type             = "forward"
  }
  load_balancer_arn = "${aws_alb.alb.arn}"
  port              = 443
  protocol          = "HTTPS"
  certificate_arn   = "${var.certificate_arn}"
}

resource "aws_alb_listener_rule" "design-kit" {
  "action" {
    target_group_arn = "${aws_alb_target_group.design_kit_tg.arn}"
    type             = "forward"
  }
  "condition" {
    field  = "path-pattern"
    values = ["/*"]
  }
  listener_arn = "${aws_alb_listener.listener.arn}"
  priority     = 1
}
