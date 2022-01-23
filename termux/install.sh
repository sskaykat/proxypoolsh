if [ $(command -v go | grep -c "go") -lt 1 ]
then yum update || apt update
yes | yum upgrade || yes | apt upgrade
yum update || apt update
yum install golang -y || apt install golang -y
fi
echo 依赖已安装，等待脚本执行
rm -rf proxypool
go get -u -v github.com/Sansui233/proxypool
proxypool=$(ls ~/go/pkg/mod/github.com/'!sansui233')
chmod -R 777 ~/go/pkg/mod/github.com/'!sansui233'
cp -r ~/go/pkg/mod/github.com/'!sansui233'/$proxypool ~/proxypool
rm -rf ~/go/pkg/mod/github.com/'!sansui233' ~/proxypool/config/config.yaml ~/proxypool/config/source.yaml
config=$(curl -Ls https://raw.githubusercontent.com/shoujiyanxishe/proxypool/main/termux/config.yaml) && echo "$config" > ~/proxypool/config/config.yaml
source=$(curl -Ls https://raw.githubusercontent.com/shoujiyanxishe/proxypool/main/termux/source.yaml) && echo "$source" > ~/proxypool/config/source.yaml
echo "cd ~/proxypool && go run main.go -c ./config/config.yaml" > proxypool.sh
chmod +x proxypool.sh
clear
echo proxypool安装完成，输入 ./proxypool.sh 启动
