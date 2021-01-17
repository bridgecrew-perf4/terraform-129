resource "proxmox_vm_qemu" "server-01" {
  
  count             = 1
  name              = "web-app-01"
  target_node       = "pve"

  clone             = "centos-minimal-template"

  os_type           = "centos"
  cores             = 2
  sockets           = "1"
  cpu               = "host"
  memory            = 1024
  scsihw            = "virtio-scsi-pci"
  bootdisk          = "scsi0"

  disk{
      id            = 0
      size          = 20
      type          = "scsi"
      storage       = "local-lvm"
      storage_type  = "lvm"
      iothread      = true
  }
  
  network{
      id            = 0
      model         = "virtio"
      bridge        = "vmbr0"
  }

  ssh_forward_ip    ="10.10.2.17"

  


}