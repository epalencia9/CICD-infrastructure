resource "aws_instance" "Docker-Terraform" {
  ami             = "ami-0df24e148fdb9f1d8"
  instance_type   = "t2.micro"
  key_name = "Natalierose"
  security_groups = ["default"]
  user_data = file("docker.sh")

  tags = {
    Name = "Docker-Terraform"
  }
}

resource "aws_instance" "Tomcat-server-terraform" {
  ami             = "ami-0df24e148fdb9f1d8"
  instance_type   = "t2.micro"
  key_name = "Natalierose"
  security_groups = ["default"]
  user_data = file("tomcat.sh")

  tags = {
    Name = "Tomcat-server-terraform"
  }
}
