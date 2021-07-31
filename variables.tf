
variable "region" {
  type = string
  default = "eu-west-3"
}

variable "image_id" {
  type = string
  default = "ami-0f7cd40eac2214b37"
}

variable "flavor" {
  type = string
  default = "t2.micro"
}

variable "ec2_instance_port" {
  type = number
  default = 80
}

