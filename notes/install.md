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

# clone repo

git clone https://github.com/scarmonger/manjaro-hypr

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
git clone https://www.github.com/scarmonger/ubuntu.git

# Tailscale

curl -fsSL https://tailscale.com/install.sh | sh
sudo tailscale up

# Wallpaper

git clone https://github.com/mylinuxforwork/wallpaper.git ~/Pictures/
