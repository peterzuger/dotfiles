# The following lines were added by compinstall

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _list _expand _complete _ignored _correct _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' condition 0
zstyle ':completion:*' expand prefix
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' glob 1
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**'
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu select=long
zstyle ':completion:*' old-list never
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' substitute 1
zstyle ':completion:*' verbose true
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit -d '$HOME/.config/zsh/zcompdump'
# End of lines added by compinstall

# Lines configured by zsh-newuser-install
HISTFILE="$HOME/.config/zsh/histfile"
HISTSIZE=10000000
SAVEHIST=10000000
setopt appendhistory autocd extendedglob extendedhistory
setopt histignorespace nomatch
unsetopt beep notify
bindkey "^[[3~" delete-char
bindkey -e
# End of lines configured by zsh-newuser-install

# only in screen
if [ -n "$STY" ]; then
    function preexec {
        if [[ "$1" == ssh\ * ]] || [[ "$1" == sudo\ * ]]; then
            echo -ne "\ek$(echo "$1" | awk '{print $2}')\e\\"
        else
            echo -ne "\ek${1%% *}\e\\"
        fi
    }
fi

# Ignore CTRL-D to prevent accidental shell exit
set -o ignoreeof

# This was written entirely by Mikael Magnusson (Mikachu)
# Basically type '...' to get '../..' with successive .'s adding /..
function rationalise-dot {
    local MATCH # keep the regex match from leaking to the environment
    if [[ $LBUFFER =~ '(^|/| |      |'$'\n''|\||;|&)\.\.$' ]]; then
        LBUFFER+=/
        zle self-insert
        zle self-insert
    else
        zle self-insert
    fi
}
zle -N rationalise-dot
bindkey . rationalise-dot

# without this, typing a . aborts incremental history search
bindkey -M isearch . self-insert


if [[ $- == *i* ]]; then
    [[ -e "$HOME/.config/zsh/liquidprompt/liquidprompt"  ]] && source "$HOME/.config/zsh/liquidprompt/liquidprompt"
    [[ -e "$HOME/.config/zsh/ssh-connect/ssh-connect.sh" ]] && source "$HOME/.config/zsh/ssh-connect/ssh-connect.sh"
    [[ -e "$HOME/.config/zsh/zsh-insulter/src/zsh.command-not-found" ]] && source "$HOME/.config/zsh/zsh-insulter/src/zsh.command-not-found"
    [[ -e "/usr/bin/virtualenvwrapper.sh" ]] && source /usr/bin/virtualenvwrapper.sh
    stty -ixon
fi

function countdown {
    date1=$((`date +%s` + $1));
    while [ "$date1" -ge `date +%s` ]; do
        echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
        sleep 0.1
    done
}

alias ls="/usr/bin/ls --color=always"
alias ll="/usr/bin/ls -l --classify --human-readable"    # list as list
alias la="/usr/bin/ls --all --classify"     # show all
alias lla="/usr/bin/ls -l --all --classify --human-readable"  # list all
alias lS="/usr/bin/ls -l --classify --human-readable -S"   # list sort by file size
alias emacs=$EDITOR
