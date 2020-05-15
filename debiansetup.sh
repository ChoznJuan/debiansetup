#add user to sudoer group
#usermod -aG sudo <username>
#logout 

#update source list
#sudo nano /etc/apt/sources.list
#deb http://deb.debian.org/debian/ bullseye main non-free contrib
#deb-src http://deb.debian.org/debian/ bullseye main non-free contrib
#deb http://security.debian.org/debian-security bullseye-security main non-free contrib
#deb-src http://security.debian.org/debian-security bullseye-security main non-free contrib
#sudo apt update && sudo apt upgrade -y

#light dm set config
#sudo mkdir /etc/lightdm/lightdm.conf.d
#cd /etc/lightdm/lightdm.conf.d
#sudo nano 01_my.conf 
#[Seat:*]
#greeter-hide-users=false

#download apps
sudo apt install terminator nautilus-admin gedit git build-essential -yy

#uncomment next line to download amd drivers
#sudo apt install firmware-linux firmware-linux-nonfree libdrm-amdgpu1 xserver-xorg-video-amdgpu mesa-vulkan-drivers libvulkan1 vulkan-tools vulkan-utils vulkan-validationlayers mesa-opencl-icd

#uncomment next lines to add multiarch for steam & wine support
#sudo dpkg --add-architecture i386 && sudo apt update
#sudo apt install wine wine32 wine64 libwine libwine:i386 fonts-wine


#remove apps
sudo apt remove mousepad xterm thunar -yy

#setup zsh
sudo apt install zsh-syntax-highlighting autojump zsh-autosuggestions
wget https://github.com/ChoznJuan/zsh/raw/master/.zshrc -O ~/.zshrc
mkdir -p "$HOME/.zsh"
wget https://github.com/ChoznJuan/zsh/raw/master/.zsh/aliasrc -O ~/.zsh/aliasrc
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
git clone https://github.com/zsh-users/zsh-completions.git
#sudo nano /etc/passwd
#update user from /bin/bash to /bin/zsh 

#uncomment next lines to install steam
#sudo apt install steam