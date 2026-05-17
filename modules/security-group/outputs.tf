output "controlplane_sg_id" {
  value = aws_security_group.controlplane.id
}

output "worker_sg_id" {
  value = aws_security_group.worker.id
}

output "nginx_sg_id" {
  value = aws_security_group.nginx.id
}