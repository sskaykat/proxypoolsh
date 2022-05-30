## 手机端快速搭建科学上网节点池

- termux软件下载

  > https://f-droid.org/repo/com.termux_117.apk

## 搭建过程

1. 手机运行软件 **termux**

2. 下载 **wget**

   > 输入命令：pkg install wget

3. 下载程序包

   > 输入命令：wget -N "https://raw.githubusercontent.com/sskaykat/proxypoolsh/main/termux/install.sh"

4. 赋予执行权限

   > 输入命令：chmod +x install.sh

5. 运行程序

   > 输入命令：./install.sh

6. 再次运行程序

   > 输入命令：./proxypool.sh

## 网页端查看

- 浏览器输入 **端口号:12580** 进入网页面板

  > 例如：192.168.1.109:12580

## ip地址查看方法

- 设置 - 无线网络 - ip地址