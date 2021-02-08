# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/inesa-gao/.oh-my-zsh"
export PATH=/anaconda/bin:$PATH
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="agnoster"
#ZSH_THEME="ys"
#ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-autosuggestions
  #zsh-syntax-highlighting
  z
  colored-man-pages
  #zsh-dircolors-solarized
  )


source $ZSH/oh-my-zsh.sh
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ll='ls -l'
alias vi='vim'
alias grep='grep --color=auto'
alias gz='tar -xzvf'
alias tgz='tar -zvcf'
alias nb='cd /home/inesa-gao/gaoc/notebooks'
alias ws='cd /home/inesa-gao/gaoc'
alias fastai='source /home/inesa-gao/gaoc/venv/fastai/bin/activate'
alias tf2='source /home/inesa-gao/gaoc/venv/tf2/bin/activate'
alias torch='source /home/inesa-gao/gaoc/venv/pytorch/bin/activate'
alias data='cd /home/inesa-gao/gaoc/0.data'
alias paddle='source /home/inesa-gao/gaoc/venv/paddlepaddle/bin/activate'

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

## hide host name
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}


export PATH=$PATH:/usr/local/cuda-10.0/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-10.0/lib64
export CUDA_HOME=/usr/local/cuda

export PATH=$PATH:/home/inesa-gao/.local/bin


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/inesa-gao/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/inesa-gao/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/inesa-gao/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/inesa-gao/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export NVM_DIR="/home/inesa-gao/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# ctags
set tags=~/fasttags
set tags+=~/.tags/fast2tags
# z history
source /usr/local/lib/z.sh

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
