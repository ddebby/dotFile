### 安装oh-my-zsh

Ubuntu默认使用Bash(Bourne-again Shell)，但是Zsh是一个更好的选择，原因如下:

1. 和bash的兼容性非常好，习惯了bash可以无痛迁移到zsh。
2. 命令补全功能非常强大，可以补齐路径，补齐命令，补齐参数等，还能列出来符合的内容。 非内置的命令也可以自定义插件实现命令补全。
3. 你无需输入cd，直接输入路径就可以切换到对应的目录。
4. 不同shell进程里面共享历史记录。
5. 大量的定制选项，自由度很高，这也是[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)能兴起的原因


oh-my-zsh是一个提升效率的命令行工具，它基于zsh，可以定义主题设置，插件机制，内置了非常多的功能函数和别名。安装它需要先安装zsh和git：

```
$ sudo apt-get install git zsh curl -yq
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
Cloning Oh My Zsh...
Cloning into '/home/vagrant/.oh-my-zsh'...  # oh-my-zsh放到了 ~/.oh-my-zsh目录下
remote: Counting objects: 748, done.
remote: Compressing objects: 100% (612/612), done.
remote: Total 748 (delta 15), reused 564 (delta 9), pack-reused 0
Receiving objects: 100% (748/748), 483.02 KiB | 150.00 KiB/s, done.
Resolving deltas: 100% (15/15), done.
Checking connectivity... done.
Looking for an existing zsh config...
Found ~/.zshrc. Backing up to ~/.zshrc.pre-oh-my-zsh
Using the Oh My Zsh template file and adding it to ~/.zshrc
Copying your current PATH and adding it to the end of ~/.zshrc for you.
Time to change your default shell to zsh!
Password:  # 输入设置的密码，这里就是ubuntu
         __                                     __
  ____  / /_     ____ ___  __  __   ____  _____/ /_
 / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \
/ /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / /
\____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/
                        /____/                       ....is now installed!


Please look over the ~/.zshrc file to select plugins, themes, and options.

p.s. Follow us at https://twitter.com/ohmyzsh.

p.p.s. Get stickers and t-shirts at http://shop.planetargon.com.
```

出现这样的提示就安装完成了

### 设置主题

oh-my-zsh自带了很多的主题, 但是我们这里选择了另外一个主题 [pure](https://github.com/sindresorhus/pure)

```
➜  ~  git clone https://github.com/sindresorhus/pure .pure
➜  ~  sudo ln -s /home/ubuntu/.pure/pure.zsh /usr/local/share/zsh/site-functions/prompt_pure_setup
➜  ~  sudo ln -s /home/ubuntu/.pure/async.zsh /usr/local/share/zsh/site-functions/async
```

然后在个人的zsh配置文件 ~/.zshrc添加如下2行, 退出再登录就可以看到效果了:

```
autoload -U promptinit && promptinit
prompt pure
```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


### 插件
```
# ~/.zshrc:
plugins=(
  git
  extract
  autojump
  zsh-autosuggestions
  zsh-syntax-highlighting
)
```
#### git

自带插件，可以使用缩写命令, 比如 `gaa` -> `git add --all`, 通过`alias | grep git`查看所有支持缩写命令

激活: 添加到`~/.zshrc`的plugins列表

#### extract

自带插件，不用再使用复杂的`tar`来解压压缩包了

激活: 添加 `extract` 到 `~/.zshrc` 的plugins列表

#### autojump

使用`j`命令直接快速进入某个目录, 比如 `j Downloads` -> `cd ~/Downloads`

安装: `brew install autojump`

激活: 添加 `autojump` 至 `~/.zshrc` 配置文件的插件列表。

#### zsh-syntax-highlighting

命令高亮插件，命令不再只是同一个颜色了

安装: `brew install zsh-syntax-highlighting`

激活: 添加 `zsh-syntax-highlighting` 至 `~/.zshrc` 配置文件的插件列表。

#### zsh-autosuggestions
输入时按右方向键→自动补全命令

安装: `brew install zsh-autosuggestions`

激活: 添加 `zsh-autosuggestions` 至 `~/.zshrc` 配置文件的插件列表。




### 隐藏主机名
配置文件 `~/.oh-my-zsh/themes/xxx`
或者直接在`~/.zshrc`文件中添加：
```bash

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}
```

