resource "null_resourece" "cleanUpInventory"{

        when = destroy
        provisioner = "local-exec" {

        command = "rm -f inventory"

}

}
