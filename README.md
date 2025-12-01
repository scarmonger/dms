# dms

Danklinux.com / Dank Material Shell

show create table teodempdoc;

# wifi
nmcli radio wifi on
nmcli device wifi rescan
nmcli device wifi list
nmcli device wifi connect DataOn
nmcli device wifi connect DataOn password xxx


# Install yay

sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si

# Install google-chrome

yay -S google-chrome 

## Install other app


sudo pacman -S filezilla ncdu xdotool gimp lsd thunderbird keepassxc qt5-wayland copyq kmonad obsidian

sudo pacman -S telegram-desktop yazi flameshot thunar nautilus tmux  mpv-mpris trash-cli neofetch wev gpicview

sudo pacman -S zathura-cb zathura-cb zathura-djvu zathura-pdf-poppler zathura-ps

sudo pacman -S tldr fish ghostty ueberzugpp imagemagick fish kitty 

swayidle

yay -S pinta wps-office ttf-wps-fonts projectlibre

# Setup /etc/sudoers
sudo visudo
add this on the end of file : Defaults !tty_tickets

# Install neovim - https://www.lazyvim.org/installation

sudo pacman -S neovim github-cli python-pip tree-sitter-cli ripgrep fd fzf lazygit luarocks 

git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

## Install neovim-remote / nvr

https://github.com/mhinz/neovim-remote

pip3 install neovim-remote --break-system-packages

### Check servername
:echo v:servername

# mount drive

pc:
sudo echo "UUID=8f4825e2-0016-43c2-994a-bb2830ddaea9 /home/mc/marc/ ext4 errors=remount-ro 0 1" | sudo tee -a /etc/fstab

tp13:
sudo echo "UUID=3cb910c9-2e1e-4910-a6a9-c114df09d3cd /home/mc/marc/ ext4 errors=remount-ro 0 1" | sudo tee -a /etc/fstab

dell:
sudo echo "UUID=6b617826-89bc-444c-9b72-9bcf0c44eb73 /home/mc/marc/ ext4 errors=remount-ro 0 1" | sudo tee -a /etc/fstab

sudo mount -a

# clone repo

git clone https://github.com/scarmonger/dms ~/marc/GitHub/dms

# github-cli authentication

https://cli.github.com/manual/

sudo pacman -S github-cli

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

git remote -v
git remote set-url origin git@github.com:scarmonger/dms.git

# Register Alias

## Fish shell

echo "source /home/mc/marc/GitHub/dms/alias_fish" | tee -a ~/.config/fish/config.fish


# Create symlink

```
ln -ivs ~/marc/GitHub/dms/config/niri/config.kdl ~/.config/niri/


rm -Rf ~/.config/ranger
ln -ivs ~/marc/GitHub/dms/config/ranger ~/.config/
rm /home/mc/.local/share/ranger/bookmarks
ln -ivs ~/marc/GitHub/dms/local/share/ranger/bookmarks ~/.local/share/ranger/

rm -Rf ~/.config/yazi
ln -ivs ~/marc/GitHub/dms/config/yazi/ ~/.config/

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

sudo mv /etc/greetd/config.toml /etc/greetd/config.toml_bak
sudo ln -ivs ~/marc/GitHub/dms/etc/greetd/config.toml /etc/greetd/
```

# Install dms
curl -fsSL https://install.danklinux.com | sh

# Register kmonad to Systemd User Service
1. Edit the Sudoers File: Open the sudoers configuration file using the standard utility:
sudo visudo
2. Add the Rule: Add the following line to the end of the file. Replace yourusername with your actual Linux username.
mc ALL=(ALL) NOPASSWD: /usr/bin/kmonad
3. mkdir -p ~/.config/systemd/user/
4. ln -ivs ~/marc/GitHub/dms/config/systemd/ ~/.config/
5. Enable and Start the Service
systemctl --user daemon-reload
systemctl --user enable kmonad.service
systemctl --user start kmonad.service


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

# Install oh-my-zsh

**Rubah bin bash menjadi zsh (harus logout)**
chsh -s /usr/bin/zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSHCUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

---

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.config/powerlevel10k
echo 'source ~/.config/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

1.) Download a Nerd Font

2.) Unzip and copy to ~/.fonts

3.) Run the command `fc-cache -fv` to manually rebuild the font cache

check fonts with `fc-list`
> fc-list | grep -i "Wing"

https://github.com/wting/autojump/blob/master/docs/install.md
> git clone https://github.com/wting/autojump.git
> cd autojump
> ./install.py

```

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

# Yazi
sudo pacman -S yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick

## Themes
https://github.com/yazi-rs/flavors?tab=readme-ov-file

ya pkg -h
ya pkg add kalidyasin/yazi-flavors:tokyonight-night
ya pkg add yazi-rs/flavors:dracula
ya pkg add yazi-rs/flavors:catppuccin-mocha

## Plugins
https://github.com/yazi-rs/plugins/tree/main
https://github.com/yazi-rs/plugins/tree/main/mount.yazi

ya pkg add yazi-rs/plugins:mount
ya pkg add yazi-rs/plugins:toggle-pane
ya pkg add yazi-rs/plugins:full-border
ya pkg add yazi-rs/plugins:smart-enter

https://github.com/dedukun/bookmarks.yazi
ya pkg add dedukun/bookmarks

https://github.com/KKV9/compress.yazi
ya pkg add KKV9/compress

# Zoxide

echo "zoxide init fish | source" | tee -a /home/mc/.config/fish/config.fish
echo 'eval "$(zoxide init zsh)"' | tee -a ~/.zshrc
