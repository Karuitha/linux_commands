#!/bin/bash

## Message -----
echo "Installing neccesary packages ............................"
echo "Remember to update Quarto, R and R Studio versions........"
echo "If setting up for a different person, comment out git configs ........"


## Update and install key packages ----
sudo apt update && sudo apt upgrade -y
sudo apt --fix-broken install 

sudo apt install gnome-tweaks gnome-shell-extensions snap snapd winbind playonlinux ubuntu-restricted-extras fonts-firacode 
sudo apt --fix-broken install

## Install microsoft fonts ----
sudo add-apt-repository multiverse
sudo apt update && sudo apt install ttf-mscorefonts-installer apt-transport-https
sudo fc-cache -f -v

sudo apt install libclang-dev libssl-dev libpq5 libcurl4-openssl-dev libfontconfig1-dev libharfbuzz-dev libfribidi-dev 
sudo apt --fix-broken install 
sudo apt install libudunits2-dev gdal* libgdal-dev gparted stacer shotwell ca-certificates

sudo apt install libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev libcairo2-dev texlive-full cmake jupyter neofetch libpoppler-cpp-dev
sudo apt --fix-broken install 

sudo apt install flatpak gimp vlc synaptic fonts-roboto fonts-cascadia-code tlp flameshot virtualbox geary net-tools
sudo apt-get install java-package transmission gnome-terminal chromium-browser
sudo apt update && sudo apt upgrade -y

## Install Azul JDK ----
## Works better with other R packages like Tabulizer ----
cd ~
sudo apt update && sudo apt upgrade -y
wget https://cdn.azul.com/zulu/bin/zulu21.30.15-ca-jdk21.0.1-linux_amd64.deb
sudo dpkg -i zulu*
sudo rm zulu*
cd 

## Add flathub ----
sudo apt install flatpak gnome-software-plugin-flatpak nala gdebi
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

## Update ----
sudo apt --fix-broken install 
sudo apt update && sudo apt upgrade -y

## Install python libs ----
sudo apt install python3-numpy python3-pandas python3-matplotlib python3-seaborn python3-plotly speedtest-cli

# Install R prerequisite ----
cd
wget http://ftp.us.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg62-turbo_2.1.5-2+b2_amd64.deb
sudo dpkg -i libjpeg62-turbo*

## Install R 
# See https://www.linuxcapable.com/how-to-install-r-programming-language-on-debian-linux/
# Snaps https://snapcraft.io/docs/installing-snap-on-debian
sudo apt update && sudo apt upgrade -y

sudo apt install dirmngr apt-transport-https ca-certificates software-properties-common -y

gpg --keyserver keyserver.ubuntu.com --recv-key '95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7'
gpg --armor --export '95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7' | gpg --dearmor | sudo tee /usr/share/keyrings/cran.gpg > /dev/null

echo "deb [signed-by=/usr/share/keyrings/cran.gpg] https://cloud.r-project.org/bin/linux/debian bookworm-cran40/" | sudo tee /etc/apt/sources.list.d/cran.list

sudo apt update && sudo apt upgrade -y

sudo apt install r-base r-base-dev

## Install R Studio 
sudo apt update && sudo apt upgrade -y
cd Desktop
wget https://download1.rstudio.org/electron/jammy/amd64/rstudio-2024.04.0-735-amd64.deb
sudo dpkg -i rstudio*

## Install quarto 
sudo apt update && sudo apt upgrade -y
wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.4.554/quarto-1.4.554-linux-amd64.deb
sudo dpkg -i quarto*

sudo rm rstudio* quarto*

## Install google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository "deb http://dl.google.com/linux/chrome/deb/ stable main"
sudo apt update && sudo apt upgrade -y
sudo apt install google-chrome-stable ncal libglpk-dev libgmp-dev

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
sudo chmod +x Anaconda*
sudo bash Anaconda3-2023.09-0-Linux-x86_64.sh

## Install hypnotix
sudo apt update && sudo apt upgrade -y
sudo add-apt-repository ppa:kelebek333/mint-tools
sudo apt update && sudo apt upgrade -y
sudo apt install hynotix


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

echo "Welcome to Ubuntu, John Karuitha"

echo "We shall now restart your computer"


shutdown -r now 


## Do these after restarting the computer
## activate anaconda 
conda install conda
conda install anaconda
conda update anaconda


## Install snaps 
#sudo snap install variety
#sudo snap install nuclear
#sudo snap install shortwave
#sudo snap install office365webdesktop --beta
## See https://www.wps.com/blog/how-to-install-and-run-microsoft-365-on-ubuntu-linux-a-comprehensive-guide
# Nice wall papers https://www.droidmirror.com/download/1920-x-1080-hd-wallpapers-zip
