output "alb_dns_name" {
  description = "The DNS name of the ALB"
  value       = aws_lb.app_alb.dns_name
}

output "ecs_cluster_name" {
  description = "The name of the ECS cluster"
  value       = aws_ecs_cluster.app_cluster.name
}