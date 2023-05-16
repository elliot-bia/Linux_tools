#!/bin/bash

author=rami
# github=https://github.com/elliot-bia/Linux_tools.git
echo "author=$author"

MirrorsList(){

    echo "选择对应的源"
    echo "1. 清华(默认)"
    echo "2. 阿里"
    echo "3. 腾讯"
    echo "4. 163"
    echo "5. 华为"
    echo "6. 中科大"

    read -r -p "请选择对应的源(默认可以直接回车): " MirrorsOption </dev/tty
    # 根据不同的输入选择对应的变量
    case $MirrorsOption in
    "")
        MirrorsSites="mirrors.tuna.tsinghua.edu.cn"
        ;;
    1)
        MirrorsSites="mirrors.tuna.tsinghua.edu.cn"
        ;;
    2)
        MirrorsSites="mirrors.aliyun.com"
        ;;
    3)
        MirrorsSites="mirrors.cloud.tencent.com"
        ;;
    4)
        MirrorsSites="mirrors.163.com"
        ;;
    5)
        MirrorsSites="repo.huaweicloud.com"
        ;;
    6)
        MirrorsSites="mirrors.ustc.edu.cn"
        ;;
    *)
        echo "选择出错!."
        echo "操作被中断."
        exit 1
        ;;
    esac

    echo "选择的镜像源值为: $MirrorsSites"

}


UbuntuAptSource(){
    # Ubuntu 操作系统
    echo -e "This is Ubuntu.\nUpdating source"

    MirrorsList

    sudo sed -e "s@//.*archive.ubuntu.com@//$MirrorsSites@g" \
        -e "s@//.*security.ubuntu.com@//$MirrorsSites@g" \
        -i.bak \
    /etc/apt/sources.list

    sudo apt-get clean all;\
    sudo apt-get update
}

CentOS7YumSource(){
    # CentOS 7 操作系统
    echo "CentOS 7, updating source"

    MirrorsList

    sudo sed -e 's|^mirrorlist=|#mirrorlist=|g' \
         -e 's|^#baseurl=http://mirror.centos.org/centos|baseurl=https://$MirrorsSites/centos|g' \
         -i.bak \
         /etc/yum.repos.d/CentOS-Base.repo

    yum clean all;\
    yum makecache
}


DebianAptSource(){
    # Ubuntu 操作系统
    echo -e "This is Debian\nUpdating source"

    MirrorsList
    sudo apt-get install apt-transport-https ca-certificates -y

    sudo sed -e "s@http://.*debian.org@https://$MirrorsSites@g" \
    -i.bak \
    /etc/apt/sources.list

    sudo apt-get clean all;\
    sudo apt-get update
}

KaliAptSource(){
    # Ubuntu 操作系统
    echo -e "This is Kali.\nUpdating source"

    MirrorsList
    sudo apt-get install apt-transport-https ca-certificates -y

    sudo sed -e "s#http://http.kali.org/kali#https://$MirrorsSites/kali#g" \
    -i.bak \
    /etc/apt/sources.list

    sudo apt-get clean all;\
    sudo apt-get update
}


get_system_info() {
    if [[ $(cat /etc/os-release) == *"Ubuntu"* ]]; then
        system_info="Ubuntu"
    elif [[ $(cat /etc/os-release) == *"CentOS"* && $(cat /etc/centos-release) == *"7."* ]]; then
        system_info="CentOS 7"
    elif [[ $(cat /etc/os-release) == *"kali"* ]]; then
        system_info="Kali"
    elif [[ $(cat /etc/os-release) == *"debian"* ]]; then
        system_info="Debian"
    else
        # 其他操作系统
        system_info="Other OS"
    fi
}

# 主函数
main() {
    get_system_info

    # 根据系统信息设置选项值
    case $system_info in
        "Ubuntu")
            OPTION=1
            ;;
        "CentOS 7")
            OPTION=2
            ;;
        "Kali")
            OPTION=3
            ;;
        "Debian")
            OPTION=4
            ;;
        *)
            echo "未知的系统."
            ;;
    esac
    # 选项菜单
    echo -e "\n检测到Linux系统为: $system_info\n"
    echo "如果有其他系统,可以选择对应的数字"
    echo "1. Ubuntu"
    echo "2. CentOS 7"
    echo "3. Kali"
    echo "4. Debian"

    read -r -p "当前系统为: $system_info, 请问是否正确?(y/n): " choice </dev/tty

    if [ "$choice" = "y" ] || [ "$choice" = "Y" ]; then
        case $OPTION in
            1)
                UbuntuAptSource
                ;;
            2)
                CentOS7YumSource
                ;;
            3)
                KaliAptSource
                ;;
            4)
                DebianAptSource
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
                UbuntuAptSource
                ;;
            2)
                CentOS7YumSource
                ;;
            3)
                KaliAptSource
                ;;
            4)
                DebianAptSource
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
