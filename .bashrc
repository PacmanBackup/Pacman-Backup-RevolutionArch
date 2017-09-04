#force_color_prompt=yes

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

[[ $- != *i* ]] && return

[ -r /usr/share/bash-completion/bash_completion    ] && . /usr/share/bash-completion/bash_completion

PS1='[\u@\h \W]\$ '

# aliases
alias vi='vim'
alias ls='ls -alF --color=auto'
alias dirs='dirs -v'
alias h='history'
alias su='su -l'
alias c='clear'
alias e='exit'
alias sdn='sudo shutdown now'

# screenfetch
screenfetch

force_color_prompt=yes
