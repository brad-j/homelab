#!/usr/bin/env bash

# Colors
BOLD_CYAN="\e[1;36m"
NC='\033[0m'

clear
printf "Enter url for cloud image iso: \n" iso_url
read iso_url 

# printf "${BOLD_CYAN}Downloading${NC} $iso_url \n\n"

# wget "$iso_url"

printf "Next we need to resize the disk. Enter the size of the disk in gigabytes. (Default is 32 GB) \n" disk_size
read disk_size

printf "Enter template name. This is the name shown in Proxmox next to the VM id. (Default is the image name) \n" template_name
read template_name

template_name_from_url=$(basename "$iso_url")
template_name_no_extension="${template_name_from_url%.*}"

# printf "${BOLD_CYAN}Image name:${NC} %s\n" "$template_name_no_extension"

printf "Enter VM id (number) \n" vmid
read vmid

# printf "VM id: $vmid"

printf "How much memory for the VM in Megabytes? (Default is 1024 MB) \n" memory
read memory

printf "How many CPU cores for the VM? (Default is 1 core) \n" cores
read cores

printf "Which network bridge should it use? (Default is vmbr0) \n" bridge
read bridge

printf "\n"

printf "If all of the choices look correct, press enter/return to create the VM. (CTRL + C to start over) \n" confirmation

# Default values
default_template_name=${template_name_no_extension}
default_vmid=5001
default_memory=1024
default_cores=1
default_bridge="vmbr0"

name="${1:-$default_template_name}"
vmid="${2:-$default_vmid}"
memory="${3:-$default_memory}"
cores="${4:-$default_cores}"
bridge="${5:-$default_bridge}"

printf "%s\n" "Disk Size: ${disk_size}" "Template Name: ${template_name}" "VM id: ${vmid}" "Memory: ${memory}" "CPU Cores: ${cores}" "Network Bridge: ${bridge}"

qm create $vmid --name "$name" --ostype l26 \
    --memory "$memory" \
    --agent 1 \
    --bios ovmf --machine q35 --efidisk0 local-zfs:0,pre-enrolled-keys=0 \
    --cpu host --socket 1 --cores "$cores" \
    --vga serial0 --serial0 socket  \
    --net0 virtio,bridge="$bridge"
