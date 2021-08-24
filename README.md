# 在手机端快速搭建科学上网节点池
# termux 软件下载链接：https://f-droid.org/repo/com.termux_117.apk
# 1、手机运行软件 termux
# 2、下载wget
pkg install wget
# 3、下载程序包
wget -N "https://raw.githubusercontent.com/sskaykat/proxypoolsh/main/termux/install.sh"
# 4、赋予执行权限
chmod +x install.sh
# 5、运行程序
./install.sh
# 6、再次运行程序，输入
./porxypool.sh
