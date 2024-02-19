resource "null_resourece" "cleanUpInventory"{

       
        provisioner = "local-exec" {
         when = destroy
        command = "rm -f inventory"

}

}
