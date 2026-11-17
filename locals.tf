locals {
 common_name = "${var.project}-${var.environment}-${var.component}"
 sg_id = data.aws_ssm_parameter.sg_id.value
 private_subnet_id = split(",", data.aws_ssm_parameter.private_subnet_ids.value)[0]
 vpc_id = data.aws_ssm_parameter.vpc_id.value
 common_tags = {
    Project = "${var.project}"
    Environment = "${var.environment}"
    Terraform = "true"
 }
 
}