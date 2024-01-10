## Clone the git repo 
# https://github.com/pixegami/terminal-profile.git

## Change directory to terminal 
cd terminal-profile 

## Update 
sudo apt update && sudo apt upgrade -y

# Install Git.
sudo apt-get install -y git

# Install Vim.
sudo apt-get install -y vim

./install_powerline.sh

 
./install_terminal.sh

./install_profile.sh

## Dump current terminal profile
#dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal-profiles.dconf

# View on neofetch
#sudo apt-get install neofetch

# Display the profile
# I override the colors because the default red is kinda ugly in this theme.
#neofetch --ascii_colors 6 7 --colors 2 2 2 2
