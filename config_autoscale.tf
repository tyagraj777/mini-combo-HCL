#Task: Create an auto-scaling group.

resource "aws_launch_configuration" "app" {
  name          = "app-lc"
  image_id      = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "app_asg" {
  launch_configuration = aws_launch_configuration.app.name
  min_size             = 1
  max_size             = 5
  vpc_zone_identifier  = ["subnet-12345678"]
}
