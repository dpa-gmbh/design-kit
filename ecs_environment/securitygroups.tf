resource "aws_security_group" "ecs" {
  name        = "${terraform.env}-design-kit-ecs-sg"
  description = "Container Instance Allowed Ports"
  vpc_id      = "${aws_vpc.design-kit.id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["193.109.231.0/24"]
  }

  ingress {
    from_port   = 32768
    to_port     = 61000
    protocol    = "tcp"
    security_groups = ["${aws_security_group.lb.id}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    name = "${terraform.env}-design-kit-ecs-sg"
  }
}

resource "aws_security_group" "lb" {
  name        = "${terraform.env}-design-kit-lb-sg"
  description = "Loadbalancer Allowed Ports"
  vpc_id      = "${aws_vpc.design-kit.id}"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
//    cidr_blocks = ["193.109.231.0/24"]
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    name = "${terraform.env}-design-kit-lb-sg"
  }
}