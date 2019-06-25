variable "az_count" {
  description = "Number of AZs to cover in a given AWS region"
  default     = "3"
}

variable "newbits" {
  default = 2
}

data "aws_availability_zones" "azs" {}

resource "aws_vpc" "design-kit" {
  cidr_block           = "10.11.0.0/16"
  enable_dns_hostnames = true
  tags {
    Name = "${terraform.env}-design-kit-vpc"
  }
}

resource "aws_internet_gateway" "gt" {
  vpc_id = "${aws_vpc.design-kit.id}"
}

resource "aws_route_table" "rt" {
  vpc_id = "${aws_vpc.design-kit.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gt.id}"
  }
  tags {
    name = "${var.design_kit_site_prefix}-design-kit-rt"
  }
}

resource "aws_route_table_association" "rta" {
  count          = "${var.az_count}"
  subnet_id      = "${element(aws_subnet.sn.*.id, count.index)}"
  route_table_id = "${aws_route_table.rt.id}"
}

resource "aws_subnet" "sn" {
  count             = "${var.az_count}"
  cidr_block        = "${cidrsubnet(aws_vpc.design-kit.cidr_block, var.newbits, count.index)}"
  availability_zone = "${data.aws_availability_zones.azs.names[count.index]}"
  vpc_id            = "${aws_vpc.design-kit.id}"
  tags {
    Name = "${terraform.env}-sn-${count.index}"
  }
}