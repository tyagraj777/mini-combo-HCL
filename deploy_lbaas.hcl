#Task: Deploy a load balancer for web instances.

resource "aws_lb" "app_lb" {
  name               = "app-loadbalancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["sg-12345678"]
  subnets            = ["subnet-12345678", "subnet-87654321"]
}
