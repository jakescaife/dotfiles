# .bashrc

# Return if we are not in an interactive shell
[[ $- != *i* ]] && return

# Load command colours (requires dircolors)
eval $(dircolors -b ~/.dir_colors)

# Customise bash prompt
PS1='\[\033[00;32m\][\u@\h\[\033[00;37m\] \W\[\033[00;32m\]]\$\[\033[00m\] '

# Set default editor to vim
export VISUAL='nvim'
export EDITOR=$VISUAL

# Custom aliases
alias df='git --git-dir=$HOME/GitHub/dotfiles/ --work-tree=$HOME'
alias ls='ls --group-directories-first --color=auto'
alias ll='ls --group-directories-first --color=auto -l'
alias la='ls --group-directories-first --color=auto -Alv'
alias cp='cp -i'

# Load custom functions
source ~/.functions

export PATH="$HOME/.cargo/bin:$PATH"
