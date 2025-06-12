resource "aws_route53_record" "www" {
  for_each = aws_instance.roboshop
  zone_id  = var.zone_id
  # name    = "${var.instances[count.index]}.${var.domain_name}" # interpolation if you want to use one string and one variable
  name     = "${each.key}.${var.domain_name}"
  type     = "A"
  ttl      = 1
  # records = [aws_instance.roboshop[count.index].private_ip]
  records  = [each.value.private_ip]
}

# we got the info aws_instance.roboshop[count.index].private_ip from the command "terraform plan"


/ * resource "aws_route53_record" "www" {
  count =  4
  zone_id = var.zone_id
  # name    = "${var.instances[count.index]}.${var.domain_name}" # interpolation if you want to use one string and one variable
  name = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  # records = [aws_instance.roboshop[count.index].private_ip]
  records = [each.value.private_ip]
}

# we got the info aws_instance.roboshop[count.index].private_ip from the command "terraform plan" */