provider "proxmox" {
  pm_parallel=1
  pm_tls_insecure=true 
  pm_api_url=var.pm_api_url
  pm_password=var.pm_password
  pm_user=var.pm_user
  pm_log_enable = true
  pm_log_file = "terraform-plugin-proxmox.log"
  pm_log_levels = {
    _default = "debug"
    _capturelog = ""
  }
}