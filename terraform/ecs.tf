resource "aws_ecs_cluster" "app_cluster" {
  name = "app-cluster"
}

resource "aws_ecs_service" "app_service" {
  name            = "app-service"
  cluster         = aws_ecs_cluster.app_cluster.id
  desired_count   = 2
  launch_type     = "FARGATE"
  task_definition = aws_ecs_task_definition.app_task_definition.arn

  network_configuration {
    subnets         = module.vpc.private_subnets
    security_groups = [aws_security_group.app_sg.id]
  }
}