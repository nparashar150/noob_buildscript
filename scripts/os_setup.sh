#!/bin/bash
echo ""
echo ""
echo "Welcome to the script."
echo "Installing neccessary stuff for you."
sudo apt-get install --ignore-missing -y vlc 
sudo apt-get install --ignore-missing -y adb 
sudo apt-get install --ignore-missing -y google-chrome-stable 
sudo apt-get install --ignore-missing -y gnome-tweaks 
sudo apt-get install --ignore-missing -y gnome-tweak-tool 
sudo apt-get install --ignore-missing -y htop 
sudo apt-get install --ignore-missing -y psensor 
sudo apt-get install --ignore-missing -y telegram-desktop 
sudo apt-get install --ignore-missing -y gimp 
sudo apt-get install --ignore-missing -y tlp 
sudo apt-get install --ignore-missing -y tlp-rdw 
sudo apt-get install --ignore-missing -y grub-customizer 
sudo apt-get install --ignore-missing -y repo 
sudo apt-get install --ignore-missing -y android-tools-adb 
sudo apt-get install --ignore-missing -y android-tools-fastboot 
sudo apt-get install --ignore-missing -y lolcat 
sudo apt-get install --ignore-missing -y toilet 
sudo apt-get install --ignore-missing -y android-sdk-platform-tools-common 
sudo apt-get install --ignore-missing -y speedtest-cli 
sudo apt-get install --ignore-missing -y snap 
sudo apt-get install --ignore-missing -y rsync 
sudo apt-get install --ignore-missing -y python 
sudo apt-get install --ignore-missing -y kazam
sudo tlp start
sudo apt install git-all -y
echo "Put your github username"
read username 
git config --global user.name "$username"
echo "Put your github useremail"
read useremail
git config --global user.email "$useremail"
git config --global color.ui true
git config --global core.editor emacs
echo "Github username is: `git config user.name`"
echo "Github useremail is: `git config user.email`"
echo "Checking & Updating System."
sudo apt update
sudo apt upgrade
sudo apt install lsb-core -y
echo "The OS installed is `lsb_release -d | cut -d ':' -f 2 | sed -e 's/^[[:space:]]*//'`."
OS_VERSION="$(lsb_release -d | cut -d ':' -f 2 | sed -e 's/^[[:space:]]*//')"
if [[ ${LSB_RELEASE} =~ "Ubuntu" ]]; then
sudo apt install ubuntu-restricted-extras -y
fi
echo "Done"
echo "Exiting in 5 seconds"
echo -ne '######                    (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 3
echo -ne '#######################  (100%)\r'
echo -ne '\n'
