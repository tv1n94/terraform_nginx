resource "local_file" "AnsibleInventory" {
  content = templatefile("inventory.tpl",
  {
    ip = ah_cloud_server.example.ips.0.ip_address
  }
 )
 filename = "hosts"

 provisioner "local-exec" {
    command = "ssh adminroot@${ah_cloud_server.example.ips.0.ip_address} sudo apt update && ssh adminroot@${ah_cloud_server.example.ips.0.ip_address} sudo ln /bin/python3 /bin/python; sleep 5; ansible-playbook -u adminroot -i hosts provision.yml"
 }

}