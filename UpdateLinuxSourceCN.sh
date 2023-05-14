
#!/bin/bash


author=rami
# github=https://github.com/elliot-bia/Linux_tools.git


Ubuntu22AptSource(){
    # Ubuntu 22 操作系统
    echo -e "This is Ubuntu 22.\n Updating source"
    cp /etc/apt/sources.list /etc/apt/sources.list.bak; \
    
    echo "选择对应的源"
    echo "1. 清华(默认)"
    echo "2. 阿里"
    echo "3. 腾讯"
    echo "4. 163"

    read -p "请选择对应的源(默认可以直接回车): " choice_source </dev/tty

    case $choice_source in
    "")
        echo """
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy main restricted universe multiverse
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-updates main restricted universe multiverse
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-backports main restricted universe multiverse
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-security main restricted universe multiverse
        """> /etc/apt/sources.list;\
        ;;
    1)
        echo """
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy main restricted universe multiverse
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-updates main restricted universe multiverse
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-backports main restricted universe multiverse
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-security main restricted universe multiverse
        """> /etc/apt/sources.list;\
        ;;
    2)
        echo """
        deb https://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse
        deb https://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse
        deb https://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse
        deb https://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse
        """> /etc/apt/sources.list;\
        ;;
    3)
        echo """
        deb https://mirrors.cloud.tencent.com/ubuntu/ jammy main restricted universe multiverse
        deb https://mirrors.cloud.tencent.com/ubuntu/ jammy-updates main restricted universe multiverse
        deb https://mirrors.cloud.tencent.com/ubuntu/ jammy-backports main restricted universe multiverse
        deb https://mirrors.cloud.tencent.com/ubuntu/ jammy-security main restricted universe multiverse
        """> /etc/apt/sources.list;\
        ;;
    4)
        echo """
        deb https://mirrors.163.com/ubuntu/ jammy main restricted universe multiverse
        deb https://mirrors.163.com/ubuntu/ jammy-updates main restricted universe multiverse
        deb https://mirrors.163.com/ubuntu/ jammy-backports main restricted universe multiverse
        deb https://mirrors.163.com/ubuntu/ jammy-security main restricted universe multiverse
        """> /etc/apt/sources.list;\
        ;;
    *)
        echo "选择出错!."
        echo "操作被中断."
        exit 1
        ;;
    esac

    apt-get clean all;\
    apt-get update
}
Ubuntu20AptSource(){
    echo -e "This is Ubuntu 20.\n Updating source"
    cp /etc/apt/sources.list /etc/apt/sources.list.bak; \

    echo "选择对应的源"
    echo "1. 清华(默认)"
    echo "2. 阿里"
    echo "3. 腾讯"
    echo "4. 163"

    read -p "请选择对应的源(默认可以直接回车): " choice_source </dev/tty

    case $choice_source in
    "")
        echo """
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse
        """> /etc/apt/sources.list;\
        ;;
    1)
        echo """
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse
        """> /etc/apt/sources.list;\
        ;;
    2)
        echo """
        deb https://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse
        deb https://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse
        deb https://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse
        deb https://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse
        """> /etc/apt/sources.list;\
        ;;
    3)
        echo """
        deb https://mirrors.cloud.tencent.com/ubuntu/ focal main restricted universe multiverse
        deb https://mirrors.cloud.tencent.com/ubuntu/ focal-updates main restricted universe multiverse
        deb https://mirrors.cloud.tencent.com/ubuntu/ focal-backports main restricted universe multiverse
        deb https://mirrors.cloud.tencent.com/ubuntu/ focal-security main restricted universe multiverse
        """> /etc/apt/sources.list;\
        ;;
    4)
        echo """
        deb https://mirrors.163.com/ubuntu/ focal main restricted universe multiverse
        deb https://mirrors.163.com/ubuntu/ focal-updates main restricted universe multiverse
        deb https://mirrors.163.com/ubuntu/ focal-backports main restricted universe multiverse
        deb https://mirrors.163.com/ubuntu/ focal-security main restricted universe multiverse
        """> /etc/apt/sources.list;\
        ;;
    *)
        echo "选择出错!."
        echo "操作被中断."
        exit 1
        ;;
    esac


    apt-get clean all;\
    apt-get update
}
Ubuntu16AptSource(){
    echo -e "This is Ubuntu 20.\n Updating source"
    cp /etc/apt/sources.list /etc/apt/sources.list.bak; \

    echo "选择对应的源"
    echo "1. 清华(默认)"
    echo "2. 阿里"
    echo "3. 腾讯"
    echo "4. 163"

    read -p "请选择对应的源(默认可以直接回车): " choice_source </dev/tty

    case $choice_source in
    "")
        echo """
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial main restricted universe multiverse
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-security main restricted universe multiverse
        """> /etc/apt/sources.list;\
        ;;
    1)
        echo """
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial main restricted universe multiverse
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse
        deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-security main restricted universe multiverse
        """> /etc/apt/sources.list;\
        ;;
    2)
        echo """
        deb https://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse
        deb https://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse
        deb https://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse
        deb https://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse
        """> /etc/apt/sources.list;\
        ;;
    3)
        echo """
        deb https://mirrors.cloud.tencent.com/ubuntu/ xenial main restricted universe multiverse
        deb https://mirrors.cloud.tencent.com/ubuntu/ xenial-updates main restricted universe multiverse
        deb https://mirrors.cloud.tencent.com/ubuntu/ xenial-backports main restricted universe multiverse
        deb https://mirrors.cloud.tencent.com/ubuntu/ xenial-security main restricted universe multiverse
        """> /etc/apt/sources.list;\
        ;;
    4)
        echo """
        deb https://mirrors.163.com/ubuntu/ xenial main restricted universe multiverse
        deb https://mirrors.163.com/ubuntu/ xenial-updates main restricted universe multiverse
        deb https://mirrors.163.com/ubuntu/ xenial-backports main restricted universe multiverse
        deb https://mirrors.163.com/ubuntu/ xenial-security main restricted universe multiverse
        """> /etc/apt/sources.list;\
        ;;
    *)
        echo "选择出错!."
        echo "操作被中断."
        exit 1
        ;;
    esac

    apt-get clean all;\
    apt-get update
}
CentOS7YumSource(){
    # CentOS 7 操作系统
    echo "CentOS 7, updating source"

    case $choice_source in
    "")
        sudo sed -e 's|^mirrorlist=|#mirrorlist=|g' \
            -e 's|^#baseurl=http://mirror.centos.org/centos|baseurl=https://mirrors.tuna.tsinghua.edu.cn/centos|g' \
            -i.bak \
            /etc/yum.repos.d/CentOS-*.repo
        ;;
    1)
        sudo sed -e 's|^mirrorlist=|#mirrorlist=|g' \
            -e 's|^#baseurl=http://mirror.centos.org/centos|baseurl=https://mirrors.tuna.tsinghua.edu.cn/centos|g' \
            -i.bak \
            /etc/yum.repos.d/CentOS-*.repo
        ;;
    2)
        sudo sed -e 's|^mirrorlist=|#mirrorlist=|g' \
            -e 's|^#baseurl=http://mirror.centos.org/centos|baseurl=https://mirrors.aliyun.com/centos|g' \
            -i.bak \
            /etc/yum.repos.d/CentOS-*.repo
        ;;
    3)
        sudo sed -e 's|^mirrorlist=|#mirrorlist=|g' \
            -e 's|^#baseurl=http://mirror.centos.org/centos|baseurl=https://mirrors.cloud.tencent.com/centos|g' \
            -i.bak \
            /etc/yum.repos.d/CentOS-*.repo
        ;;
    4)
        sudo sed -e 's|^mirrorlist=|#mirrorlist=|g' \
            -e 's|^#baseurl=http://mirror.centos.org/centos|baseurl=https://mirrors.163.com/centos|g' \
            -i.bak \
            /etc/yum.repos.d/CentOS-*.repo
        ;;
    *)
        echo "选择出错!."
        echo "操作被中断."
        exit 1
        ;;
    esac



    yum clean all;\
    yum makecache
}
CentOS8YumSource(){
    echo "CentOS 7, updating source"


    case $choice_source in
    "")
        sudo sed -e 's|^mirrorlist=|#mirrorlist=|g' \
            -e 's|^#baseurl=http://mirror.centos.org/$contentdir|baseurl=https://mirrors.tuna.tsinghua.edu.cn/centos|g' \
            -i.bak \
            /etc/yum.repos.d/CentOS-*.repo
        ;;
    1)
        sudo sed -e 's|^mirrorlist=|#mirrorlist=|g' \
            -e 's|^#baseurl=http://mirror.centos.org/$contentdir|baseurl=https://mirrors.tuna.tsinghua.edu.cn/centos|g' \
            -i.bak \
            /etc/yum.repos.d/CentOS-*.repo
        ;;
    2)
        sudo sed -e 's|^mirrorlist=|#mirrorlist=|g' \
            -e 's|^#baseurl=http://mirror.centos.org/$contentdir|baseurl=https://mirrors.aliyun.com/centos|g' \
            -i.bak \
            /etc/yum.repos.d/CentOS-*.repo
        ;;
    3)
        sudo sed -e 's|^mirrorlist=|#mirrorlist=|g' \
            -e 's|^#baseurl=http://mirror.centos.org/$contentdir|baseurl=https://mirrors.cloud.tencent.com/centos|g' \
            -i.bak \
            /etc/yum.repos.d/CentOS-*.repo
        ;;
    4)
        sudo sed -e 's|^mirrorlist=|#mirrorlist=|g' \
            -e 's|^#baseurl=http://mirror.centos.org/$contentdir|baseurl=https://mirrors.163.com/centos|g' \
            -i.bak \
            /etc/yum.repos.d/CentOS-*.repo
        ;;
    *)
        echo "选择出错!."
        echo "操作被中断."
        exit 1
        ;;
    esac



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
    echo -e "\n检测到Linux系统为: $system_info\n"
    echo "如果有其他系统,可以选择对应的数字"
    echo "1. Ubuntu 22"
    echo "2. Ubuntu 20"
    echo "3. Ubuntu 16"
    echo "4. CentOS 7"
    echo "5. CentOS 8"

    read -p "当前系统为: $system_info, 请问是否正确?(y/n): " choice </dev/tty

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
