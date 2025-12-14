!/bin/bash
paths=$(yazi --chooser-file=/dev/stdout "$@")
if [ -n "$paths" ]; then
  # Example for Helix to open the selected file
  zellij action toggle-floating-panes
  zellij action write 27 # ESC
  zellij action write-chars ";open $paths"
  zellij action write 13 # Enter
fi
