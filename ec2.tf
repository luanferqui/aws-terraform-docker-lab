data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

resource "aws_instance" "servidor_web" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"

  subnet_id              = aws_subnet.subnet_publica.id
  vpc_security_group_ids = [aws_security_group.allow_web_ssh.id]

  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  key_name = "chave-site-prod"

  tags = {
    Name = "Servidor-Luan-Automatio"
  }
}

output "ip_do_servidor" {
  value = aws_instance.servidor_web.public_ip
}

output "ecr_url" {
  value = aws_ecr_repository.meu_app_repo.repository_url
}