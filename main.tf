resource "aws_instance" "main" {
  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = local.sg_id
  subnet_id = local.private_subnet_id

  tags = merge(
    {
        Name = "${local.common_name}"
    },
    local.common_tags
  )
}