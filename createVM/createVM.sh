#!/bin/bash
echo "Creacion de la maquina virtual"
VBoxManage createvm --name "Mi_Maquina" --ostype "Ubuntu_64" --register
echo "Presione ENTER para continuar..."
read
echo "Asignacion de CPUs"
echo "Sentencia a ejecutar: VBoxManage modifyvm Mi_Maquina --cpus 2"
VBoxManage modifyvm "Mi_Maquina" --cpus 2
echo "Presione ENTER para continuar..."
read
echo "Asignacion de memoria"
echo "Sentencia a ejecutar: VBoxManage modifyvm Mi_Maquina --memory 2048"
VBoxManage modifyvm "Mi_Maquina" --memory 2048
echo "Presione ENTER para continuar..."
read
echo "Creacion de VIRTUAL HARD DISK y asignacion de controlador SATA"
echo "Sentencias a ejecutar:
VBoxManage createhd --filename Mi_Maquina.vdi --size 10240
VBoxManage storagectl Mi_Maquina --name SATA Controller --add sata
VBoxManage storageattach Mi_Maquina --storagectl SATA Controller --port 0 --device 0 --type hdd --medium Mi_Maquina.vdi
"
VBoxManage createhd --filename "Mi_Maquina.vdi" --size 10240
VBoxManage storagectl "Mi_Maquina" --name "SATA Controller" --add sata
VBoxManage storageattach "Mi_Maquina" --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium "Mi_Maquina.vdi"
echo "Presione ENTER para continuar..."
read
echo "Creacion y asignacion de controlador IDE"
echo "Sentencias a ejecutar:
VBoxManage storagectl Mi_Maquina --name IDE Controller --add ide
VBoxManage storageattach Mi_Maquina --storagectl IDE Controller --port 0 --device 0 --type dvddrive --medium emptydrive"
VBoxManage storagectl "Mi_Maquina" --name "IDE Controller" --add ide
VBoxManage storageattach "Mi_Maquina" --storagectl "IDE Controller" --port 0 --device 0 --type dvddrive --medium emptydrive
echo "Presione ENTER para continuar..."
read
echo "Configuracion de la maquina virtual"
VBoxManage showvminfo "Mi_Maquina"
echo "Presione ENTER para continuar..."
read
