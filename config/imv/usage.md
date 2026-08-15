https://sr.ht/~exec64/imv/

# Opening images
imv image1.png another_image.jpeg a_directory

# Opening a directory recursively
imv -r Photos

# Opening images via stdin
find . -type f -name "*.svg" | imv

# Open an image fullscreen
imv -f image.jpeg

# Viewing images in a random order
find . -type f -name "*.png" | shuf | imv

# Viewing images from stdin
curl http://somesi.te/img.png | imv -

# Viewing multiple images from the web
curl -Osw '%{filename_effective}\n' 'http://www.example.com/[1-10].jpg' | imv

# SCRIPTING
With the default bindings, imv can be used to select images in a pipeline by using the p hotkey to print the current image's path to stdout. The -l flag can also be used to tell imv to list the remaining paths on exit for a "open set of images, close unwanted ones with x, then quit imv to pass the remaining images through" workflow.

Key bindings can be customised to run arbitrary shell commands. Environment variables are exported to expose imv's state to scripts run by it. These scripts can in turn modify imv's behaviour by invoking imv-msg with $imv_pid.

For example:

```sh
#!/usr/bin/bash
imv "$@" &
imv_pid = $!

while true; do
  # Some custom logic
  # ...

  # Close all open files
  imv-msg $imv_pid close all
  # Open some new files
  imv-msg $imv_pid open ~/new_path

  # Run another script against the currently open file
  imv-msg $imv_pid exec another-script.sh '$imv_current_file'
done
```
