## This configuration was generated by terraform-provider-oci

resource oci_database_db_system tfdbflex {
  availability_domain = "XXIT:EU-FRANKFURT-1-AD-1"
  #backup_network_nsg_ids = <<Optional value not found in discovery>>
  #backup_subnet_id = oci_core_subnet.subnet_backup.id
  #cluster_name = <<Optional value not found in discovery>>
  compartment_id          = var.compartment_ocid
  cpu_core_count          = "3"
  data_storage_percentage = "80"
  data_storage_size_in_gb = "512"
  database_edition        = "ENTERPRISE_EDITION"
  db_home {
    #create_async = <<Optional value not found in discovery>>
    database {
      admin_password = "Pass4-Lab1#" #Required attribute not found in discovery, placeholder value set to avoid plan failure
      #backup_id = <<Optional value not found in discovery>>
      #backup_tde_password = <<Optional value not found in discovery>>
      character_set = "AL32UTF8"
      #database_id = <<Optional value not found in discovery>>
      #database_software_image_id = <<Optional value not found in discovery>>
      db_backup_config {
        auto_backup_enabled = "false"
        auto_backup_window  = ""
        #recovery_window_in_days = <<Optional value not found in discovery>>
      }
      #db_domain = <<Optional value not found in discovery>>
      db_name     = "My19cUAT"
      db_workload = "OLTP"
      defined_tags = {
      }
      freeform_tags = {
      }
      #kms_key_id = <<Optional value not found in discovery>>
      #kms_key_version_id = <<Optional value not found in discovery>>
      ncharacter_set = "AL16UTF16"
      pdb_name       = "UATPDB"
      tde_wallet_password = "Pass4-Lab1#"
      #time_stamp_for_point_in_time_recovery = <<Optional value not found in discovery>>
      #vault_id = <<Optional value not found in discovery>>
    }
    #database_software_image_id = <<Optional value not found in discovery>>
    db_version = "19.15.0.0"
    #defined_tags = <<Optional value not found in discovery>>
    display_name = "dbhomeflex"
    freeform_tags = {
    }
  }
  db_system_options {
    storage_management = "LVM"
  }
  defined_tags = {
  }
  disk_redundancy = "HIGH"
  display_name    = "MyDBCSVMFlexUAT"
  domain          = oci_core_subnet.subnet.subnet_domain_name
  fault_domains = [
    "FAULT-DOMAIN-3",
  ]
  freeform_tags = {
  }
  hostname = "dbcsflex"
  #kms_key_id = <<Optional value not found in discovery>>
  #kms_key_version_id = <<Optional value not found in discovery>>
  license_model = "BRING_YOUR_OWN_LICENSE"
  #maintenance_window_details = <<Optional value not found in discovery>>
  node_count = "1"
  #nsg_ids = <<Optional value not found in discovery>>
  #private_ip = <<Optional value not found in discovery>>
  reco_storage_size_in_gb = "256"
  shape                   = "VM.Standard.E4.Flex"
  source                  = "NONE"
  #source_db_system_id =
  #sparse_diskgroup = <<Optional value not found in discovery>>
  ssh_public_keys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCuNFajuSEudlrlzo6fKc67Kf8NHIHhNlF+xM4nXfrYcMMiRi8gym3XjbqEvpL9rj3LWalafMyKBfp+vI0xJtSQU8M7VBaVdMRQzN0sQnDfW61VvAvTJ797F7E1rMrvKMNjfSakJnK/GcVD3Im526ir+1H3wWcwg90IZ+vG/oKdYu3pB3IKEf+GJOKJnZtiCy9an/iUUWX6ONMdTNa/z9KIR0XzCK+zZ+i6HB5Nz4lXAnbJVgZyqA7ieCV44TRghqqOb8GQmzmqtlXG5Lo7tleylC+2c4X+2qbsIIOqs9f6U32S25XQtxrdBOcwnr3ilX0GfvxXj45UocXjNsYPcUSt ssh-key-2022-05-18",
  ]
  storage_volume_performance_mode = "HIGH_PERFORMANCE"
  subnet_id                       = oci_core_subnet.subnet.id
  time_zone                       = "UTC"

  # Required attributes that were not found in discovery have been added to lifecycle ignore_changes
  # This is done to avoid terraform plan failure for the existing infrastructure
  lifecycle {
    ignore_changes = [db_home[0].database[0].admin_password]
  }

}
