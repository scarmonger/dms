# Yazi
## Themes
https://github.com/yazi-rs/flavors?tab=readme-ov-file
https://github.com/yazi-rs/plugins/tree/main/mime-ext.yazi

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

<!-- # Zoxide -->
<!---->
<!-- echo "zoxide init fish | source" | tee -a /home/mc/.config/fish/config.fish -->
<!-- echo 'eval "$(zoxide init zsh)"' | tee -a ~/.zshrc -->

# Install oh-my-zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Install plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


# Install font

1.) Download a Nerd Font

2.) Unzip and copy to ~/.fonts

3.) Run the command `fc-cache -fv` to manually rebuild the font cache

check fonts with `fc-list`

> fc-list | grep -i "Wing"

https://github.com/wting/autojump/blob/master/docs/install.md

> git clone https://github.com/wting/autojump.git
> cd autojump
> ./install.py

sudo mv /etc/greetd/config.toml /etc/greetd/config.toml_bak
sudo ln -ivs ~/marc/GitHub/dms/etc/greetd/config.toml /etc/greetd/


rm -Rf ~/.config/ranger
ln -ivs ~/marc/GitHub/dms/config/ranger ~/.config/
rm /home/mc/.local/share/ranger/bookmarks
ln -ivs ~/marc/GitHub/dms/local/share/ranger/bookmarks ~/.local/share/ranger/

sudo pacman -S qt5-wayland libreoffice-still tldr fish lsd lsof xdotool 

# Clone git repo

mkdir -p ~/marc/GitHub
cd ~/marc/GitHub
git clone https://www.github.com/scarmonger/dms.git

# Register kmonad to Systemd User Service

https://www.youtube.com/watch?v=Dhj1eauljwU

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

# Install neovim - https://www.lazyvim.org/installation

sudo pacman -S neovim github-cli python-pip tree-sitter-cli ripgrep fd fzf lazygit luarocks ghostty

rm -rf ~/.config/nvim
git clone https://github.com/LazyVim/starter ~/.config/nvim

## Install neovim-remote / nvr

https://github.com/mhinz/neovim-remote

pip3 install neovim-remote --break-system-packages

### Check servername

:echo v:servername

