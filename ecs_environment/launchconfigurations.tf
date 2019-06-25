/**
 * Launch configuration used by autoscaling group
 */

resource "aws_launch_configuration" "design_kit" {
  lifecycle {
    create_before_destroy = true
  }
  // Ein workaround mit uuid, da neue launchconfigurationen mit gleichem Namen nicht angelegt werden können
  name                        = "${terraform.env}-design-kit-${uuid()}"
  key_name                    = "dev-dpa-id-key"
  image_id                    = "${lookup(var.amis, var.region)}"
  instance_type               = "${var.instance_type}"
  security_groups             = ["${aws_security_group.ecs.id}"]
  user_data                   = "#!/bin/bash\necho ECS_CLUSTER=${aws_ecs_cluster.design_kit_cluster.name} >> /etc/ecs/ecs.config"
  associate_public_ip_address = true
  iam_instance_profile        = "${aws_iam_instance_profile.design_kit_ec2_profile.name}"
}
