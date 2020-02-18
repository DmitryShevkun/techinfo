
resource "aws_instance" "foo" {

    ami           = var.my_ami
    instance_type = var.my_instance_type

    dynamic "credit_specification" {
        for_each = var.my_cpu_credits == "" ? [] : [1]
        content {
            cpu_credits = var.my_cpu_credits
        }
    }

}
