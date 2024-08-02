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
mkdir tasks
cd tasks/
vim main.yml
cd ..
mkdir Sudoers_Villalba
cd Sudoers_Villalba/
mkdir tasks
cd tasks/
vim main.yml
cd ..
mkdir Instala-tools_VIllalba
cd Instala-tools_VIllalba/
mkdir tasks
cd tasks/
vim main.yml
cd ..
cd ..
vim playbook.yml
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
 

