
## SpaceVIM
curl -sLf https://spacevim.org/install.sh | bash

To add Python language support in SpaceVim, you need to enable the lang#python layer. Press SPC f v d to open SpaceVim configuration file, and add the following snippet to your configuration:

[[layers]]
  name = "lang#python"

## You Complete Me

```
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# make sure in dir ~/.vim/bundle
  cd ~/.vim/bundle
# Download by git clone
  git clone https://github.com/Valloric/YouCompleteMe.git

  cd ~/.vim/bundle/YouCompleteMe
  ./install.py --all

```
