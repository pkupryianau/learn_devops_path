variable "primary-region" {
  type = string
  default = "eu-central-1"
}
variable "instance_type" {
  type = string
  default = "t2.micro"
}
variable "sg-name" {
  type = string
  default = "jenkins-sg"
}