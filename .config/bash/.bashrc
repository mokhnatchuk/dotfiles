# .bashrc

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\e[1;34m\]\w \[\e[1;32m\]\$ \[\e[0m\]'
export PATH=$HOME/.local/bin:$PATH
