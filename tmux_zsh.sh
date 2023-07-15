#!/bin/zsh

conf_file="$HOME/.tmux.conf"

# Crea el archivo si no existe
if [ ! -f "$conf_file" ]; then
    touch "$conf_file"
fi

# Agrega el contenido al archivo
cat << EOF > "$conf_file"
# Send prefix
set-option -g prefix C-w
unbind-key C-w
bind-key C-w send-prefix

# Use Alt-arrow keys to switch panes
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

# Shift arrow to switch windows
bind -n S-Left previous-window
bind -n S-Right next-window

# Mouse mode
#setw -g mouse on

# Set easier window split keys
bind-key v split-window -h
bind-key h split-window -v

# Easy config reload
bind-key r source-file ~/.tmux.conf \; display-message "~/.tmux.conf reloaded."
EOF

echo "El archivo $conf_file se ha creado o actualizado."
