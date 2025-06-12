locals {
  final_name = "${var.project}-${var.environment}-${var.component}"
  ec2_tags = merge(
    var.common_tags,
    {
        environment = "dev",
        version = "1.0"
    }
  )
}

#while rfering using "local" not "locals" keyword 