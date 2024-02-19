resource "null_resource" "ansible_inventory" {
  triggers = {
    ansibleWebPlaybook = timestamp()
  }

  provisioner "local-exec" {
    command = <<-EOT
      echo "[backend]" > inventory
      echo "${join("\n", aws_instance.backend[*].public_ip)}" >> inventory
      echo "[haproxy]" >> inventory
      echo "${join("\n", aws_instance.haproxy[*].public_ip)}" >> inventory
    EOT
  }
}

