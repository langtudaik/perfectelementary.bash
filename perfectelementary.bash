#Download Elementary OS from here: 
#http://sourceforge.net/projects/elementaryos/files/stable/

#First you update your system
sudo apt-get update && sudo apt-get dist-upgrade

#Clean-up System
sudo apt-get purge midori-granite
sudo apt-get purge noise
sudo apt-get purge software-center
sudo apt-get purge scratch-text-editor
sudo apt-get autoremove

#Install gedit (Text Editor)
sudo apt-get install gedit gedit-plugins

#For fresh Nvidia Drivers
sudo add-apt-repository ppa:xorg-edgers/ppa
sudo apt-get update && sudo apt-get dist-upgrade

#For Nvidia Cards
sudo apt-get install nvidia-331

#For AMD/ATI Cards 
sudo apt-get install fglrx-installer


#Install Ubuntu Restricted Extras
sudo apt-get install ubuntu-restricted-extras

#Enable all Startup Applications
cd /etc/xdg/autostart
sudo sed --in-place 's/NoDisplay=true/NoDisplay=false/g' *.desktop

#Enable Movie DVD Support
sudo apt-get install libdvdread4
sudo /usr/share/doc/libdvdread4/install-css.sh

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


mkdir kernel
cd kernel

#Install Kernel 3.12 on 64 Bit
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.12-saucy/linux-headers-3.12.0-031200-generic_3.12.0-031200.201311031935_amd64.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.12-saucy/linux-headers-3.12.0-031200_3.12.0-031200.201311031935_all.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.12-saucy/linux-image-3.12.0-031200-generic_3.12.0-031200.201311031935_amd64.deb

#Install Kernel 3.12 on 32 Bit
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.12-saucy/linux-headers-3.12.0-031200-generic_3.12.0-031200.201311031935_i386.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.12-saucy/linux-headers-3.12.0-031200_3.12.0-031200.201311031935_all.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.12-saucy/linux-image-3.12.0-031200-generic_3.12.0-031200.201311031935_i386.deb

sudo dpkg -i *.deb

cd ..
rm -rf kernel

#Install Apparmor 2.8
sudo add-apt-repository ppa:apparmor-upload/apparmor-2.8
sudo apt-get update && sudo apt-get dist-upgrade

#Install Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get install google-chrome-stable

#Install Java 7
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer

#Install Steam
wget http://repo.steampowered.com/steam/signature.gpg && sudo apt-key add signature.gpg
sudo sh -c 'echo "deb http://repo.steampowered.com/steam/ precise steam" >> /etc/apt/sources.list.d/steam.list'
sudo apt-get update
sudo apt-get install steam

#Install PlayonLinux
#Run Windows Applications and Games on Linux
wget -q "http://deb.playonlinux.com/public.gpg" -O- | sudo apt-key add -
sudo wget http://deb.playonlinux.com/playonlinux_precise.list -O /etc/apt/sources.list.d/playonlinux.list
sudo apt-get update
sudo apt-get install playonlinux

#Install Skype
sudo apt-add-repository "deb http://archive.canonical.com/ubuntu/ precise partner"
sudo apt-get update && sudo apt-get install skype

#Install Libre Office 4
sudo add-apt-repository ppa:libreoffice/libreoffice-4-0
sudo apt-get update
sudo apt-get install libreoffice

#Install the Clementine Music Player
sudo add-apt-repository ppa:me-davidsansome/clementine
sudo apt-get update
sudo apt-get install clementine




