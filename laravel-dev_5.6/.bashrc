

#-------------------------------------------------------------
# Source global definitions (if any)
#-------------------------------------------------------------


if [ -f /etc/bashrc ]; then
      . /etc/bashrc   # --> Read /etc/bashrc, if present.
fi

function _exit()              # Function to run upon exit of shell.
{
    echo -e "\e[0;31mHasta la vista, baby!\e[0m"
}   
trap _exit EXIT

#============================================================
#
#  ALIASES AND FUNCTIONS
#
#  Arguably, some functions defined here are quite big.
#  If you want to make this file smaller, these functions can
#+ be converted into scripts and removed from here.
#
#============================================================

#-------------------
# Personnal Aliases
#-------------------

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mvd='mv_dir'
# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'

function h() {
    if [ -n $1 ]; then 
        echo $1
        history 50 | grep $1
    else 
        history 10
    fi
}

alias ..='cd ..'
alias ...='cd ../..'


#-------------------------------------------------------------
# The 'ls' family (this assumes you use a recent GNU ls).
#-------------------------------------------------------------
# Add colors for filetype and  human-readable sizes by default on 'ls':

alias ls='ls -h --color'
alias lx='ls -lXB'         #  Sort by extension.
alias lk='ls -lSr'         #  Sort by size, biggest last.
alias lt='ls -ltr'         #  Sort by date, most recent last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.

# The ubiquitous 'll': directories first, with alphanumeric sorting:
alias ll="ls -lv --group-directories-first"
alias lm='ll |more'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.
alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...


alias artisan="php artisan"
alias a="php artisan"

# Find a file with a pattern in name:
function ff() { find . -type f -iname '*'"$*"'*' -ls ; }
