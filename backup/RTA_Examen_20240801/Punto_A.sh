sudo fdisk /dev/sdc 
sudo pvcreate /dev/sdc1 
sudo vgcreate vg_temp /dev/sdc1
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo mkswap /dev/mapper/vg_temp-lv_swap 
sudo swapon /dev/mapper/vg_temp-lv_swap 
sudo fdisk /dev/sdd
sudo fdisk /dev/sde
sudo pvcreate /dev/sdd1
sudo pvcreate /dev/sde1
sudo vgcreate vg_datos /dev/sdd1 /dev/sde1
sudo lvcreate -L +1.5G vg_datos -n lv_multimedia
sudo lvcreate -L +10M vg_datos -n lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_multimedia 
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo mkdir /Multimedia/
sudo mount /dev/mapper/vg_datos-lv_multimedia /Multimedia/
sudo mkswap /dev/sdc2
sudo swapon /dev/sdc2
sudo cat <<FIN>> /etc/fstab
UUID=c1ea31e6-ddf3-4d6d-9dc9-d74aa7e3b0dc /var/lib/docker ext4 defaults 0 0
FIN
sudo cat <<FIN>> /etc/fstab
UUID=226fb7a7-f2e6-4846-8c62-0216a0fc0212 /Multimedia ext4 defaults 0 0
FIN
