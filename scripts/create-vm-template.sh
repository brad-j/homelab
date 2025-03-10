#!/usr/bin/env bash

clear
printf "Enter url for cloud image iso: \n" ISO_URL
read ISO_URL

printf "Downloading: $ISO_URL \n\n"

wget "$ISO_URL"

template_name_from_url=$(basename "$ISO_URL")

printf "Next we need to resize the disk. Enter the size of the disk in gigabytes. Example: 256G. (Default is 32G) \n" DISK_SIZE
read DISK_SIZE

disk_size=${DISK_SIZE:="32G"}

qemu-img resize $template_name_from_url $disk_size

printf "Enter template name. This is the name shown in Proxmox next to the VM id. (Default is the image name) \n" TEMPLATE_NAME
read TEMPLATE_NAME

template_name_no_extension="${template_name_from_url%.*}"

printf "Enter VM id (number) \n" VMID
read VMID

printf "How much memory for the VM in Megabytes? (Default is 1024 MB) \n" MEMORY
read MEMORY

printf "How many CPU cores for the VM? (Default is 1 core) \n" CORES
read CORES

printf "Which network bridge should it use? (Default is vmbr0) \n" BRIDGE
read BRIDGE

printf "\n"

printf "OPTIONS: \n"

name=${TEMPLATE_NAME:=template_name_no_extension}
vmid=${VMID:="5001"}
memory=${MEMORY:="1024"}
cores=${CORES:="1"}
bridge=${BRIDGE:="vmbr0"}

printf "%s\n" "Template Name: ${name}" "VM id: ${vmid}" "Memory: ${memory}" "CPU Cores: ${cores}" "Network Bridge: ${bridge}"

printf "\n"

read -e -p "Are all of the optins correct? (Y/n)" confirmation
confirmation=${confirmation:-Y}

if [[ "$confirmation" =~ ^([yY][eE][sS]|[yY])$ ]]; then
  echo "Confirmed. Proceeding..."
  qm create $vmid --name "$name" --ostype l26 \
      --memory "$memory" \
      --agent 1 \
      --bios ovmf --machine q35 --efidisk0 local-zfs:0,pre-enrolled-keys=0 \
      --cpu host --socket 1 --cores "$cores" \
      --vga serial0 --serial0 socket  \
      --net0 virtio,bridge="$bridge"
elif [[ "$confirmation" =~ ^([nN][oO]|[nN])$ ]]; then
  echo "VM creation cancelled."
else
  echo "Invalid input. Please enter y/yes or n/no."
fi
