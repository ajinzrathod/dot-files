# Before beginning, create a file called **~/.bash_aliases**:
# touch ~/.bash_aliases

# Then, make sure that this code appears in your **~/.bashrc** file:
# if [ -e $HOME/.bash_aliases ]; then
#     source $HOME/.bash_aliases
# fi

# Aliasing vi and vim to vimx
# alias vi=vimx
# alias vim=vimx

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

# Tomcat
alias sst='sudo systemctl start tomcat'
alias sstt='sudo systemctl status tomcat'
alias ssrt='sudo systemctl restart tomcat'

alias d1='cd ~/Documents/git/personal/cohen-s-kappa; va; cd ck; vi'
alias d2='cd ~/Documents/git/personal/cohen-s-kappa; va; cd ck;'
alias run='python manage.py runserver'


# Start Apache2
alias ssa='sudo systemctl start apache2'

# Status Apache2
alias ssta='sudo systemctl status apache2'

# Start jupyter-notebook
alias jn='jupyter-notebook'

# update-alternatives java and javac
alias uajava='sudo update-alternatives --config java'
alias uajavac='sudo update-alternatives --config javac'
alias javal='update-java-alternatives -l'

# How do I reload the terminal in Ubuntu?

# This will start a new bash login shell new loading your profile. It will
# inherit the other shells environment though, unless some values are overridden.
#
# If you exit this bash, you'll be in your original shell again.
alias bl='bash --login'

# Dropping a database which is currently in use
ct() {
    # https://dotnetcrunch.wordpress.com/2013/07/12/sqlcmd-dropping-a-database-which-is-currently-in-use/
    echo "Setting Single User..."
    # Not sure but below line closes existing connections
    sqlcmd -S localhost -U sa -P "n0-Password" -Q "ALTER DATABASE cats_test SET SINGLE_USER WITH ROLLBACK IMMEDIATE"
    echo "Done"

    echo "Dropping Database cats_test..."
    sqlcmd -S localhost -U sa -P "n0-Password" -Q "DROP DATABASE cats_test"
    echo "Done"

    echo "Creating Database cats_test..."
    sqlcmd -S localhost -U sa -P "n0-Password" -Q "CREATE DATABASE cats_test"
    echo "Done"
}
