output "kubemaster_ips" {
  value = aws_instance.kubemaster.*.public_ip
  description = "Public IPs of the Kubernetes master nodes"
}

output "kubeworker_ips" {
  value = aws_instance.kubeworker.*.public_ip
  description = "Public IPs of the Kubernetes worker nodes"
}