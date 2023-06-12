resource "aws_instance" "jenkins-server" {
  ami = data.aws_ami.amzlinux2.id
  instance_type = var.instance-type
  vpc_security_group_ids = [ aws_security_group.public-ec2example.id ]
  key_name = "ubuntu_srv"
  user_data = <<-EOF
  #!/bin/bash
  sudo yum update -y
  sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
  sudo  sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
  sudo yum upgrade -y
  sudo amazon-linux-extras install java-openjdk11 -y
  sudo yum install jenkins -y
  sudo systemctl enable jenkins
  sudo systemctl start jenkins
  EOF
  tags = {
    Name = local.ec2-tags.name
  }
}