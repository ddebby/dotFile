# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Test if ~/.aliases exists and source it
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

#source ~/.shell/functions.sh
source ~/.zsh/plugins_before.zsh 
source ~/.zsh/settings.zsh
#source ~/.shell/bootstrap.sh
#source ~/.shell/external.sh

#source ~/.shell/aliases.sh
source ~/.zsh/prompt.zsh
source ~/.zsh/plugins_after.zsh
source ~/.zsh/custom.zsh

## hide host name No need
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

# ctags
set tags=~/fasttags
set tags+=~/.tags/fast2tags
# z history
source ~/.zsh/plugins/zsh-z.plugin.zsh
#[ -f /usr/local/lib/z.sh ] && source /usr/local/lib/z.sh

# For vim color in tmux error
if [[ $TERM == xterm ]]; then
      TERM=xterm-256color
    fi

PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig
export PKG_CONFIG_PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=yellow,underline"
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=magenta,underline"
#ZSH_HIGHLIGHT_STYLES[alias]=fg=blue,bold
#ZSH_HIGHLIGHT_STYLES[builtin]=fg=blue,bold
#ZSH_HIGHLIGHT_STYLES[function]=fg=blue,bold
#ZSH_HIGHLIGHT_STYLES[command]=fg=yellow,bold

