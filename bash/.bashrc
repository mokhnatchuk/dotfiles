[[ $- != *i* ]] && return

export MESA_GLTHREAD=true

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'

alias processes='ps aux'
alias ports='ss -tuln'

HISTSIZE=100000
HISTFILESIZE=100000
HISTCONTROL=ignoreboth:erasedups
HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"
HISTTIMEFORMAT='%F %T '

shopt -s histappend
shopt -s cmdhist
shopt -s histreedit
shopt -s histverify

shopt -s checkwinsize
shopt -s expand_aliases
shopt -s autocd
shopt -s dirspell
shopt -s cdspell
shopt -s nocaseglob

alias update='sudo pacman -Syu'
alias install='sudo pacman -S'
alias uninstall='sudo pacman -Rcsun'
alias installed='pacman -Q'
alias clean='sudo pacman -Sc'
alias cleann='sudo pacman -Scc'
alias search='pacman -Ss'
alias info='pacman -Si'
alias orphans='sudo pacman -Rns $(pacman -Qtdq)'
alias mirrors='sudo reflector --country Ukraine --verbose --save /etc/pacman.d/mirrorlist'
