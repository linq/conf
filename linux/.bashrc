#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# export
export TERM=xterm-256color
export HISTCONTROL=ignoredups
export HISTCONTROL=ignorespace
export EDITOR=vi
export PROMPT_COMMAND='echo -ne "\033]0;$PWD\007"'

# alias
alias ls='ls --color=auto'
alias vi="vim"


PS1='\[\e[1;31m\][\[\e[m\]\[\e[1;34m\]\w\[\e[m\]\[\e[1;31m\]]\[\e[m\] \[\e[1;32m\]\$\[\e[m\] '

# color man page
man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}
