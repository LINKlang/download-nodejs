curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
sleep 2
source ~/.bashrc
sleep 2
if [ $? -ne 0 ]; then
    . ~/.nvm/nvm.sh
    if [ $? -ne 0 ]; then
        echo "重载失败"
    else
        echo "重载配置文件完成"
    fi
else
    echo "重载配置文件完成"
fi
nvm install node