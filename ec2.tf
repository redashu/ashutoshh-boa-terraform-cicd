resource "aws_instance" "example" {
  ami           = "${var.my-os-image}"
  instance_type = var.machine_size
  key_name = var.private_key_name
  # adding security group to ec2 vm 
  vpc_security_group_ids = [aws_security_group.ashu_sec-groups.id]

  tags = {
    Name = var.vm_name
  }
}