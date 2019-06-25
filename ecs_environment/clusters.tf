/* ecs service cluster */
resource "aws_ecs_cluster" "design_kit_cluster" {
  name = "${terraform.env}-${var.ecs_cluster_name}"
}