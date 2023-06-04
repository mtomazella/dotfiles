# Pop shell dconf: https://community.frame.work/t/ubuntu-popos-shell-how-do-you-configure-the-keyboard-shortcuts-to-try-to-mimic-my-i3wm-config/6223

# Select window (pop shell)
dconf write '/org/gnome/shell/extensions/pop-shell/focus-left' "['<Alt>h']"
dconf write '/org/gnome/shell/extensions/pop-shell/focus-right' "['<Alt>l']"
dconf write '/org/gnome/shell/extensions/pop-shell/focus-up' "['<Alt>k']"
dconf write '/org/gnome/shell/extensions/pop-shell/focus-down' "['<Alt>j']"

# (Edit mode) Move window (pop shell)
dconf write '/org/gnome/shell/extensions/pop-shell/tile-move-left' "['h']"
dconf write '/org/gnome/shell/extensions/pop-shell/tile-move-right' "['l']"
dconf write '/org/gnome/shell/extensions/pop-shell/tile-move-up' "['k']"
dconf write '/org/gnome/shell/extensions/pop-shell/tile-move-down' "['j']"

# (Edit mode) Swap windows (pop shell)
dconf write '/org/gnome/shell/extensions/pop-shell/tile-swap-left' "['<Shift>h']"
dconf write '/org/gnome/shell/extensions/pop-shell/tile-swap-right' "['<Shift>l']"
dconf write '/org/gnome/shell/extensions/pop-shell/tile-swap-up' "['<Shift>k']"
dconf write '/org/gnome/shell/extensions/pop-shell/tile-swap-down' "['<Shift>j']"

# (Edit mode) Resize window (pop shell)
dconf write '/org/gnome/shell/extensions/pop-shell/tile-resize-left' "['<Ctrl>']"
dconf write '/org/gnome/shell/extensions/pop-shell/tile-resize-right' "['<Ctrl>h']"
dconf write '/org/gnome/shell/extensions/pop-shell/tile-resize-up' "['<Ctrl>j']"
dconf write '/org/gnome/shell/extensions/pop-shell/tile-resize-down' "['<Ctrl>k']"

# https://askubuntu.com/questions/1033069/how-move-window-to-left-right-workspace

# Move to workspace (gnome wm)
dconf write '/org/gnome/desktop/wm/keybindings/switch-to-workspace-left' "['<Super>h']"
dconf write '/org/gnome/desktop/wm/keybindings/switch-to-workspace-right' "['<Super>l']"
dconf write '/org/gnome/desktop/wm/keybindings/switch-to-workspace-down' "['<Super>j']"
dconf write '/org/gnome/desktop/wm/keybindings/switch-to-workspace-up' "['<Super>k']"

# Move window to workspace (gnome wm)
dconf write '/org/gnome/desktop/wm/keybindings/move-to-workspace-left' "['<Super><Alt>h']"
dconf write '/org/gnome/desktop/wm/keybindings/move-to-workspace-right' "['<Super><Alt>l']"
dconf write '/org/gnome/desktop/wm/keybindings/move-to-workspace-down' "['<Super><Alt>j']"
dconf write '/org/gnome/desktop/wm/keybindings/move-to-workspace-up' "['<Super><Alt>k']"

# Close window (gnome wm)
dconf write '/org/gnome/desktop/wm/keybindings/close' "['<Super>q','<Alt>4']"

