#Task: Attach EBS volumes to an instance.

resource "aws_ebs_volume" "storage" {
  availability_zone = "us-west-2a"
  size              = 20
  tags = {
    Name = "EBSVolume"
  }
}

resource "aws_volume_attachment" "web_attachment" {
  device_name = "/dev/xvdf"
  volume_id   = aws_ebs_volume.storage.id
  instance_id = aws_instance.web.id
}
