# Before beginning, create a file called **~/.bash_aliases**:
# touch ~/.bash_aliases

# Then, make sure that this code appears in your **~/.bashrc** file:
# if [ -e $HOME/.bash_aliases ]; then
#     source $HOME/.bash_aliases
# fi

# Aliasing vi and vim to vimx
alias vi=vimx
alias vim=vimx

# Sort by file size
alias lt='ls --human-readable --size -1 -S --classify'

# ----------------------------------
# grep history
alias gh='history|grep'
# Example
# $ gh bash
# 482 cat ~/.bashrc | grep _alias
# 498 vi ~/.bashrc
# 530 vi ~/.bash_aliases
# 531 source ~/.bashrc
# ----------------------------------

# Sort by modification time
alias left='ls -t -1'

# Count files
alias count='find . -type f | wc -l'


# ---------------------------------------------------------------
# Create a Python virtual environment

# Running ve creates a new directory, called venv, 
# containing the usual virtual environment filesystem for Python3.
alias ve='python3 -m venv ./venv'

# The va alias activates the environment in your current shell:
alias va='source ./venv/bin/activate'
# ---------------------------------------------------------------


# Add a copy progress bar
alias cpv='rsync -ah --info=progress2'

# Simplify your Git workflow
# cg takes you to the top of your Git project, 
# no matter how deep into its directory structure you have descended.
alias cg='cd `git rev-parse --show-toplevel`'

# ll will list hidden files in Fedora
alias ll='ls -la'

# l will also list files
alias l='ls'

# Start Postgresql
alias ssp='sudo systemctl start postgresql'

# Status Postgresql
alias sstp='sudo systemctl status postgresql'
