#!/bin/bash
#-------------------------------------------------------------------------------
#Created by Dagoberto Araújo: dagoland7[at]gmail[dot]com
#-------------------------------------------------------------------------------
#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with this program. If not, see <http://www.gnu.org/licenses/>.
#-------------------------------------------------------------------------------
#
#### Sccript de instalação do MATE no Debian jessie ####

echo "Limpando a Sources.list da linha 1 a linha 20"

sed -i '1,20d' /etc/apt/sources.list | more

su -c "echo '#### Repósitório Debian jessie ####' >> /etc/apt/sources.list"
su -c "echo 'deb http://http.debian.net/debian/ jessie main contrib non-free' >> /etc/apt/sources.list"
su -c "echo 'deb http://sft.if.usp.br/debian-security/ jessie/updates main contrib non-free' >> /etc/apt/sources.list"
su -c "echo 'deb http://http.debian.net/debian/ jessie-updates main contrib non-free' >> /etc/apt/sources.list"
su -c "echo 'deb http://http.debian.net/debian/ jessie-backports main contrib non-free' >> /etc/apt/sources.list"

apt-get update

apt-get update; apt-get dist-upgrade -y --force-yes

#### Instalação dos diretórios do usuário: Documentos, Downloads, Música, Imagens, Vídeos, etc.

apt-get install xdg-user-dirs -y --force-yes

#### Instalação do Xorg

apt-get install xorg -y --force-yes

#### Instalação de MATE

apt-get install mate-desktop-environment-extra -y --force-yes

#### Instalação de pacotes extras para MATE

apt-get install mate-sensors-applet-nvidia -y --force-yes
apt-get install libcanberra-gtk-module -y --force-yes -y 
apt-get install mate-user-share -y --force-yes -y 
apt-get install sound-theme-freedesktop -y --force-yes
apt-get install caja-gksu -y --force-yes
apt-get install caja-image-converter -y --force-yes -y 
apt-get install caja-open-terminal -y --force-yes -y 
apt-get install caja-sendto -y --force-yes

#### Instalação de ferramentas de descompressão

apt-get install unzip -y --force-yes

#### Instalação e configuração de lightdm

apt-get install lightdm -y --force-yes

dpkg-reconfigure lightdm

#### Instalação do navegador Iceweasel

apt-get install iceweasel -y --force-yes

#### Reiniciando o sistema

shutdown -r now
