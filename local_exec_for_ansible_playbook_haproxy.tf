resource "null_resource" "playbook-haproxy" {
        depends_on = [aws_instance.haproxy]
        triggers = {

        RunBackendPlaybook = timestamp()


}


 provisioner "local-exec" {

        command = "sleep 30 && ansible-playbook haproxy.yml"

}

}
