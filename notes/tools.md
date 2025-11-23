echo $SHELL

mkdir -p ~/marc/GitHub

sudo pacman -Syu

# xkboption for X
man xkeyboard-config

# nvim
set filetype=lisp

# Fish
fish_update_completions

# Check keymap / button

xev

Check mouse button:
xev | grep -i button

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
