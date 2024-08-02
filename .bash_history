sudo fdisk -l
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
pwd
ll
./UTN-FRA_SO_Examenes/202408/script_Precondicion.sh
sudo  ~/.bashrc  && history -a
source ~/.bashrc
sudo fdisk /dev/sdc
pvcreate /dev/sdc1 
sudo pvcreate /dev/sdc1 
sudo vgcreate vg_temp /dev/sdc1
lvcreate -l +100%FREE vg_temp -n lv_swap
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo lvs
sudo mkswap /dev/mapper/vg_temp-lv_swap 
free -h
sudo swapon /dev/mapper/vg_temp-lv_swap 
free -h
sudo swapon /dev/sdc2
sudo fdisk /dev/sdd
sudo fdisk /dev/sde
sudo pvcreate /dev/sdd1
sudo fdisk -l
sudo pvcreate /dev/sde1
sudo vgcreate vg_datos /dev/sdd1 /dev/sde1
sudo lvcreate -L +1.5G vg_datos -n lv_multimedia
sudo lvcreate -L +10M vg_datos -n lv_docker
free -h
sudo lvs
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_multimedia 
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
ll
cd ..
ll
pwd
cd ..
ll
sudo mkdir /Multimedia/
ll
sudo mount /dev/mapper/vg_datos-lv_multimedia /Multimedia/
free -h
sudo lsblk -f
sudo mkswap /dev/sdc2
sudo mkswapon /dev/sdc2
sudo swapon /dev/sdc2
sudo lsblk -f
free -h
sudo systemctl restart docker
sudo systemctl status docker
pwd
ll
cd /var/lib/docker
cd var/lib/docker
cd var
ll
cd lib
ll
cd docker/
sudo cd docker
cd .. 
cd ..
su - avillalba
pwd
logout
pwd
sudo lsblk -f
free -h
sudo lvs
df -h
sudo mount /dev/mapper/vg_datos-lv_multimedia /Multimedia/
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo swapon /dev/sdc2
sudo swapon /dev/mapper/vg_temp-lv_swap 
sudo lsblk -f
sudo cat <<FIN>> /etc/fstab
UUID=c1ea31e6-ddf3-4d6d-9dc9-d74aa7e3b0dc /var/lib/docker ext4 defaults 0 0
FIN

pwd
ls
cd RTA_Examen_20240801/
ls
cat <<FIN>> Punto_A.sh
sudo fdisk /dev/sdc
pvcreate /dev/sdc1 
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

ls
vim Punto_A.sh
su - avillalba
cd ..
sudo su
pwd
ll
cd RTA_Examen_20240801/
vim Punto_A.sh
cd ..
cd UTN-FRA_SO_Examenes/
ll
cd 202408/bash_script/
ll
vim Lista_URL.txt 
vim check_URL.sh 
cd ..
ll
cd ..
ll
cd var
ll
cd ..
cd dev
ll
cd ..
ll
cd lin
cd lib
ll
cd ..
ll
su - avillalba
cd home/
ll
cd avillalba/
ll
vim .bash_history 
cd UTN-FRA_SO_Examenes/
ll
cd 202408/
ll
cd bash_script/
ll
cd ..
vim script_Precondicion.sh 
cd bash_script/
vim check_URL.sh 
ll
vim Lista_URL.txt 
vim check_URL.sh 
sudo cp check_URL.sh /usr/local/bin/villalba_check_URL.sh
cd ..
ll
cd usr/local/bin/
ll
vim villalba_check_URL.sh 
sudo chmod +x /usr/local/bin/villalba_check_URL.sh
villalba_check_URL.sh UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt
ll
villalba_check_URL.sh ./UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt
vim villalba_check_URL.sh 
pwd
ll
cd .
ll
cd ..
ll
cd usr/local/bin/
ll
sudo chmod 755 villalba_check_URL.sh 
cd ..
ll
cd tmp/
ll
cd ..
ll
cd usr/local/bin/
ll
./villalba_check_URL.sh home/avillalba/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt
./villalba_check_URL.sh /home/avillalba/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt
cd /tmp/
ll
cd ..
ll
cd temp/
ll
cd head-check/
ll
tree
cd ..
ll
rm -r "temp"
sudo rm -r "temp"
ll
cd usr/local/bin/
ll
vim villalba_check_URL.sh 
sudo remove villalba_check_URL.sh 
ll
sudo rm villalba_check_URL.sh 
ll
cd /home/
ll
cd avillalba/
ll
cd UTN-FRA_SO_Examenes/202408/
ll
cd bash_script/
ll
vim check_URL.sh 
sudo cp /usr/local/bin/villalba_check_URL.sh
sudo cp check_URL.sh /usr/local/bin/villalba_check_URL.sh
cd /usr/local/bin/
ll
sudo chmod -x /usr/local/bin/villalba_check_URL.sh 
sudo chmod 755 villalba_check_URL.sh 
./villalba_check_URL.sh /home/avillalba/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt
cd /tmp/
ll
cd head-check/
ll
tree
cd ok
vim google.log 
cd..
cd ..
ll
sudo rm head-check
sudo rm -r head-check
ll}
ll
cd ..
ll
/home/avillalba/RTA_Examen_20240801/
cd /home/avillalba/RTA_Examen_20240801/
ll
cat <<FIN>> Punto_B.sh
vim check_URL.sh 
sudo cp check_URL.sh /usr/local/bin/villalba_check_URL.sh
sudo chmod +x /usr/local/bin/villalba_check_URL.sh
sudo chmod 755 villalba_check_URL.sh 
./villalba_check_URL.sh /home/avillalba/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt
FIN

vim Punto_B.sh 
sudo fdisk -l
free -h
sudo lsblk -f
ll
cd UTN-FRA_SO_Examenes/202408/
ll
cd docker/
ll
cd web/
ll
vim index.html 
cd ..
docker login -u axvillalba
vim dockerfil
ll
sudo rm dockerfile
ll
vim dockerfile
cd web
ll
cd sc
cd scripts/
ll
cd ..
ll
cd file/
ll
cd ..
ll
vim index.html 
cd ..
ll
vim dockerfile 
docker build -t axvillalba/web3_RI2024-villalba:latest .
sudo usermod -G docker avillalba
docker build -t axvillalba/web3_RI2024-villalba:latest .
su - avillalba
docker build -t axvillalba/web3_RI2024-villalba:latest .
ll
cd .docker/
ll
cd ..
cd UTN-FRA_SO_Examenes/202408/docker/
ll
docker build -t axvillalba/web3_RI2024-villalba:latest .
docker build -t axvillalba/web3_ri2024-villalba:latest .
vim dockerfile 
docker build -t axvillalba/web3_ri2024-villalba:latest .
sudo fdisk -l
pwd
visudo
sudo su
logout
sudo su 
exit
sudo fdisk -l
sudo fdisk /dev/sde
sudo fdisk -l
free -h
sudo lvs
sudo usermod -aG sudo avillalba
sudo fdisk -l
sudo fdisk /dev/sdc
sudo pvcreate /dev/sdc3
sudo fdisk /dev/sde
sudo pvcreate /dev/sde2
sudo vgextend vg_datos /dev/sde2 /dev/sdc3
sudo lvextend -L +700M /dev/mapper/vg_datos-lv_docker 
sudo resize2fs /dev/mapper/vg_datos-lv_docker 
cd UTN-FRA_SO_Examenes/202408/docker/
docker build -t axvillalba/web3_ri2024-villalba:latest .
docker image list
docker push axvillalba/web3_ri2002
docker push axvillalba/web3_ri2024-villaba:latest
docker push axvillalba/web3_ri2024-villalba:latest
ll
vim docker-compose.yml 
lscpu
/sys/devices/system/cpu
cd /sys/devices/system/cpu
ll
cd UTN-FRA_SO_Examenes/202408/docker/
su - avillalba
cd UTN-FRA_SO_Examenes/202408/docker/
ll
cd web
ll
cd file/
ll
vim info.txt 
cat /proc/cpuinfo 
cat /proc/cpuinfo | grep name | awk -F ':' '{print$2}'
cat /proc/cpuinfo | grep name | tail -n1 | awk -F ':' '{print$2}'
cat /proc/cpuinfo | grep MHz | tail -n1 | awk -F ':' '{print$2}'
echo "CPU Modelo: " $(cat /proc/cpuinfo | grep name | tail -n1 | awk -F ':' '{print$2}')  "Frecuencia: " $(cat /proc/cpuinfo | grep MHz | tail -n1 | awk -F ':' '{print$2}') >> info.txt 
ll
vim info.txt 
echo "CPU Modelo: $(cat /proc/cpuinfo | grep 'model name' | head -n1 | awk -F ':' '{print $2}' | xargs) Frecuencia: $(cat /proc/cpuinfo | grep 'cpu MHz' | head -n1 | awk -F ':' '{printf "%.2fGHz", $2/1000}' | xargs)GHz" > web/file/info.txt
echo "CPU Modelo: $(cat /proc/cpuinfo | grep 'model name' | head -n1 | awk -F ':' '{print $2}' | xargs) Frecuencia: $(cat /proc/cpuinfo | grep 'cpu MHz' | head -n1 | awk -F ':' '{printf "%.2fGHz", $2/1000}' | xargs)GHz" > info.txt
vim info.txt 
echo "CPU Modelo: $(cat /proc/cpuinfo | grep 'model name' | head -n1 | awk -F ':' '{print $2}' | xargs) Frecuencia: $(cat /proc/cpuinfo | grep 'cpu MHz' | head -n1 | awk -F ':' '{printf "%.2fGHz", $2/1000}' | xargs)" > info.txt
vim info.txt 
cd ..
ll
docker-compose up
sudo apt install docker-compose
docker-compose up
vim docker-compose.yml 
docker-compose up
sudo su
su - vagrant
pwd
cd UTN-FRA_SO_Examenes/202408/docker/
docker-compose up
ll
cd RTA_Examen_20240801/
echo <<FIN>> Punto_C.sh 
docker login -u axvillalba
vim dockerfile
vim index.html 
docker build -t axvillalba/web3_RI2024-villalba:latest .
docker build -t axvillalba/web3_ri2024-villalba:latest .
sudo usermod -G docker avillalba
sudo fdisk /dev/sde
sudo fdisk /dev/sdc
sudo pvcreate /dev/sdc3
sudo pvcreate /dev/sde2
sudo vgextend vg_datos /dev/sde2 /dev/sdc3
sudo lvextend -L +700M /dev/mapper/vg_datos-lv_docker 
sudo resize2fs /dev/mapper/vg_datos-lv_docker 
cd UTN-FRA_SO_Examenes/202408/docker/
docker build -t axvillalba/web3_ri2024-villalba:latest .
docker image list
docker push axvillalba/web3_ri2024-villalba:latest
vim docker-compose.yml 
echo "CPU Modelo: $(cat /proc/cpuinfo | grep 'model name' | head -n1 | awk -F ':' '{print $2}' | xargs) Frecuencia: $(cat /proc/cpuinfo | grep 'cpu MHz' | head -n1 | awk -F ':' '{printf "%.2fGHz", $2/1000}' | xargs)" > info.txt
cd file/
sudo apt install docker-compose
docker-compose up
FIN

vim Punto_C.sh 
ll
vim Punto_A.sh 
vim Punto_B.sh 
vim Punto_C.sh 
cat <<FIN>> Punto_c.sh
 docker login -u axvillalba
> vim dockerfile
> vim index.html
> docker build -t axvillalba/web3_RI2024-villalba:latest .
> docker build -t axvillalba/web3_ri2024-villalba:latest .
> sudo usermod -G docker avillalba
> sudo fdisk /dev/sde
> sudo fdisk /dev/sdc
> sudo pvcreate /dev/sdc3
> sudo pvcreate /dev/sde2
> sudo vgextend vg_datos /dev/sde2 /dev/sdc3
> sudo lvextend -L +700M /dev/mapper/vg_datos-lv_docker
> sudo resize2fs /dev/mapper/vg_datos-lv_docker
> cd UTN-FRA_SO_Examenes/202408/docker/
> docker build -t axvillalba/web3_ri2024-villalba:latest .
> docker image list
> docker push axvillalba/web3_ri2024-villalba:latest
> vim docker-compose.yml
> echo "CPU Modelo: $(cat /proc/cpuinfo | grep 'model name' | head -n1 | awk -F ':' '{print $2}' | xargs) Frecuencia: $(cat /proc/cpuinfo | grep 'cpu MHz' | head -n1 | awk -F ':' '{printf "%.2fGHz", $2/1000}' | xargs)" > info.txt
> cd file/
> sudo apt install docker-compose
> docker-compose up

FIN

vim Punto_C.sh
vim Punto_B.sh 
vim Punto_C.sh 
ll
vim Punto_c.sh 
sudo rm Punto_c.sh
ll
cd ..
cd UTN-FRA_SO_Examenes/
ll
cd 202408/ansible/
ll
cd roles
ll
cd 2
cd 2PRecuperatorio/
ll
cd tasks/
ll
vim main.yml 
cd
ssh-keygen
ll
cd .ssh
ll
cat id_rsa.pub >> authorized_keys
cd 202408/ansible/
cd ..
cd UTN-FRA_SO_Examenes/202
cd UTN-FRA_SO_Examenes/202408/ansible/
ll
cd roles
ll
cd 2PRecuperatorio/
ll
cd tasks/
ll
vim main.yml 
cd ..
ll
sudo mkdir /tmp/alumno/
ll
cd 
ll
cd ..
ll
cd tmp
ll
cd alumno
vim datos.txt
sudo chmod datos.txt 755
sudo chmod 755 datos.txt
ll
cd ..
vim datos.txt
ll
sudo rm datos.txt 
cd alumno/
vim datos.txt
ll
cd
ll
cd UTN-FRA_SO_Examenes/202408/ansible/
ll
cd roles/
ll
cd 2PRecuperatorio/
ll
mkdir templates
cd templates/
vim datos.j2
cd ..
cd vars/
ll
vim main.yml 
cat /proc/cpuinfo 
> echo "Cores: $(cat /proc/cpuinfo | grep 'cpu cores' | head -n1 | awk -F ':' '{print$2)" > main.yml
> echo "Cores: $(cat /proc/cpuinfo | grep 'cpu cores' | head -n1 | awk -F ':' '{print$2)" >> main.yml
> echo "Cores: $(cat /proc/cpuinfo | grep 'cpu cores' | head -n1 | awk -F ':' '{print $2)" >> main.yml
> echo "Cores: $(cat /proc/cpuinfo | grep 'cpu cores' | head -n1 | awk -F ':' '{print $2)" >> main.yml
vim main.yml 
cd .. 
cd templates/
vim datos.j2 
cd .. 
cd tasks/
vim main.yml 
cd ..
ll
mkdir Alta_Usuario_Villalba
cd Alta_Usuario_Villalba/
mkdir tasks
cd tasks/
vim main.yml
cd ..
mkdir Sudoers_Villalba
cd Sudoers_Villalba/
mkdir tasks
cd tasks/
main.yml
vim main.yml
cd ..
mkdir Instala-tools_VIllalba/tasks
mkdir Instala-tools_VIllalba
cd Instala-tools_VIllalba/
mkdir tasks
cd tasks/
vim main.yml
cd ..
ll
2PRecuperatorio/tasks/
cd 2PRecuperatorio/tasks/
vim main.yml 
cd ..
cd Alta_Usuario_Villalba/tasks/
vim main.yml 
cd ..
cd Sudoers_Villalba/tasks/
vim main.yml 
cd ..
ll
vim playbook.yml 
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
ll
cd roles
ll
cd ..
ll
vim playbook.yml 
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
vim playbook.yml 
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
ll
cd roles/Alta_Usuario_Villalba/
cd tasks/
vim main.yml 
cd ..
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
cd roles/Sudoers_Villalba/tasks/
vim main.yml 
cd ..
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
cd roles/Alta_Usuario_Villalba/tasks/
vim main.yml 
cd ..
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
cd roles/Instala-tools_VIllalba/tasks/
vim main.yml 
cd ..
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
cd
cd /tmp/
ll
cd alumno/
ll
vim datos.txt 
cd
pwd
ll
cd RTA_Examen_20240801/
ll
cat <<FIN >> Punto_D.sh 
ssh-keygen
cd .ssh
cat id_rsa.pub >> authorized_keys
cd 202408/ansible/
cd roles
cd 2PRecuperatorio/
mkdir templates
cd templates/
vim datos.j2
cd .. 
cd tasks/
vim main.yml 
cd ..

mkdir Alta_Usuario_Villalba
cd Alta_Usuario_Villalba/
FIN

vim Punto_D.sh
history
vim Punto_D.sh
logout
ll
mkdir backup
cp -r RTA_Examen_20240801 backup/
ll
cd backup/
ll
cd RTA_Examen_20240801/
ll
vim Punto_C.sh 
cd ..
cp -r UTN-FRA_SO_Examenes/202408/ backup/
ll
history-a
history -a
ll
cp .bash_history backup/
cd backup/
ll
git config --global user.name axvillalba
git config --global user.email axvillalba20@gmail.com
cd ..
git clone https://github.com/axvillalba/UTNFRA_SO_Recu_Integral_Villalba.git
cd UTNFRA_SO_Recu_Integral_Villalba/
ll
cp -r ../backup/ .
ll
cd ..
ll
cd backup/
ll
cd ..
cd UTNFRA_SO_Recu_Integral_Villalba/
cp -r ../backup/* .
ll
cd .git/
ll
d ..
cd ..
git add .
git status
git commit -m "Finalizacion del RecuGlobal"
git push origin main
ll
sudo rm backup/
sudo rm backup
sudo rm -r backup
ll
cd ..
ll
