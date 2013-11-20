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


