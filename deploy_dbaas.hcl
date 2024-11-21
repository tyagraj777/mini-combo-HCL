#Task: Set up an RDS instance.

resource "aws_db_instance" "mydb" {
  allocated_storage    = 20
  engine               = "mysql"
  instance_class       = "db.t2.micro"
  name                 = "mydatabase"
  username             = "admin"
  password             = "password123"
  parameter_group_name = "default.mysql5.7"
  publicly_accessible  = true
}
