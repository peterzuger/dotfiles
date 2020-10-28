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
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh/histfile
HISTSIZE=10000000
SAVEHIST=10000000
setopt appendhistory autocd extendedglob nomatch
unsetopt beep notify
bindkey "^[[3~" delete-char
bindkey -e
# End of lines configured by zsh-newuser-install

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


export EDITOR="emacs --no-window-system"
export PAGER=less
export VISUAL=$EDITOR
export PATH="$PATH:$HOME/.local/bin/"

# expicitly set feed bookmarks to different directory
export FEED_BOOKMARKS=$HOME/.zsh/newsfeed

if [[ $- == *i* ]]; then
   [[ -e ~/.zsh/liquidprompt/liquidprompt  ]] && source ~/.zsh/liquidprompt/liquidprompt
   [[ -e ~/.zsh/ssh-connect/ssh-connect.sh ]] && source ~/.zsh/ssh-connect/ssh-connect.sh
   [[ -e ~/.zsh/newsfeed.sh ]] && source ~/.zsh/newsfeed.sh
   [[ -e ~/.zsh/zsh-insulter/src/zsh.command-not-found ]] && source ~/.zsh/zsh-insulter/src/zsh.command-not-found
   stty -ixon
fi

function countdown(){
   date1=$((`date +%s` + $1));
   while [ "$date1" -ge `date +%s` ]; do
     echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
     sleep 0.1
   done
}

alias yy="mpv --really-quiet --volume=50 --autofit=30% --geometry=-10-15 --ytdl --ytdl-format='mp4[height<=?720]' -ytdl-raw-options=playlist-start=1"
alias ydl="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4"

alias ls="ls --color=always"
alias ll="ls -lFh"    # list as list
alias la="ls -aF"     # show all
alias lla="ls -laFh"  # list all
alias lS="ls -lFhS"   # list sort by file size
alias emacs=$EDITOR
