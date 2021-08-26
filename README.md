# 在手机端快速搭建科学上网节点池
# termux 软件下载链接：
https://f-droid.org/repo/com.termux_117.apk
# 1、手机运行软件 termux
# 2、下载wget，输入：
pkg install wget
# 3、下载程序包，输入：
wget -N "https://raw.githubusercontent.com/sskaykat/proxypoolsh/main/termux/install.sh"
# 4、赋予执行权限，输入：
chmod +x install.sh
# 5、运行程序，输入：
./install.sh
# 6、再次运行程序，输入：
./porxypool.sh
# 7、端口号：12580，在手机的（设置-无线网络-ip地址）查看本机的ip，输入你的ip+端口号进入控制台
例如：192.168.1.108:12580

# 8、项目克隆于：https://github.com/shoujiyanxishe/proxypoolsh 
