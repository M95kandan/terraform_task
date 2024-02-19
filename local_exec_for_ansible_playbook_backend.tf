
resource "null_resource" "playbook-backend" {
        depends_on = [aws_instance.backend]
        triggers = {

        RunBackendPlaybook = timestamp()


}


 provisioner "local-exec" {

        command = "sleep 30 && ansible-playbook backend.yml"

}

}
