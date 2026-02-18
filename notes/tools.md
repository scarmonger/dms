printenv

To check the numerical (octal) chmod value of a folder or file in Linux, the most direct way is using the stat command.
stat -c "%a %n" ~/.gnupg
lsd: lsd -l --permission octal
exa / eza: eza -l --octal-permissions

# change mac address

sudo pacman -S macchanger
sudo macchanger -s eno1
sudo macchanger -m 6c:0b:84:22:be:c4 eno1

sudo EDITOR=nano crontab -e
@reboot macchanger -m 6c:0b:84:22:be:c4 eno1
@reboot tailscale up

sudo apt upgrade

> [!NOTE] Notes
> sudo tailscale up
> sudo tailscale down

## Check UUID (blkid)

# wifi

nmcli radio wifi on
nmcli device wifi rescan
nmcli device wifi list
nmcli device wifi connect DataOn
nmcli device wifi connect DataOn password xxx

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

# Check filetype dan setup default application

\*) CHECK FILETYPE
xdg-mime query filetype 1733280092454.jpg

> image/jpeg

\*) Check default application to handle certain filetype
xdg-mime query default image/jpeg

> imv.desktop

\*) Setup new default application
xdg-mime default org.kde.gwenview.desktop image/jpeg
xdg-mime default org.kde.gwenview.desktop image/png

# Troubleshooting Niri

If you do not have a greeter, login with "niri-session" or "Hyprland"

Troubleshooting:
Disable autostart: systemctl --user disable dms
View logs: journalctl --user -u dms
Uninstall: sudo pacman -Rs dms-shell-bin

# neovim / nvim mergetool difftool

https://gemini.google.com/share/5ed588432dbf

git config --global merge.tool nvim
git config --global mergetool.nvim.cmd 'nvim -d $LOCAL $REMOTE $MERGED -c "$wincmd w" -c "wincmd J"'
git config --global mergetool.nvim.trustExitCode true
git config --global mergetool.keepBackup false

Understanding the Config:

- merge.tool nvim: Sets Neovim as your default merge tool.

- mergetool.nvim.cmd: This is the exact string you asked about. Note that we use single quotes ' around the whole command so that the double quotes " inside (for the -c flags) are passed correctly to the shell.

- trustExitCode true: This tells Git that if you exit Neovim without an error, the merge was successful. If this is false, Git will ask you "Was the merge successful?" every single time you close the editor.

How to trigger it:
The next time you have a merge conflict, simply run:
`git mergetool`

Once this opens, you typically navigate to the bottom window and use these shortcuts:
[c / ]c: Jump to the previous/next conflict.
:diffget LOCAL: Pull the change from the left.
:diffget REMOTE: Pull the change from the right.
:wqa: Save and exit all windows to finish the merge.

Pro-Tip: Navigating the Merged FileOnce you are in the bottom (MERGED) window, you can use these Neovim commands to speed up your workflow:
do -> Diff Obtain: Pull changes from another pane into your current one.
dp -> Diff Put: Push changes from your current pane to another.
:diffupdateRefresh the diff highlighting (useful if things look "stuck").

```lua
if vim.o.diff then
    -- Get changes from LOCAL (left/branch 1)
    vim.keymap.set('n', '<leader>gl', ':diffget LOCAL<CR>', { desc = "Merge from LOCAL" })
    -- Get changes from REMOTE (right/branch 3)
    vim.keymap.set('n', '<leader>gr', ':diffget REMOTE<CR>', { desc = "Merge from REMOTE" })
end
```

**Visualizing the Workflow**
When you run git mergetool, your screen is split into three main areas. Understanding which "side" corresponds to which command is key:

Top Left (LOCAL): This is your current branch (e.g., main).

Top Right (REMOTE): This is the branch you are merging in (e.g., feature-branch).

Bottom (MERGED): This is the only file that actually gets saved.

**Quick Workflow Summary**
Open the tool with git mergetool.

Use ]c to jump to the next conflict.

Ensure your cursor is in the bottom window.

Press <leader>gl to take your version, or <leader>gr to take their version.

If you need to manually edit, just type directly in the bottom window.

Save and exit all with :wqa.

```gitconfig
[difftool]
    prompt = true
[diff]
    tool = nvimdiff
[difftool "nvimdiff"]
    cmd = "nvim -d \"$LOCAL\" \"$REMOTE\""

[merge]
	tool = vimdiff
[mergetool]
	keepBackup = false
[mergetool "vimdiff"]
	cmd = nvim -d $LOCAL $REMOTE $MERGED -c '$wincmd w' -c 'wincmd J'
```
