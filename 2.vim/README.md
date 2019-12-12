# SpaceVim使用手册

> 中文手册： <https://spacevim.org/cn/documentation/>

## 1. Install

`curl -sLf <https://spacevim.org/install.sh> | bash`

卸载并回滚原vim

`curl -sLf <https://spacevim.org/install.sh> | bash -s -- --uninstall`



## 2. 快捷键

SpaceVim中的快捷键都容易记忆：

- 窗口（window）就是**w**，
- 文件（file）就是**f**，
- 缓冲区（buffer）就是**b**，
- Tab管理就是**t**。

1. `SPC + b +d` 关闭buffer
2. `SPC + S + p` : 工程目录下检索；
3. `SPC + c +l`: 快速注释当前行
4. `SPC + l + r`: Language RUN



## 3.配置

配置文件位置： `~/.SpaceVim.d/init.toml`

```bash
[[layers]] 
name = "lang#python"

[[layers]]
name = "gtags"
gtagslabel = "ctags"

[[custom_plugins]]
name = "joshdick/onedark.vim"
```



以下是在 SpaceVim 中安装插件的方法 ↓

```text
[[custom_plugins]]
    name = "xxx/xxx"
```



## 4. 其它

### 更新vim

```bash
sudo apt remove --purge vim vim-runtime vim-tiny vim-common vim-doc vim-scripts -y
sudo add-apt-repository ppa:jonathonf/vim 
sudo apt update 
sudo apt-get -u dist-upgrade
sudo apt install vim 
```

### 关于Ctags

```bash
sudo apt install ctags
sudo apt install exuberant-ctags

## 查看需要输出tags文件位置
locate fastai|less

## 3. 生成tags文件
ctags -R -o ~/fasttags /home/shang/.conda/envs/pyfast/lib/python3.7/site-packages/fastai/

## 4. 将tags文件记录到vim引导文件
set tags=~/.tags/fasttags                                                                 
set tags+=~/.tags/torchtags
```

