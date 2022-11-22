#!/bin/sh
set timeout 10

# 安装
sudo apt install zsh curl git -y

# 将 zsh 设置为默认 shell
chsh -s /bin/zsh

# 检查
echo $SHELL
# 返回 /usr/bin/zsh 即表示成功；若没成功，重启试试看


# 通过 curl
sh -c "$(curl -fsSL https://jihulab.com/rami/ohmyzsh/-/raw/master/tools/install.sh)" "" --unattended




# 自动补全 zsh-autosuggestions
git clone https://jihulab.com/rami/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


# 代码高亮 zsh-syntax-highlighting
git clone https://jihulab.com/rami/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


sed -i '1i export LC_ALL=C.UTF-8\
export LANG=C.UTF-8
' ~/.zshrc

sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc

sed -i 's/plugins=(git/plugins=( git\
zsh-autosuggestions\
zsh-syntax-highlighting\
/g' ~/.zshrc 

zsh