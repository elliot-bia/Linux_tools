#!/usr/bin/expect
set timeout 10

# 安装
sudo apt install zsh curl git -y

# 将 zsh 设置为默认 shell
chsh -s /bin/zsh

# 检查
echo $SHELL
# 返回 /usr/bin/zsh 即表示成功；若没成功，重启试试看

# 通过 curl
spawn sh -c "$(curl -fsSL https://jihulab.com/rami/ohmyzsh/-/raw/master/tools/install.sh)"

expect "default shell"

send "Y\r"


# 自动补全 zsh-autosuggestions
git clone https://jihulab.com/rami/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


# 代码高亮 zsh-syntax-highlighting
git clone https://jihulab.com/rami/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


# 
sed -i '/ZSH_THEME/ c\
ZSH_THEME=agnoster
' ~/.zshrc

sed -i 's/plugins=(/plugins=( git\
zsh-autosuggestions\
zsh-syntax-highlighting/g' ~/.zshrc

source ~/.zshrc