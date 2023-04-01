data "local_file" "private_key" {
  filename = "key.pem"
}

# Generate inventory file
resource "local_file" "inventory" {
  filename = "./inventory/hosts.ini"
  content = <<EOF
[webserver]
${var.ec2_public_ip}
EOF
}

resource "null_resource" "ansible"{
  provisioner "local-exec" {
    command = <<-EOT
export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook -i inventory/hosts.ini playbooks/main.yml -u ubuntu --private-key key.pem
    EOT
  }
}

# resource "null_resource" "ssh_connection"{

#     connection {
#         host        = var.ec2_public_ip
#         type        = "ssh"
#         user        = "ubuntu" #Depends on the AMI
#         private_key = data.local_file.private_key.content
#     }

#   provisioner "file" {
#     source      = "scripts/"
#     destination = "/home/ubuntu"

#   }
#   //create local provisoner to run this
#   //ansible-playbook -i inventory/hosts.ini playbook.yml -u ubuntu --private-key key.pem -vvv
#   provisioner "remote-exec" {
#     inline = [
#       "echo bienvenue batard"
#       # "chmod +x /home/ubuntu/install_cuda_t4.sh",
#       # "chmod +x /home/ubuntu/install.sh",
#       # "chmod +x /home/ubuntu/install_sb_db.sh",
#       # "touch /var/log/startup.log",
#       # "chmod 777 /var/log/startup.log",
#       # "bash /home/ubuntu/install_sb_db.sh"
#       #"bash /tmp/install_cuda_t4.sh",
#       #"bash /tmp/install.sh"
#     ]
#     on_failure = continue

#   }
# }