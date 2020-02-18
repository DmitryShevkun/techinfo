
resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"
}

resource "aws_security_group" "vault" {
  name        = "vault"
  description = "Ingress for Vault"
  vpc_id      = aws_vpc.my_vpc.id

  ingress = var.my_ingress
}

output "from_ports" {
  value = aws_security_group.vault.ingress[*].from_port
  #value = aws_security_group.vault.ingress.*.from_port
}
