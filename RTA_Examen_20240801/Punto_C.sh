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
cd file/
echo "CPU Modelo: $(cat /proc/cpuinfo | grep 'model name' | head -n1 | awk -F ':' '{print $2}' | xargs) Frecuencia: $(cat /proc/cpuinfo | grep 'cpu MHz' | head -n1 | awk -F ':' '{printf "%.2fGHz", $2/1000}' | xargs)" > info.txt
cd ..
sudo apt install docker-compose
docker-compose up

