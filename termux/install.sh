sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list
sed -i 's@^\(deb.*games stable\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/game-packages-24 games stable@' $PREFIX/etc/apt/sources.list.d/game.list
sed -i 's@^\(deb.*science stable\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/science-packages-24 science stable@' $PREFIX/etc/apt/sources.list.d/science.list
pkg up -y
pkg i golang -y
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
echo proxypool安装完成，输入./proxypool.sh启动
