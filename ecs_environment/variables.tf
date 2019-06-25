variable "design_kit_service_tasks_desired_count" {
  description = "Connect Central Service Tasks Desired Count"
  default = "1"
}

variable "region" {
  description = "The AWS region to create resources in."
  default     = "eu-central-1"
}

variable "availability_zones" {
  description = "The availability zones"
  default     = "eu-central-1a,eu-central-1b,eu-central-1c"
}

variable "ecs_cluster_name" {
  description = "The base name of the Amazon ECS cluster."
  default     = "design-kit-cluster"
}

variable "registry_username" {
  description = "The username to use when connecting to the registry."
  default     = "terraform"
}

variable "autoscaling_group_min_size" {
  description = "The minimum number of instances the Auto Scaling group should have at any time"
  default     = "1"
}

variable "autoscaling_group_max_size" {
  description = "The maximum number of instances the Auto Scaling group should have at any time"
  default     = "2"
}

variable "autoscaling_group_desired_capacity" {
  description = "Specify the number of instances you want to run in this Auto Scaling group, as well as the minimum and maximum number of instances the Auto Scaling group should have at any time."
  default     = "1"
}

// Registries
variable "design_kit_docker_repo" {
  default = "960057802448.dkr.ecr.eu-central-1.amazonaws.com/design-kit"
}

/* ECS optimized AMIs per region */
variable "amis" {
  type    = "map"
  default = {
    eu-central-1 = "ami-0291ba887ba0d515f"
  }
}

variable "instance_type" {
  description = "The AWS Instance Type for Cluster Nodes"
  default = "t2.micro"
}

variable "design_kit_container_tag" {
  default = "latest"
  description = "Gültige tags können im ecs container repository gefunden werden. Sie sind häufig die ersten 7 Zeichen eines commit-hashes label wie 'latest' oder  'staging' "
}

variable "design_kit_site_prefix" {
  description = "Prefix vor der URL .dpa-connect.de für Loadbalancer Mappings"
}

variable "zone_id" {
  description = "The zone id for dpa-connect.de"
  default = "Z3JCXFOI76Y00O"
}

variable "certificate_arn" {
  description = "The ARN for the certificate for dpa-connect.de"
  default = "arn:aws:acm:eu-central-1:960057802448:certificate/6e561a28-8888-49cc-90e6-ebf1030bb35b"
}
