
#!/bin/bash


author=rami
# github=https://github.com/elliot-bia/Linux_tools.git


Ubuntu22AptSource(){
    # Ubuntu 22 操作系统
    echo "This is Ubuntu 22.\n Updating source"
    cp /etc/apt/sources.list /etc/apt/sources.list.bak; \
    echo """
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy main restricted universe multiverse
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-updates main restricted universe multiverse
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-backports main restricted universe multiverse
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-security main restricted universe multiverse
    """> /etc/apt/sources.list;\
    apt-get clean all;\
    apt-get update
}
Ubuntu20AptSource(){
    echo "This is Ubuntu 20.\n Updating source"
    cp /etc/apt/sources.list /etc/apt/sources.list.bak; \
    echo """
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse
    """> /etc/apt/sources.list;\
    apt-get clean all;\
    apt-get update
}
Ubuntu16AptSource(){
    echo "This is Ubuntu 20.\n Updating source"
    cp /etc/apt/sources.list /etc/apt/sources.list.bak; \
    echo """
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial main restricted universe multiverse
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-security main restricted universe multiverse
    """> /etc/apt/sources.list;\
    apt-get clean all;\
    apt-get update
}
CentOS7YumSource(){
    # CentOS 7 操作系统
    echo "CentOS 7, updating source"
    cp /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup;\
    sudo sed -e 's|^mirrorlist=|#mirrorlist=|g' \
         -e 's|^#baseurl=http://mirror.centos.org/centos|baseurl=https://mirrors.tuna.tsinghua.edu.cn/centos|g' \
         -i.bak \
         /etc/yum.repos.d/CentOS-*.repo
    yum clean all;\
    yum makecache
}
CentOS8YumSource(){
    echo "CentOS 7, updating source"
    sudo sed -e 's|^mirrorlist=|#mirrorlist=|g' \
         -e 's|^#baseurl=http://mirror.centos.org/$contentdir|baseurl=https://mirrors.tuna.tsinghua.edu.cn/centos|g' \
         -i.bak \
         /etc/yum.repos.d/CentOS-*.repo
    yum clean all;\
    yum makecache
}



get_system_info() {
    if [[ $(cat /etc/os-release) == *"Ubuntu 22"* ]]; then
        system_info="Ubuntu 22"
    elif [[ $(cat /etc/os-release) == *"Ubuntu 20"* ]]; then
        system_info="Ubuntu 20"
    elif [[ $(cat /etc/os-release) == *"Ubuntu 16"* ]]; then
        system_info="Ubuntu 16"
    elif [[ $(cat /etc/os-release) == *"CentOS"* && $(cat /etc/centos-release) == *"7."* ]]; then
        system_info="CentOS 7"
    elif [[ $(cat /etc/os-release) == *"CentOS"* && $(cat /etc/centos-release) == *"8."* ]]; then
        system_info="CentOS 8"
    else
        # 其他操作系统
        system_info="Other OS"
    fi
}

# 主函数
main() {
    get_system_info

    # 输出当前系统信息
    echo "Detected system: $system_info"

    # 根据系统信息设置选项值
    case $system_info in
        "Ubuntu 22")
            OPTION=1
            ;;
        "Ubuntu 20")
            OPTION=2
            ;;
        "Ubuntu 16")
            OPTION=3
            ;;
        "CentOS 7")
            OPTION=4
            ;;
        "CentOS 8")
            OPTION=5
            ;;
        *)
            echo "未知的系统."
            ;;
    esac
    # 选项菜单
    echo "当前系统为: $system_info, 请问是否正确?(y/n)"
    echo "如果有其他系统,可以选择对应的数字"
    echo "1. Ubuntu 22"
    echo "2. Ubuntu 20"
    echo "3. Ubuntu 16"
    echo "4. CentOS 7"
    echo "5. CentOS 8"

    read -p "请选择选项: " choice </dev/tty

   if [ "$choice" = "y" ] || [ "$choice" = "Y" ]; then
        case $OPTION in
            1)
                Ubuntu22AptSource
                ;;
            2)
                Ubuntu20AptSource
                ;;
            3)
                Ubuntu16AptSource
                ;;
            4)
                CentOS7YumSource
                ;;
            5)
                CentOS8YumSource
                ;;
            *)
                echo "无效的选项."
                echo "操作被中断."
                exit 1
                ;;
        esac
    else
        case $choice in
            1)
                Ubuntu22AptSource
                ;;
            2)
                Ubuntu20AptSource
                ;;
            3)
                Ubuntu16AptSource
                ;;
            4)
                CentOS7YumSource
                ;;
            5)
                CentOS8YumSource
                ;;
            *)
                echo "无效的选项."
                echo "操作被中断."
                exit 1
                ;;
        esac
    fi
}

# 执行主函数
main
