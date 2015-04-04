# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Append to the history file instead of overwrite it
shopt -s histappend

# Append the previous command to history each time a prompt is shown
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Increase history size
export HISTSIZE=1000
export HISTFILESIZE=1000

# Default aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cd..='cd ..'
alias cp='cp -irv'
alias du='du -h --max-depth=1'
alias l='ls -aF --group-directories-first'
alias la='ls -la'
alias ll='ls -CF -alh --group-directories-first'
alias md='mkdir -p'
alias mv='mv -iv'
alias rm='rm -ir'

# Put your fun stuff here.
