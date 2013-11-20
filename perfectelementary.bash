sudo add-apt-repository ppa:xorg-edgers/ppa
sudo apt-get update && sudo apt-get dist-upgrade

sudo apt-get install nvidia-current

#Install Ubuntu Restricted Extras
sudo apt-get install ubuntu-restricted-extras

#Enable all Startup Applications
cd /etc/xdg/autostart
sudo sed --in-place 's/NoDisplay=true/NoDisplay=false/g' *.desktop

#Install a Firewall Application
sudo apt-get install gufw

#Install 32-bit Libraries on 64Bit Version only!
sudo apt-get install ia32-libs

#Install Gimp
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt-get update && sudo apt-get install gimp

#Install Elementary OS extras
sudo apt-add-repository ppa:versable/elementary-update
sudo apt-get update

sudo apt-get install elementary-desktop elementary-tweaks
sudo apt-get install elementary-dark-theme elementary-plastico-theme elementary-whit-e-theme elementary-harvey-theme
sudo apt-get install elementary-elfaenza-icons elementary-nitrux-icons
sudo apt-get install elementary-plank-themes
sudo apt-get install wingpanel-slim indicator-synapse

#Install Apparmor 2.8
sudo add-apt-repository ppa:apparmor-upload/apparmor-2.8
sudo apt-get update && sudo apt-get dist-upgrade

Install Kernel 3.12 on 64 Bit

mkdir kernel
cd kernel

wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.12-saucy/linux-headers-3.12.0-031200-generic_3.12.0-031200.201311031935_amd64.deb

wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.12-saucy/linux-headers-3.12.0-031200_3.12.0-031200.201311031935_all.deb

wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.12-saucy/linux-image-3.12.0-031200-generic_3.12.0-031200.201311031935_amd64.deb

dpkg -i *.deb

cd ..
rm -rf kernel




