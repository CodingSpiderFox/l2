#!/bin/bash

function setup_entertainment_software {
  sudo chown -R $(whoami):$(whoami) ~/
  sudo snap install telegram-desktop signal-desktop spotify && spotify&
  sleep 10
  mkdir -p ~/snap/spotify/current/.config/spotify/Users/tldf-user
  echo "" >> ~/snap/spotify/current/.config/spotify/Users/tldf-user/prefs
}

read -p "Use apt proxy? y/n" answer

if [ $answer == "y" ]; then
  read -p "Enter URL of apt proxy: " answer
  echo "Acquire::http::proxy \"${answer}\";" | sudo tee -a /etc/apt/apt.conf.d/01proxy > /dev/null
fi

sudo apt autoremove -y
sudo apt update
sudo apt -y install software-properties-common apt-transport-https

# install frequently used software straightway
sudo apt -y install firefox thunderbird gnome-disk-utility tmux rar unrar zip unzip snapd && sleep 5
if [ -f "~/.config/.firefoxIsInstalled" ]; then
  echo "Skipping firefox install because the flag indicates that firefox is already installed"
else
  sudo -H -u $(whoami) firefox& sleep 5 && sudo killall firefox&
fi
./install-vscode.sh

#system maintenance tools
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt-add-repository ppa:ansible/ansible --yes --update
sudo apt-add-repository ppa:teejee2008/ppa -y #timeshift
sudo add-apt-repository ppa:nilarimogard/webupd8 -y
sudo add-apt-repository ppa:sylvain-pineau/kazam -y
sudo add-apt-repository ppa:obsproject/obs-studio -y
sudo add-apt-repository ppa:peek-developers/stable -y
sudo add-apt-repository ppa:unit193/encryption -y
sudo apt-add-repository ppa:system76-dev/stable -y
sudo add-apt-repository ppa:bashtop-monitor/bashtop -y
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D6BC243565B2087BC3F897C9277A7293F59E4889
echo "deb https://miktex.org/download/ubuntu bionic universe" | sudo tee /etc/apt/sources.list.d/miktex.list
sudo apt update
sudo apt -y install flatpak \
                    wavemon \
                    iotop \
                    tree \
                    curl \
                    net-tools \
                    bridge-utils \
                    wireshark \
                    dnsutils \
                    filezilla \
                    vim \
                    screen \
                    p7zip-full \
                    htop \
                    git \
                    make \
                    gcc \
                    perl \
                    maven \
                    graphviz \
                    openjdk-8-jdk \
                    libcanberra-gtk-module \
                    chromium-browser \
                    gnome-calculator \
                    keepassxc \
                    ncdu \
                    qdirstat \
                    inkscape \
                    gimp \
                    gufw \
                    clamtk \
                    gedit \
                    iftop \
                    kdiff3 \
                    network-manager-openvpn-gnome \
                    gnome-tweaks \
                    p7zip-full \
                    p7zip-rar \
                    testdisk \
                    libgtk-3-dev \
                    libzbar-dev \
                    libgcrypt20-dev \
                    cmake \
                    ethtool \
                    etherwake \
                    copyq \
                    seahorse \
                    wine-stable \
                    gparted \
                    simplescreenrecorder \
                    mercurial \
                    fwupd \
                    pidgin \
                    vlc \
                    fonts-font-awesome \
                    gitk \
                    lynx \
                    pinta \
                    libreoffice \
                    traceroute \
                    openshot \
                    preload \
                    texmaker \
                    rclone \
                    kazam \
                    obs-studio \
                    peek \
                    kmetronome \
                    xrdp \
                    unclutter \
                    uuid-dev \
                    libndp-dev \
                    libsystemd-dev \
                    libjansson-dev \
                    libselinux1-dev \
                    libaudit-dev \
                    libpolkit-gobject-1-dev \
                    ppp-dev \
                    libmm-glib-dev \
                    libpsl-dev \
                    libnewt-dev \
                    libreadline-dev \
                    python3-pip \
                    appstream-util \
                    libappindicator1 \
                    timeshift \
                    screenfetch \
                    nomacs \
                    radare2 \
                    veracrypt \
                    sshfs \
                    cifs-utils \
                    gnucash \
                    sqlitebrowser \
                    libva-glx2 \
                    vainfo \
                    audacity \
                    ubuntu-make \
                    system76-power \
                    chrome-gnome-shell \
                    libimage-exiftool-perl \
                    libgles2-mesa \
                    httrack \
                    ansible \
                    apt-file \
                    libgl1-mesa-glx \
                    libegl1-mesa \
                    libxrandr2 \
                    libxrandr2 \
                    libxss1 \
                    libxcursor1 \
                    libxcomposite1 \
                    libasound2 \
                    libxi6 \
                    libxtst6 \
                    zfs-fuse \
                    mkchromecast \
                    qml-module-qtquick2 \
                    qml-module-qtquick-controls \
                    qml-module-qtquick-dialogs \
                    qml-module-qtquick-window2 \
                    qml-module-qtquick-layouts \
                    libxcb-xtest0 \
                    jq \
                    libvirt-dev \
                    remmina \
                    bashtop \
                    duplicity \
                    golang-go \
                    xdotool \
                    vagrant \
                    deja-dup \
                    tesseract-ocr-deu \
                    openjfx \
                    kdeconnect \
                    inotify-tools \
                    bleachbit \
                    texstudio \
                    lyx \
                    perl-tk \
                    xzdec \
                    texlive-fonts-extra \
                    texlive-luatex \
                    winetricks \
                    kdenlive \
                    libsecret-1-0 \
                    libsecret-tools \
                    seahorse \
                    ssh-askpass \
                    gnome-keyring \
                    zsh-antigen \
                    libsecret-1-dev \
                    libgconf-2-4 \
                    gh

read -p "Install usbguard? y/n" answer
if [ $answer == "y" ]; then
  sudo apt install -y usbguard-applet-qt usbguard
  sudo usbguard generate-policy > rules.conf
  sudo install -m 0600 -o root -g root rules.conf /etc/usbguard/rules.conf
  sudo systemctl restart usbguard
  rm rules.conf
fi

wget https://releases.hashicorp.com/terraform/1.0.4/terraform_1.0.4_linux_amd64.zip  -O terraform.zip
# install terrafrom

unzip terraform.zip
sudo mv terraform /usr/local/bin/
terraform --version
rm terraform.zip
terraform init
mkdir -p ~/.terraform.d/plugins
go get github.com/dmacvicar/terraform-provider-libvirt
go install github.com/dmacvicar/terraform-provider-libvirt
cp ~/go/bin/terraform-provider-libvirt ~/.terraform.d/plugins

sudo apt-file update
sudo systemctl disable xrdp xrdp-sesman
sudo apt -y remove cups-browsed
mkdir -p ~/.config
cp home/user/.config/mimeapps.list ~/.config/

read -p "Install anaconda y/n?" answer

if [ $answer == "y" ]; then
  wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh -O ~/anaconda.sh
  bash ~/anaconda.sh -b -p $HOME/anaconda
fi

pip3 install all-repos

sudo apt install -y libvirt-daemon libvirt-daemon-system qemu-kvm virt-manager
sudo usermod -a -G libvirt $(whoami)
sudo usermod -a -G kvm $(whoami)

mkdir -p ~/.config/vlc
cp home/user/.config/vlc/* ~/.config/vlc/

sudo service fwupd start
sudo fwupdmgr refresh
sudo fwupdmgr update

read -p "Install firefox addons: ublock origin, https everywheree, i don't care about cookies (y/n)?" answer

if [ $answer == "y" ]; then
  ./install-firefox-addons.sh
fi

sudo apt-key add var/oracle-virtualbox6.0.asc
sudo add-apt-repository "deb https://download.virtualbox.org/virtualbox/debian bionic contrib"
sudo find /etc/apt/ -not -path '*/\.*' -type f -print0 | sudo xargs -0 sed -i 's/deb http:\/\/download.virtualbox.org/deb [arch=amd64 trusted=yes] https:\/\/download.virtualbox.org/g'
sudo apt -y install virtualbox-6.1

echo "PATH=\$PATH:/snap/bin" >> ~/.profile
source ~/.profile

snap install fkill
snap install photogimp

read -p "Install gaming software? y/n" install_gamingsoftware

if [ $install_gamingsoftware == "y" ]; then
  wget https://repo.steampowered.com/steam/signature.gpg && sudo apt-key add signature.gpg
  sudo sh -c 'echo "deb https://repo.steampowered.com/steam/ precise steam" >> /etc/apt/sources.list.d/steam.list'
  sudo apt-get update
  sudo apt -y install steam

  sudo add-apt-repository ppa:oibaf/graphics-drivers -y
  sudo add-apt-repository ppa:graphics-drivers/ppa -y
  sudo add-apt-repository ppa:lutris-team/lutris

  sudo apt install -y libvulkan1 \
                      libvulkan-dev \
                      vulkan-utils \
                      mesa-vulkan-drivers \
                      lutris

  wget https://github.com/doitsujin/dxvk/releases/download/v1.7.2/dxvk-1.7.2.tar.gz
  tar xvf dxvk-1.7.2.tar.gz
  # FIXME actually install dxvk before deletion
  rm -rf dxvk*/
  rm dxvk*.tar.gz

  ./install-teamspeak.sh
  steam&
  rm signature.gpg
  setup_entertainment_software
else
  read -p "Install entertainment software? y/n" answer
  if [ $answer == "y" ]; then
    setup_entertainment_software
  fi
fi

./install-chrome.sh

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install broot
cargo install exa

wget https://installers.privateinternetaccess.com/download/pia-linux-2.1-04977.run -O pia.run
chmod u+x pia.run
./pia.run
rm pia.run

pip3 install ansible-lint ansible-review ansible-cmdb ansible-inventory-grapher ansible-playbook-grapher pylint
sudo gem install overcommit

sudo sysctl vm.swappiness=10

./install-ohmyzsh.sh

flatpak install flathub com.slack.Slack
flatpak install flathub com.discordapp.Discord

# Install thunderbird dark theme stylesheet for message windows
## find default-release profile folder to add user specific configs to it
export thunderbirdDir=$(find   ~/.thunderbird -name "*default-release*" -type d)
export target="${thunderbirdDir}/user.js"
cp home/user/.thunderbird/user.js $target

mkdir ~/.ssh/
cp -R home/user/.ssh/* ~/.ssh/
read -p "Remember to setup SSH key. Also put the corresponding public keys next to the private keys to make gnome-keyring automatically pull the right key for the right endpoint" answer
sudo chmod 0600 ~/.ssh/*
git config --global credential.helper /usr/lib/git-core/git-credential-libsecret
## Useful article: https://wiki.archlinux.org/index.php/GNOME/Keyring#SSH_keys. See SSH_KEYS file

wget https://cdn01.foxitsoftware.com/pub/foxit/reader/desktop/linux/2.x/2.4/en_us/FoxitReader.enu.setup.2.4.4.0911.x64.run.tar.gz -O FoxitReader.run.tar.gz
tar xvf FoxitReader.run.tar.gz 
sudo ./FoxitReader.enu.setup.2.4.4.0911\(r057d814\).x64.run

sudo ln -s /home/user/opt/foxitsoftware/foxitreader /bin/foxitreader

rm FoxitReader*
