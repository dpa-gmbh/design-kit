resource "aws_route53_record" "design_kit_record" {

  name    = "${var.design_kit_site_prefix}.dpa-connect.de"
  type    = "A"
  zone_id = "${var.zone_id}"

  alias {
    evaluate_target_health = false
    name                   = "${aws_alb.alb.dns_name}"
    zone_id                = "${aws_alb.alb.zone_id}"
  }
}

