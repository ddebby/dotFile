# Custom config, for examples: conda env config
export PATH=/anaconda/bin:$PATH
# >>> conda initialize >>>
export PATH=$PATH:/usr/local/cuda-10.0/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-10.0/lib64
export CUDA_HOME=/usr/local/cuda

export PATH=$PATH:/home/inesa-gao/.local/bin
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
