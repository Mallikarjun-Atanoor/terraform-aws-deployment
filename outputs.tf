output "control_plane_1_public_ip" {
  value = module.control_plane_1.public_ip
}

output "control_plane_2_public_ip" {
  value = module.control_plane_2.public_ip
}

output "control_plane_3_public_ip" {
  value = module.control_plane_3.public_ip
}

output "worker_1_public_ip" {
  value = module.worker_1.public_ip
}

output "worker_2_public_ip" {
  value = module.worker_2.public_ip
}

output "nginx_1_public_ip" {
  value = module.nginx_1.public_ip
}

output "nginx_2_public_ip" {
  value = module.nginx_2.public_ip
}