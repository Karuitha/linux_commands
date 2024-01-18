#!/bin/bash

## Message
echo "Installing neccesary packages ............................"
echo "Remember to update R and R Studio versions........"
echo "If setting up for a different person, comment out git configs ........"


## Update and install key packages 
sudo apt update && sudo apt upgrade -y
sudo apt --fix-broken install 

sudo apt install gnome-tweaks gnome-shell-extensions snapd winbind playonlinux ubuntu-restricted-extras fonts-firacode 
sudo apt --fix-broken install

## Install microsoft fonts
sudo add-apt-repository multiverse
sudo apt update && sudo apt install ttf-mscorefonts-installer
sudo fc-cache -f -v

sudo apt install libclang-dev libssl-dev libpq5 libcurl4-openssl-dev libfontconfig1-dev libharfbuzz-dev libfribidi-dev 
sudo apt --fix-broken install 
sudo apt install libudunits2-dev gdal* libgdal-dev

sudo apt install libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev libcairo2-dev texlive-full cmake jupyter neofetch libpoppler-cpp-dev
sudo apt --fix-broken install 

sudo apt install flatpak gimp vlc synaptic fonts-roboto fonts-cascadia-code tlp flameshot virtualbox geary net-tools
sudo apt-get install java-package
sudo apt update && sudo apt upgrade -y

## Install Azul JDK
## Works better with other R packages like Tabulizer
cd ~
sudo apt update && sudo apt upgrade -y
wget https://cdn.azul.com/zulu/bin/zulu21.30.15-ca-jdk21.0.1-linux_amd64.deb
sudo dpkg -i zulu*
sudo rm zulu*
cd 


## Install snaps 
sudo snap install variety
sudo snap install nuclear
sudo snap install shortwave

## Add flathub
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

## Update 
sudo apt --fix-broken install 
sudo apt update && sudo apt upgrade -y

## Install python libs 
sudo apt install python3-numpy python3-pandas python3-matplotlib python3-seaborn python3-plotly

## Install R 
# update indices
sudo apt update -qq
# install two helper packages we need
sudo apt install --no-install-recommends software-properties-common dirmngr
# add the signing key (by Michael Rutter) for these repos
# To verify key, run gpg --show-keys /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc 
# Fingerprint: E298A3A825C0D65DFD57CBB651716619E084DAB9
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
# add the R 4.0 repo from CRAN -- adjust 'focal' to 'groovy' or 'bionic' as needed
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"

sudo apt install --no-install-recommends r-base r-base-dev

## Install R Studio 
sudo apt update && sudo apt upgrade -y
cd Desktop
wget https://download1.rstudio.org/electron/jammy/amd64/rstudio-2023.12.0-369-amd64.deb
sudo dpkg -i rstudio*

## Install quarto 
sudo apt update && sudo apt upgrade -y
wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.3.450/quarto-1.3.450-linux-amd64.deb
sudo dpkg -i quarto*

sudo rm rstudio* quarto*

## Install google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository "deb http://dl.google.com/linux/chrome/deb/ stable main"
sudo apt update && sudo apt upgrade -y
sudo apt install google-chrome-stable

## Install chromium
sudo apt install chromium-browser

## Install git
sudo apt update && sudo apt upgrade -y
sudo apt install git 

## Register for git 
git config --global user.name 'Karuitha'
git config --global user.email 'diakingathia2005@gmail.com'

## Install anaconda
sudo apt install libgl1-mesa* libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
cd 
wget https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh
sudo bash Anaconda3-2023.09-0-Linux-x86_64.sh

## Install nice wallpapers 
cd ~
echo "Downloading needed files started"
git clone https://github.com/saint-13/Linux_Dynamic_Wallpapers.git  
cd Linux_Dynamic_Wallpapers
echo "Files downloaded"

if [[ -d /usr/share/backgrounds/Dynamic_Wallpapers ]]
then 
  sudo rm -r /usr/share/backgrounds/Dynamic_Wallpapers
  echo "Setting up"
fi

echo "Installing wallpapers..."
sudo cp -r ./Dynamic_Wallpapers/ /usr/share/backgrounds/
sudo cp ./xml/* /usr/share/gnome-background-properties/
echo "Dynamic Wallpapers has been installed!"
cd ~ 
echo "Deleting files used only for the installation process"
sudo rm -r Linux_Dynamic_Wallpapers
echo "    |"
echo "    '---> Deleted unneeded files!"
echo "Now, don't forget to set your preferred dynamic wallpaper from Settings!"


echo "Installation complete! Thanks for your patience!"

echo "We shall now restart your computer"


shutdown -r now 

