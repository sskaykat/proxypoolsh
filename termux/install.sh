sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list
sed -i 's@^\(deb.*games stable\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/game-packages-24 games stable@' $PREFIX/etc/apt/sources.list.d/game.list
sed -i 's@^\(deb.*science stable\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/science-packages-24 science stable@' $PREFIX/etc/apt/sources.list.d/science.list
pkg up -y
pkg i git nodejs yarn -y
npm install -g pm2
yarn global add pm2
git clone https://github.com/elecV2/elecV2P.git
cd ~/elecV2P
yarn
cd ~
echo "cd ~/elecV2P && PORT=8000 node index.js" > v2p.sh
chmod +x v2p.sh
clear
echo v2p已经安装完成，输入./v2p.sh启动
