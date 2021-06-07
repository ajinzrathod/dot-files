# Color in tmux
set -g default-terminal "screen-256color"

# Open new window in same directory
bind '"' split-window -c "#{pane_current_path}"
bind % split-window -h -c "#{pane_current_path}"
bind c new-window -c "#{pane_current_path}"

# TMUX using HJKL to navigate panes
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

# Turn Mouse on
set -g mouse on

# Set VI mode in tmux
set-window-option -g mode-keys vi

# set selection and copy as vim in tmux
bind-key -T copy-mode-vi 'v' send -X begin-selection
bind-key -T copy-mode-vi 'y' send -X copy-selection-and-cancel
