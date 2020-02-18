
my_ingress = [
    {
    description = "customdescription"
    from_port   = "77"
    to_port     = "77"
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = true
    }
  ]
