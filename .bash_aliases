# Sort by file size
alias lt='ls --human-readable --size -1 -S --classify'

alias ve38='python3 -m venv ./env'
alias ve311='python3.11 -m venv ./env'

# The va alias activates the environment in your current shell:
alias va='source ./env/bin/activate'

# To list all containers, both running and stopped,
alias dpsa='sudo docker ps -a'

# Start a specific container
alias ds='sudo docker start $container_id'

# alias dss='sudo docker start 0c5c10a33b12'
alias sb='cd /home/ajinzrathod/Documents/git/personal/spendybyte && va'
alias gg1='cd ~/Documents/gsm/gsm-quiz/ && va && cd gsmquiz'
alias gg2='cd ~/Documents/gsm/gsm-quiz/ && va && cd gsmquiz && python manage.py runserver'

alias run='python manage.py runserver'

alias update-java='sudo update-alternatives --config java'
alias update-javac='sudo update-alternatives --config javac'


# How do I reload the terminal in Ubuntu?

# This will start a new bash login shell new loading your profile. It will
# inherit the other shells environment though, unless some values are overridden.
#
# If you exit this bash, you'll be in your original shell again.
alias bl='bash --login'

# Dropping a database which is currently in use
dcatstest() {
    # systemctl start mssql-server

    # https://dotnetcrunch.wordpress.com/2013/07/12/sqlcmd-dropping-a-database-which-is-currently-in-use/
    echo "Setting Single User..."
    # Not sure but below line closes existing connections
    sqlcmd -S localhost -U sa -P "n0-Password" -Q "ALTER DATABASE cats_test SET SINGLE_USER WITH ROLLBACK IMMEDIATE"
    echo "Done"

    echo "Dropping Database cats_test..."
    sqlcmd -S localhost -U sa -P "n0-Password" -Q "DROP DATABASE IF EXISTS cats_test"
    echo "Done"

    echo "Creating Database cats_test..."
    sqlcmd -S localhost -U sa -P "n0-Password" -Q "CREATE DATABASE cats_test"
    echo "Done"

    echo "Setting Mutiple User..."
    sqlcmd -S localhost -U sa -P "n0-Password" -Q "ALTER DATABASE cats_test SET MULTI_USER WITH ROLLBACK IMMEDIATE"
    echo "Done"
}

dcatsreal() {
    # systemctl start mssql-server

    # https://dotnetcrunch.wordpress.com/2013/07/12/sqlcmd-dropping-a-database-which-is-currently-in-use/
    echo "Setting Single User..."
    # Not sure but below line closes existing connections
    sqlcmd -S localhost -U sa -P "n0-Password" -Q "ALTER DATABASE cats SET SINGLE_USER WITH ROLLBACK IMMEDIATE"
    echo "Done"

    echo "Dropping Database cats..."
    sqlcmd -S localhost -U sa -P "n0-Password" -Q "DROP DATABASE IF EXISTS cats"
    echo "Done"

    echo "Creating Database cats..."
    sqlcmd -S localhost -U sa -P "n0-Password" -Q "CREATE DATABASE cats"
    echo "Done"

    echo "Setting Mutiple User..."
    sqlcmd -S localhost -U sa -P "n0-Password" -Q "ALTER DATABASE cats SET MULTI_USER WITH ROLLBACK IMMEDIATE"
    echo "Done"
}

# sudo apt-get remove webtorrent-desktop

alias absmock='cd ~/Documents/incubyte/rf-cats/cats-apps/abs-mock'
alias cdrf='cd /home/ajinzrathod/Documents/incubyte/rf-cats'
