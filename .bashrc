# Normal user
export PS1="\[\e[01;32m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[01;36m\]\h\[\e[0m\]\[\e[00;37m\] \t \[\e[0m\]\[\e[01;35m\]\w\[\e[0m\]\[\e[01;31m\] $ \[\e[0m\]"

# Root user

export PS1="\[\e[01;37m\][\[\e[0m\]\[\e[01;31m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[01;34m\]\h\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;37m\]\t\[\e[0m\]\[\e[01;37m\] \w]\\$ \[\e[0m\]"
export PS1="\n\[\e[01;31m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[01;34m\]\h\[\e[00;37m\]:\[\e[0m\] \[\e[0m\]\[\e[01;35m\]\w\[\e[0m\]\[\e[01;37m\] \[\e[0m\]\n# "


# Nice colors when seeing mount file
# LS_COLORS=$LS_COLORS:'di=42:' ; export LS_COLORS

# LS_COLORS="$LS_COLORS:ow=103;30;01"
# ow is for other working directories
LS_COLORS="ow=01;93:ex=97"
export LS_COLORS

function cs {
    builtin cd "$@" && ls
}

# https://opensource.com/article/19/7/bash-aliasesk
if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi
