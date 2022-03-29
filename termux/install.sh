if [ $(command -v go | grep -c "go") -lt 1 -o $(command -v wget | grep -c "wget") -lt 1 ]
then yum update || apt update
yes | yum upgrade || yes | apt upgrade
yum update || apt update
yum install golang wget -y || apt install golang wget -y
fi
echo 依赖已安装，等待脚本执行
last_version=$(curl -s https://github.com/Sansui233/proxypool/tags | grep -o "tag/.*" | sed -n 1p | cut -d "/" -f2 | cut -d '"' -f1 | cut -d "v" -f2)
wget https://github.com/Sansui233/proxypool/archive/refs/tags/v$last_version.zip
rm -rf proxypool-$last_version
unzip v$last_version.zip
rm -rf v$last_version.zip ~/proxypool-$last_version/config/config.yaml ~/proxypool-$last_version/config/source.yaml
config=$(curl -Ls https://raw.githubusercontent.com/shoujiyanxishe/proxypool/main/termux/config.yaml) && echo "$config" > ~/proxypool-$last_version/config/config.yaml
source=$(curl -Ls https://raw.githubusercontent.com/shoujiyanxishe/proxypool/main/termux/source.yaml) && echo "$source" > ~/proxypool-$last_version/config/source.yaml
echo "cd ~/proxypool-$last_version && go run main.go -c ./config/config.yaml" > proxypool.sh
chmod +x proxypool.sh
clear
echo proxypool安装完成，输入 ./proxypool.sh 启动
