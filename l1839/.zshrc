# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Kent fixes
autoload -U +X bashcompinit && bashcompinit
autoload -U +X compinit && compinit
export MOZ_WEBRENDER=1
export MOZ_ACCELERATED=1
#alias history="history 1"
export HISTCONTROL=ignoreboth
export EDITOR=vim
#export TERM=terminator
export TERMINAL=terminator

export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/google-chrome-stable

# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' glob 1
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' max-errors 1 numeric
zstyle ':completion:*' substitute 1
zstyle :compinstall filename '/home/kent/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install

# History
HISTFILE=~/.local/share/zsh/zsh_histfile
#HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
# History immediate append
setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "
# History timestamp
setopt EXTENDED_HISTORY

bindkey -e
# End of lines configured by zsh-newuser-install

#HIST_STAMPS="yyyy-mm-dd"

# Sources
for f in ~/.config/zsh/plugins/*; do source "$f"; done
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
#source ~/.config/zsh/plugins/colored-man-pages.plugin.zsh

# CTRL-o start ranger
#bindkey -s '^o' 'ranger\n'

# Autosuggest accept
bindkey '^ ' autosuggest-accept

# Edit line in vim with ctrl-e:
#autoload edit-command-line; zle -N edit-command-line
#bindkey '^e' edit-command-line

# Load aliases and shortcuts if existent.
# [ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
# Enable colors and change prompt:
autoload -U colors && colors

bindkey	'^[[H'	beginning-of-line
bindkey	'^[[F'	end-of-line
bindkey	'^[[3~'	delete-char

# CTRL-å start emoji selector
bindkey -s '^o' 'dmenu_unicode'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
