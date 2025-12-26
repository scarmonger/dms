# clone repo

git clone https://github.com/scarmonger/dms ~/marc/GitHub/dms

# Setup /etc/sudoers

sudo visudo
add this on the end of file : Defaults !tty_tickets

# mount drive

mkdir -p ~/marc/

pc:
sudo echo "UUID=8f4825e2-0016-43c2-994a-bb2830ddaea9 /home/mc/marc/ ext4 errors=remount-ro 0 1" | sudo tee -a /etc/fstab

tp13:
sudo echo "UUID=3cb910c9-2e1e-4910-a6a9-c114df09d3cd /home/mc/marc/ ext4 errors=remount-ro 0 1" | sudo tee -a /etc/fstab

dell:
sudo echo "UUID=6b617826-89bc-444c-9b72-9bcf0c44eb73 /home/mc/marc/ ext4 errors=remount-ro 0 1" | sudo tee -a /etc/fstab

sudo mount -a

# Install dms / Danklinux.com / Dank Material Shell

curl -fsSL https://install.danklinux.com | sh

# Install yay

sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si

# Install google-chrome

yay -S google-chrome

# Install neovim - https://www.lazyvim.org/installation

sudo pacman -S neovim github-cli python-pip tree-sitter-cli ripgrep fd fzf lazygit luarocks ghostty

git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

## Install neovim-remote / nvr

https://github.com/mhinz/neovim-remote

pip3 install neovim-remote --break-system-packages

### Check servername

:echo v:servername

# Install other app (sudo pacman -S)

sudo pacman -S yazi thunar nautilus tmux trash-cli zoxide rofi --noconfirm

sudo pacman -S yt-dlp ncdu copyq kmonad helix mpv-mpris fastfetch wev galculator --noconfirm
sudo pacman -S rofimoji --noconfirm
sudo pacman -S zathura-cb zathura-cb zathura-djvu zathura-pdf-poppler zathura-ps
sudo pacman -S 7zip imagemagick gwenview flameshot

sudo pacman -S keepassxc qt5-wayland obsidian veracrypt telegram-desktop filezilla
sudo pacman -S macchanger thunderbird
sudo pacman -S code dbeaver
sudo pacman -S gimp

yay -S wps-office ttf-wps-fonts libtiff5 --noconfirm
yay -S --noconfirm windsurf zellij zoom pinta librewolf-bin

# projectlibre

yay -S projectlibre java-runtime-common
sudo pacman -S jre11-openjdk

archlinux-java status
sudo archlinux-java set java-25-openjdk

xdg-mime query filetype nama_file.pod

> octet-stream

xdg-mime default projectlibre.desktop application/octet-stream

https://aur.archlinux.org/packages/projectlibre
https://wiki.archlinux.org/title/Java#Switching_between_JVM

# github-cli authentication

https://cli.github.com/manual/

git config --global user.email "<psikomania@yahoo.com>"
git config --global user.name "scarmonger"

## Generate a new SSH Key

ssh-keygen -t ed25519 -C "psikomania@yahoo.com"

## Start the ssh-agent in the background

eval "$(ssh-agent -s)"

## Adding SSF Key to SSH-Agent

ssh-add ~/.ssh/id_ed25519

## Adding a new SSH key to your GitHub account

gh auth login
gh auth refresh -h github.com -s admin:ssh_signing_key

check method currently use to communicating with github
git remote -v

set the method using ssh instead of https
git remote set-url origin git@github.com:scarmonger/dms.git

# Create symlink

```
ln -ivs ~/marc/GitHub/dms/config/niri/config.kdl ~/.config/niri/

rm -Rf ~/.config/yazi
ln -ivs ~/marc/GitHub/dms/config/yazi/ ~/.config/

rm -Rf ~/.config/nvim
ln -ivs ~/marc/GitHub/dms/.vimrc ~/
ln -ivs ~/marc/GitHub/dms/config/nvim ~/.config/

mkdir -p ~/.config/tmux-plugins
ln -ivs ~/marc/GitHub/dms/config/tmux ~/.config/
rm -Rf ~/marc/GitHub/dms/config/tmux/plugins/
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux-plugins/tpm
```

ctrl + B + capital I = install plugin
ctrl + space + capital I = install plugin

```
ln -ivs ~/marc/GitHub/dms/.gitconfig ~/

ln -ivs ~/marc/GitHub/dms/.zshenv ~/
ln -ivs ~/marc/GitHub/dms/config/zsh/ ~/.config/
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.config/powerlevel10k

ln -ivs ~/marc/GitHub/dms/config/helix/ ~/.config/
ln -ivs ~/marc/GitHub/dms/config/fish/ ~/.config/
ln -ivs ~/marc/GitHub/dms/config/zellij ~/.config/

ln -ivs ~/marc/GitHub/dms/config/zathura ~/.config/
ln -ivs ~/marc/GitHub/dms/config/mpv ~/.config/
ln -ivs ~/marc/GitHub/dms/local/share/applications/rofi-wifi-menu.desktop ~/.local/share/applications/
mkdir -p ~/.local/bin
ln -ivs ~/marc/GitHub/dms/local/bin/custom ~/.local/bin

ln -ivs ~/marc/virtualbox "/home/mc/VirtualBox VMs"


ln -ivs /home/mc/marc/GitHub/dms/myclirc ~/.myclirc

ln -ivs /home/mc/marc/custom/source/commandbox/box ~/.local/bin/
ln -ivs /home/mc/marc/custom/source/commandbox/jre ~/.local/bin/

ln -ivs ~/marc/.thunderbird ~/.thunderbird
<!-- ln -ivs ~/marc/GitHub/dms/config/rofimoji.rc ~/.config/ -->
```

# Register kmonad to Systemd User Service

1. Edit the Sudoers File: Open the sudoers configuration file using the standard utility:
   sudo visudo
2. Add the Rule: Add the following line to the end of the file. Replace yourusername with your actual Linux username.
   mc ALL=(ALL) NOPASSWD: /usr/bin/kmonad

3. mkdir -p ~/.config/systemd/user/
4. ln -ivs ~/marc/GitHub/dms/config/systemd/user/kmonad.service ~/.config/systemd/user/
5. Enable and Start the Service
   systemctl --user daemon-reload
   systemctl --user enable kmonad.service
   systemctl --user start kmonad.service

# Dropbox Headless Install via command line

The Dropbox daemon is only compatible with 64-bit Linux servers. To install, run the following command in your Linux terminal.

cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

Next, run the Dropbox daemon from the newly created .dropbox-dist folder.

~/.dropbox-dist/dropboxd

sudo pacman -S libappindicator

wget -O ~/.local/bin/dropbox.py "https://www.dropbox.com/download?dl=packages/dropbox.py"
chmod + x ~/.local/bin/dropbox

# Tailscale

curl -fsSL https://tailscale.com/install.sh | sh
sudo tailscale up

# Wallpaper

git clone https://github.com/mylinuxforwork/wallpaper.git /home/mc/marc/pics/wallpaper

# Rubah default shell bin bash menjadi zsh (harus logout)

chsh -s /usr/bin/zsh
restart

# GPU Screen recorder

https://github.com/BrycensRanch/gpu-screen-recorder-git-copr
https://git.dec05eba.com/gpu-screen-recorder-ui/about/

yay -S gpu-screen-recorder-ui
systemctl enable --now --user gpu-screen-recorder-ui

# Install python,pip & selenium

yay -S python-selenium python-clipman mycli --noconfirm
sudo pacman -S python-pandas --noconfirm
yay -S pyinstaller

# virtualbox

uname -r : 6.12.62-1-MANJARO
sudo pacman -S virtualbox linux618-virtualbox-host-modules

6.18.2-2-cachyos
sudo pacman -S linux-cachyos-headers virtualbox virtualbox-host-dkms

sudo usermod -aG vboxusers $USER
sudo modprobe vboxdrv
yay -S virtualbox-ext-oracle
sudo modprobe -r kvm_intel

# rustdesk

sudo pacman -U rustdesk-1.4.4-0-x86_64.pkg.tar.zst
