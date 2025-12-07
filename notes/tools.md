printenv

# Niri
niri msg pick-window [equals to xprop]

# Check keymap / button

wev [equals to xev]

Check mouse button:
wev | grep -i button

# Check list font installed
fc-list | grep -i "nerd"

# xkboption for X
man xkeyboard-config

# nvim
set filetype=lisp

# Fish
fish_config
fish_update_completions


# Setting hostname Linux

hostnamectl set-hostname SGSGHCMIHRISOJA

# change mac address

sudo apt install macchanger
sudo macchanger -s enp0s31f6
sudo macchanger -m 6c:0b:84:22:be:c4 enp0s31f6

sudo EDITOR=nano crontab -e
@reboot macchanger -m 6c:0b:84:22:be:c4 enp0s31f6
@reboot tailscale up

sudo apt upgrade

> [!NOTE] Notes
> sudo tailscale up
> sudo tailscale down

# Check UUID (blkid)

sudo fdisk /dev/nvm0n1

> n (enter until finish)
> w

sudo mkfs.ext4 /dev/nvme0n1p3

# Check partition

lsblk

ll /dev/disk/by-uuid

# Setup Default apps

## setup for libreoffice24
xdg-mime default libreoffice24.2-writer.desktop application/vnd.openxmlformats-officedocument.wordprocessingml.document
xdg-mime default libreoffice24.2-writer.desktop application/msword
xdg-mime default libreoffice24.2-calc.desktop application/vnd.openxmlformats-officedocument.spreadsheetml.sheet
xdg-mime default libreoffice24.2-calc.desktop application/vnd.ms-excel
xdg-mime default libreoffice24.2-impress.desktop application/vnd.ms-powerpoint
xdg-mime default libreoffice24.2-impress.desktop application/vnd.openxmlformats-officedocument.presentationml.presentation

## setup for wps
xdg-mime default wps-office-wps.desktop application/vnd.openxmlformats-officedocument.wordprocessingml.document
xdg-mime default wps-office-wps.desktop application/msword
xdg-mime default wps-office-et.desktop application/vnd.openxmlformats-officedocument.spreadsheetml.sheet
xdg-mime default wps-office-et.desktop application/vnd.ms-excel
xdg-mime default wps-office-wpp.desktop application/vnd.ms-powerpoint
xdg-mime default wps-office-wpp.desktop application/vnd.openxmlformats-officedocument.presentationml.presentation

check for the setup
xdg-mime query default application/vnd.openxmlformats-officedocument.wordprocessingml.document
xdg-mime query default application/msword
xdg-mime query default application/vnd.openxmlformats-officedocument.spreadsheetml.sheet
xdg-mime query default application/vnd.ms-excel
xdg-mime query default application/vnd.ms-powerpoint
xdg-mime query default application/vnd.openxmlformats-officedocument.presentationml.presentation

# Setup default browser

xdg-settings get default-web-browser

xdg-open https://example.com

> to see what command is actually run when opening a URL

xdg-settings set default-web-browser microsoft-edge.desktop
xdg-settings set default-web-browser google-chrome.desktop

echo $SHELL

mkdir -p ~/marc/GitHub

sudo pacman -Syu
