# dms

Danklinux.com / Dank Material Shell

# Install yay

sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si

# Install google-chrome

yay -S google-chrome

# Install neovim - https://www.lazyvim.org/installation

sudo pacman -S neovim ranger

git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

# mount drive

# Create symlink

```
ln -ivs ~/marc/GitHub/dms/config/niri ~/.config/

rm -Rf ~/.config/ranger
ln -ivs ~/marc/GitHub/dms/config/ranger ~/.config/
rm /home/mc/.local/share/ranger/bookmarks
ln -ivs ~/marc/GitHub/dms/local/share/ranger/bookmarks ~/.local/share/ranger/

rm -Rf ~/.config/nvim
ln -ivs ~/marc/GitHub/dms/.vimrc ~/
ln -ivs ~/marc/GitHub/dms/config/nvim ~/.config/
ln -ivs ~/marc/GitHub/dms/config/zathura ~/.config/
ln -ivs ~/marc/GitHub/dms/config/mpv ~/.config/

ln -ivs ~/marc/virtualbox "/home/mc/VirtualBox VMs"

mkdir ~/.config/script
mkdir ~/.local/bin
ln -ivs ~/marc/GitHub/dms/local/bin/custom ~/.local/bin

mkdir -p ~/.config/tmux-plugins
ln -ivs ~/marc/GitHub/dms/config/tmux ~/.config/
rm -Rf ~/marc/GitHub/dms/config/tmux/plugins/
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux-plugins/tpm

```

ctrl + B + capital I = install plugin
ctrl + space + capital I = install plugin

```
ln -ivs /home/mc/marc/GitHub/dms/myclirc ~/.myclirc

ln -ivs /home/mc/marc/custom/source/commandbox/box ~/.local/bin/
ln -ivs /home/mc/marc/custom/source/commandbox/jre ~/.local/bin/

ln -ivs ~/marc/GitHub/dms/zshrc ~/.zshrc
```

# clone repo

git clone https://github.com/scarmonger/dms

~/marc/GitHub/wayland

# Install app

sudo pacman -S telegram-desktop kitty yazi pinta flameshot

sudo pacman -S thunar nautilus

# Install App Launcher - Walker https://github.com/abenz1267/walker

## Clone the repository

git clone https://github.com/abenz1267/walker.git
cd walker

## Build with Cargo

sudo pacman -S cargo
cargo build --release

## Run Walker

./target/release/walker

## Install elephant https://github.com/abenz1267/elephant

yay -S elephant
yay -S elephant-desktopapplications

# Dropbox Headless Install via command line

The Dropbox daemon is only compatible with 64-bit Linux servers. To install, run the following command in your Linux terminal.

cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

Next, run the Dropbox daemon from the newly created .dropbox-dist folder.

~/.dropbox-dist/dropboxd

# Clone git repo

mkdir -p ~/marc/GitHub
cd ~/marc/GitHub
git clone https://www.github.com/scarmonger/dms.git

# Tailscale

curl -fsSL https://tailscale.com/install.sh | sh
sudo tailscale up

# Wallpaper

git clone https://github.com/mylinuxforwork/wallpaper.git ~/Pictures/
