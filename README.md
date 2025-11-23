# dms

Danklinux.com / Dank Material Shell

# Install yay

sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si

# Install google-chrome

yay -S google-chrome 

## Install other app

sudo pacman -S telegram-desktop kitty yazi flameshot thunar nautilus tmux ranger mpv-mpris trash-cli neofetch ueberzugpp imagemagick fish wev 

sudo pacman -S filezilla ncdu xdotool gimp zathura tldr fish lsd thunderbird copyq kmonad

swayidle

yay -S pinta wps-office ttf-wps-fonts projectlibre


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

1. jalankan di terminal `gh auth login`
2. pilih github.com
3. pilih HTTPS
4. Authenticate Git with your GitHub credentials? No
5. pilih paste an authentication token (lihat cara ambil token dibawah ini)

Untuk mengambil token bisa login ke github lagi ke

1. developer setting
2. personal access tokens - Tokens(classic) => Generate access tokens (Classic)
3. tulis nama pada note
4. no_expiration
5. minimal centang repo, workflow, admin:org (inclusive semua)

Setelah dapat token, coba git push, login dengan user dan password di isi dengan token yang sudah tergenerate

sempat masih belum coba gh auth login lagi, setelah berhasil coba jalanin syntax dibawah ini
yang didapat setelah berhasil login di gh auth login:
`gh config set -h github.com git_protocol https`

# Register Alias

## Fish shell

sudo echo "source /home/mc/marc/GitHub/dms/alias_fish" | sudo tee -a ~/.config/fish/config.fish


# Create symlink

```
ln -ivs ~/marc/GitHub/dms/config/niri/config.kdl ~/.config/niri/

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

# Install dms
curl -fsSL https://install.danklinux.com | sh

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

