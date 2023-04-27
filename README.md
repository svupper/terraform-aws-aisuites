# Description
This is a terraform project to deploy a stable-diffusion-web-ui and oobabooga/text-generation on a GPU AWS instance.
It uses ansible to provision the instance.

# Requirements
terraform
ansible
ansible-galaxy
python3

# Install
## Terraform
Download terraform from https://www.terraform.io/downloads.html
and put it in /usr/local/bin

## Ansible
sudo apt install ansible

## Ansible Galaxy
sudo apt install ansible-galaxy

## Python3
sudo apt install python3

## Create a virtualenv
python3 -m venv venv
source venv/bin/activate

## Install requirements
pip install -r requirements.txt
ansible-galaxy install -r requirements.yml

# Run

cd terraform

## Terraform
terraform init
terraform plan
terraform apply

# Usage
cd ..
## Open ssh connection
ssh -i <key-in-the-folder> -L 7860:localhost:7860 -L 7861:localhost:7861 ubuntu@<instance_ip>

navigate to http://localhost:7860/?__theme=dark and http://localhost:7861/?__theme=dark

## Terminate
cd terraform
terraform destroy

# Nvidia Error
if you get an error with nvidia-smi, try : sudo apt purge nvidia* libnvidia*
2 option: 
https://askubuntu.com/questions/1234567/nvidia-smi-command-not-found-after-upgrade-to-ubuntu-18-04

# Fix GPU passthrough
1/ Create a .sh file : nano /root/fix_gpu_pass.sh

#!/bin/bash
echo 1 > /sys/bus/pci/devices/0000\:0X\:00.0/remove
echo 1 > /sys/bus/pci/rescan

--> //Note Change "0000\:0X\:00.0" for your GPU PCI ID

2/ make it executable : chmod +x /root/fix_gpu_pass.sh

3/ Add this to your crontab so that it run after reboot :

crontab -e

add:

@reboot /root/fix_gpu_pass.sh

# TODO
- [ ] Create a docker image
- [ ] Create a docker-compose

# Thanks
- [oobabooga/text-generation-webui]() for the text generation web ui
- [AbdBarho/stable-diffusion-webui-docker]() for the docker image of stable-diffusion-web-ui
- https://github.com/camenduru for amazing google colab notebooks

