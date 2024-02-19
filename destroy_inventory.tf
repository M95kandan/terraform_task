resource "null_resource" "cleanUpInventory"{

       
        provisioner = "local-exec" {
         when = destroy
        command = "rm -f inventory"

}

}
