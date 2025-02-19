autoload -Uz promptinit && promptinit
prompt redhat

autoload -U compinit
zstyle ':completion:*' completer _extensions _complete _approximate
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
bindkey -e

export PAGER="less"
export MANPAGER="less"

alias glas="ncmpcpp -s clock"
alias ls="ls -AGFhlv --group-directories-first --time-style=long-iso --color=auto"
alias date="date '+Current Date: %A, %B %d, %Y%nCurrent Time: %H:%M:%S'"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
RPROMPT='%{%}[%D{%T}]'

source /home/pavle/.config/broot/launcher/bash/br
