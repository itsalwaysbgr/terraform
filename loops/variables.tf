variable "ami_id" {
    type    = string
    default = "ami-09c813fb71547fc4f"
    description ="AMI ID for joindevips RHEL 9"
}

variable "instance_type" {
    default   = "t3.micro"
}

variable "ec2_tags" {
    default = {
        Name = "Helloworld" #tag should be in map format and this is for the name of the instance
        Purpose = "practice"
    }
}

variable "sg_name" {
    default = "var-file-allow_all"
}

variable "sg_description" {
    default = "allowing all ports"
}

variable "from_port" {
    default = 0
}

variable "to_port" {
    type = number # on above from_port we have directly given default = 0 but one can give by stating value type and value like this one
    default = 0
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]

}

variable "sg_tags" {
    default = {
        Name = "allow-all"
    }
}

variable "environment" {
    default = "dev"
}


variable "instances" {
    default = {
        mongodb = "t3.micro"
        redis = "t3.micro"
        mysql = "t3.small"
    }
}

variable "zone_id" {
    default = "Z0025773HL0IRVDCYXE5"
}

variable "domain_name" {
    default = "daws86s.site"
}

 