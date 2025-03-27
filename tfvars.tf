variable "vpc-cidr" {
  type        = string
  description = "the VPC cidr block"
  default     = "100.64.0.0/16"
}
variable "pub-cidr" {
  type        = string
  description = "public subnet"
  default     = "100.64.1.0/24"
}
variable "priv-cidr" {
  type        = string
  description = "private subnet"
  default     = "100.64.2.0/24"
}
variable "chassis" {
  type        = string
  description = "chassis"
  default     = "t2.micro"
}
data "aws_ami" "latest_ami" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}