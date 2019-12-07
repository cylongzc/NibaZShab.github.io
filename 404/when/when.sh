#!/bin/bash
# Copyright (c) 2019 NibaZShab
# https://github.com/NibaZShab/NibaZShab.github.io
# https://nibazshab.github.io
# hide page 520
# sh -c "$(curl -fsSL https://nibazshab.github.io/404/when/install.sh)"
clear
colorhint="\033[36;43;1m"
colorend="\033[0m"
prompt="\n————————————————————————————————————\n"
function hint (){ echo -e "$prompt" ; }
function logo (){
echo -e "\033[31m"
echo -e "\n\n\n\n\n\n"
sleep 0.025s
echo -e "               +"
sleep 0.025s
echo -e "               +"
sleep 0.025s
echo -e "               +"
sleep 0.025s
echo -e "               +"
sleep 0.025s
echo -e "  +   +   +    +++++++    +++++++    +++++++"
sleep 0.025s
echo -e "  +   +   +    +     +    +     +    +     +"
sleep 0.025s
echo -e "  +   +   +    +     +    +++++++    +     +"
sleep 0.025s
echo -e "  +   +   +    +     +    +          +     +"
sleep 0.025s
echo -e "  +++++++++    +     +    +++++++    +     +"
echo -e "\033[0m"
}
function home0 (){
echo -e "\n\n"
echo -e "1 )  更换清华源"
sleep 0.025s
echo -e "2 )  修复底部小键盘"
sleep 0.025s
echo -e "3 )  获取储存权限"
sleep 0.025s
echo -e "4 )  使用fish终端"
sleep 0.025s
echo -e "5 )  好玩的东东"
sleep 0.025s
echo -e "6 )  编程环境配置"
sleep 0.025s
echo -e "7 )  超级大宝贝儿们"
sleep 0.025
echo -e ""
echo -e "                             99 )  充软妹币"
sleep 0.025s
echo -e "                              0 )  退出"
sleep 0.025s
echo -e "---------------------------------------------"
sleep 0.025s
echo -e ""
}
function home1 (){
cd ~
read -p "[when] ~> 你选择的序号是：" home
case $home in
1 )
	sleep 1s
	hint ; echo -e "官网：https://mirror.tuna.tsinghua.edu.cn/help/termux/" ; hint
	sleep 3s
	sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux stable main@' $PREFIX/etc/apt/sources.list
	apt update && apt upgrade -y
	home0 ; home1 ;;
2 )
	sleep 1s
	if test -d ~/.termux/ ; then
		:
	else
		mkdir -p ~/.termux/
	fi
	echo -e "extra-keys = [['TAB','>','-','~','/','*','$'],['ESC','(','HOME','UP','END',')','PGUP'],['CTRL','[','LEFT','DOWN','RIGHT',']','PGDN']]" > ~/.termux/termux.properties
	home0 ; home1 ;;
3 )
	termux-setup-storage
	home0 ; home1 ;;
4 )
	sleep 1s
	pkg in -y wget unzip fish
	if test -d ~/.termux/ ; then
		:
	else
		mkdir mkdir -p ~/.termux/
	fi
	cd ~/.termux/
	wget https://github.com/NibaZShab/NibaZShab.github.io/releases/download/10/10.zip
	unzip 10.zip
	echo -e "function fish_greeting\nend" >> $PREFIX/etc/fish
	home0 ; home1 ;;
5 )
	echo -e "\n\n\n\n\n"
	logo
	sleep 0.025s
	game0 ; game1 ;;
6 )
	echo -e "\n\n\n\n\n"
	logo
	sleep 0.025s
	work0 ; work1 ;;
7 )
	echo -e "\n\n\n\n\n"
	logo
	sleep 0.025s
	library0 ; library1 ;;
99 )
	sleep 1s
	read -p "[when] ~> 请输入充值的软妹币额度：" a
	case $a in
	[0-9]* )
		read -p "[when] ~> 请输入支付密码："
		echo -e "[when] ~> 连接服务器中..."
		sleep 1s
		echo -e "[when] ~> 恭喜！已成功充入 $a 软妹币！"
		sleep 0.2s
		echo -e "[when] ~> 已升级为 svip 版！" ;;
	* )
		sleep 1s
		echo -e "[when] ~> 服务器请求错误！"
		sleep 0.2s
		echo -e "[when] ~> 正在进攻..."
		sleep 0.2s
		echo -e "[when] ~> 入侵成功！你的软妹币全被我偷走啦！" ;;
	esac
	exit ;;
520 )
	echo -e "\n\n\n\n\n"
	logo
	sleep 0.025s
	hide0 ; hide1 ;;
0 )
	clear
	cat $PREFIX/etc/motd
	exit ;;
00 )
	exit ;;
* )
	echo -e "[when] ~> 该选项超脱了天地之外！"
	sleep 1s
	home1 ;;
esac
}
function game0 (){
echo -e "\n\n"
echo -e "1 )  纯文本浏览器"
sleep 0.025s
echo -e "2 )  猜数字"
sleep 0.025s
echo -e "3 )  小火车"
sleep 0.025s
echo -e "4 )  screenfetch"
sleep 0.025s
echo -e "5 )  neofetch"
sleep 0.025s
echo -e "6 )   "
sleep 0.025s
echo -e "7 )  彩虹猫"
sleep 0.025s
echo -e "8 )  贪吃蛇"
sleep 0.025s
echo -e "9 )  音乐播放器"
sleep 0.025s
echo -e "10 )  moo"
sleep 0.025s
echo -e "11 )  本机ip查询"
sleep 0.025s
echo -e "12 )  更换termux问候语"
sleep 0.025s
echo -e ""
echo -e "                              0 )  返回"
sleep 0.025s
echo -e "---------------------------------------------"
sleep 0.025s
echo -e ""
}
function game1 (){
cd ~
read -p "[when]# 你选择的序号是：" game
case $game in
1 )
	sleep 1s
	hint ; echo -e "名称：w3m\n使用方法：请自行百度" ; hint
	sleep 3s
	pkg in -y w3m
	game0 ; game1 ;;
2 )
	sleep 1s
	hint ; echo -e "使用方法：输入 van" ; hint
	sleep 3s
	pkg in -y wget
	wget -O $PREFIX/bin/van https://nibazshab.github.io/404/when/van.sh
	chmod +x $PREFIX/bin/van
	game0 ; game1 ;;
3 )
	sleep 1s
	hint ; echo -e "使用方法：输入 sl" ; hint
	sleep 3s
	pkg in -y sl
	game0 ; game1 ;;
4 )
	sleep 1s
	hint ; echo -e "使用方法：输入 screenfetch" ; hint
	sleep 3s
	pkg in -y screenfetch
	game0 ; game1 ;;
5 )
	sleep 1s
	hint ; echo -e "使用方法：输入 neofetch" ; hint
	sleep 3s
	pkg in -y neofetch
	game0 ; game1 ;;
6 )
	echo "什么都没发生"
	exit ;;
7 )
	sleep 1s
	hint ; echo -e "使用方法：输入 nyancat" ; hint
	sleep 3s
	pkg in -y nyancat
	game0 ; game1 ;;
8 )
	sleep 1s
	hint ; echo -e "使用方法：输入 nsnake" ; hint
	sleep 3s
	pkg in -y nsnake
	game0 ; game1 ;;
9 )
	sleep 1s
	hint ; echo -e "名称：mpv\n使用方法：请自行百度" ; hint
	sleep 3s
	pkg in -y mpv
	game0 ; game1 ;;
10 )
	sleep 1s
	apt-get moo
	sleep 3s
	game0 ; game1 ;;
11 )
	sleep 1s
	if test -e $PREFIX/bin/curl ; then
		:
	else
		pkg in -y curl
	fi
	ip -br -c addr ; curl myip.ipip.net
	sleep 3s
	game0 ; game1 ;;
12 )
	sleep 1s
	echo -e "\n\n\n\n\n  ----------------------------------------------------\n\n             民生各有所乐兮，余独好修以为常\n             虽体解吾犹未变兮，岂余心之可惩\n\n\n               　　　／　　　 ／   | \n                　　 Γ￣￣￣￣ |  | \n                　　 |[]::　　 |   | \n                　　 |＿＿_＿＿|　|\n                　　 |[]::　　 |　 | \n                　　 |＿＿_＿＿|　| \n                ｶﾞﾗｯ |＿＿_＿＿|　 | \n                 .彡／(´･ω･)　／|　| \n                   　Γ￣￣￣￣ |　|／ \n                    Ｌ＿＿＿＿_|／\n\n\n" > $PREFIX/etc/motd
	game0 ; game1 ;;
0 )
	echo -e "\n\n\n\n\n"
	logo
	sleep 0.025s
	home0 ; home1 ;;
00 )
	exit ;;
* )
	echo -e "[when] ~> 该选项超脱了天地之外！"
	sleep 1s
	game1 ;;
esac
}
function work0 (){
echo -e "\n\n"
echo -e "1 )  python"
sleep 0.025s
echo -e "2 )  java"
sleep 0.025s
echo -e "3 )  go"
sleep 0.025s
echo -e "4 )  c/c++"
sleep 0.025s
echo -e "5 )  php"
sleep 0.025s
echo -e ""
echo -e "                              0 )  返回"
sleep 0.025s
echo -e "---------------------------------------------"
sleep 0.025s
echo -e ""
}
function work1 (){
cd ~
read -p "[when] ~> 你选择的序号是：" work
case $work in
1 )
	sleep 1s
	pkg in -y python
	work0 ; work1 ;;
2 )
	sleep 1s
	pkg in -y wget
	wget -O ~/jdk.deb https://github.com/NibaZShab/NibaZShab.github.io/releases/download/08/08.deb
	dpkg -i ~/jdk.deb
	rm -rf ~/jdk.deb
	work0 ;  work1 ;;
3 )
	sleep 1s
	pkg in -y golang
	work0 ; work1 ;;
4 )
	sleep 1s
	pkg in -y clang
	work0 ; work1 ;;
5 )
	sleep 1s
	pkg in -y php
	work0 ; work1 ;;
0 )
	echo -e "\n\n\n\n\n"
	logo
	sleep 0.025s
	home0 ; home1 ;;
00 )
	exit ;;
* )
	echo -e "[when] ~> 该选项超脱了天地之外！"
	sleep 1s
	work1 ;;
esac
}
function library0 (){
echo -e "\n\n"
echo -e "1 )  刷流量"
sleep 0.025s
echo -e "2 )  atilo安装linux发行版"
sleep 0.025s
echo -e "3 )  终端二维码"
sleep 0.025s
echo -e "4 )  annie视频下载工具"
sleep 0.025s
echo -e "5 )  aria2下载器"
sleep 0.025s
echo -e "6 )  命令行版百度云"
sleep 0.025s
echo -e "7 )  adb和fastboot"
sleep 0.025s
echo -e "8 )  hexo博客"
sleep 0.025s
echo -e ""
echo -e "                              0 )  返回"
sleep 0.025s
echo -e "---------------------------------------------"
sleep 0.025s
echo -e ""
}
function library1 (){
cd ~
read -p "[when] ~> 你选择的序号是：" library
case $library in
1 )
	if test -e $PREFIX/bin/wget ; then
		:
	else
		pkg in -y wget
	fi
	i=0
	while [ $((i++)) -le 999 ]
	do
		wget -O /dev/null http://dlied5.myapp.com/myapp/1104466820/sgame/2017_com.tencent.tmgp.sgame_h8218_1.43.1.15_fc9dc4.apk
	done ;;
2 )
	sleep 1s
	hint ; echo -e "项目地址：https://github.com/YadominJinta/atilo" ; hint
	sleep 3s
	echo -e "deb [trusted=yes] https://yadominjinta.github.io/files/ termux    extras" >> $PREFIX/etc/apt/sources.list
	pkg in atilo-cn
	atilo
	library0 ; library1 ;;
3 )
	sleep 1s
	hint ; echo -e "项目地址：https://github.com/sylnsfar/qrcode" ; hint
	sleep 3s
	pkg in -y python
	pip install qrcode
	library0 ; library1 ;;
4 )
	sleep 1s
	hint ; echo -e "编译指令感谢 coolapk@萌系生物研究员 提供\n项目地址：https://github.com/iawia002/annie" ; hint
	sleep 3s
	pkg in -y golang git
	cd ~
	git clone https://github.com/iawia002/annie.git
	cd ~/annie/
	echo -e "$colorhint 编译时间较长，请耐心等待 $colorend"
	sleep 2s
	GOOS=android GOARCH=arm64 go build -o annie main.go
	mv -f annie $PREFIX/bin/
	cd ~
	rm -rf ~/annie
	chmod -Rf 777 ~/go/
	rm -rf ~/go/
	library0 ; library1 ;;
5 )
	sleep 1s
	hint ; echo -e "使用方法：输入 ~/aria2\n文件下载在 /sdcard/Download/\n项目地址：https://github.com/aria2/aria2" ; hint
	sleep 3s
	pkg in -y aria2
	pkg in -y wget
	if test -d /sdcard/Download/aria2/ ; then
		if test -e /sdcard/Download/aria2/aria2.session ; then
			:
		else
			touch /sdcard/Download/aria2/aria2.session
		fi
	else
		mkdir -p /sdcard/Download/aria2/
		touch /sdcard/Download/aria2/aria2.session
	fi
	if test -d ~/.config/ ; then
		rm -rf ~/.config/aria2/
	else
		:
	fi
	mkdir -p ~/.config/aria2/
	wget -O ~/.config/aira2/aria2.conf https://github.com/NibaZShab/NibaZShab.github.io/releases/download/09/09.conf
	echo -e "echo \"rpc-key: 123456\"\nsleep 2s\nam start -a android.intent.action.VIEW -d http://aria2.net\naria2c --conf-path=~/.config/aria2/aria2.conf\"" > ~/aria2
	chmod +x ~/aria2
	library0 ; library1 ;;
6 )
	sleep 1s
	hint ; echo -e "使用方法：输入 ~/bdy\n文件下载在 /sdcard/Download/\n项目地址：https://github.com/iikira/BaiduPCS-Go" ; hint
	sleep 3s
	pkg in -y golang git
	cd ~
	git clone https://github.com/iikira/BaiduPCS-Go.git
	cd ~/BaiduPCS-Go/
	echo -e "$colorhint 编译时间较长，请耐心等待 $colorend"
	sleep 2s
	GOOS=android GOARCH=arm64 go build -o bdy main.go
	mv -f bdy ~
	cd ~
	rm -rf ~/BaiduPCS-Go/
	chmod -Rf 777 ~/go/
	rm -rf ~/go/
	library0 ; library1 ;;
7 )
	sleep 1s
	pkg in -y unzip wget
	wget https://github.com/NibaZShab/NibaZShab.github.io/releases/download/11/11.zip
	unzip 11.zip
	rm -rf 11.zip
	mv -f ~/adb $PREFIX/bin/
	mv -f ~/fastboot $PREFIX/bin/
	chmod +x $PREFIX/bin/adb
	chmod +x $PREFIX/bin/fastboot
	library0 ; library1 ;;
8 )
	sleep 1s
	hint ; echo -e "请阅读小白教程，自行完成博客的搭建\n教程地址：https://nibazshab.github.io/post/04" ; hint
	sleep 3s
	library0 ; library1 ;;
0 )
	echo -e "\n\n\n\n\n"
	logo
	sleep 0.025s
	home0 ; home1 ;;
00 )
	exit ;;
* )
	echo -e "[when] ~> 该选项超脱了天地之外！"
	sleep 1s
	library1 ;;
esac
}
function hide0 (){
echo -e "\n\n"
echo -e "～>  你发现了一块 新大陆！"
sleep 0.025s
echo -e "～>  这是 被隐藏 的角落"
sleep 0.025s
echo -e "～>  此处的选项都是 NibaZShab 自用的"
sleep 0.025s
echo -e "～>  如有不懂，找他也没用"
echo -e "\n\n\n"
echo -e "1 )  hexo博客 连接github"
sleep 0.025s
echo -e "2 )  clean 记录"
sleep 0.025s
echo -e "3 )  /sdcard/$/ -> ~/0/"
sleep 0.025s
echo -e "4 )  编译when.deb"
sleep 0.025s
echo -e ""
echo -e "                              0 )  返回"
sleep 0.025s
echo ""
}
function hide1 (){
cd ~
read -p "[when] ~> 你选择的序号是：" hide
case $hide in
1 )
	sleep 1s
	pkg in -y unzip git nodejs-lts openssh wget
	rm -rf ~/博客/
	mkdir -p ~/博客/
	wget -O ~/博客/02.zip https://github.com/NibaZShab/NibaZShab.github.io/releases/download/02/02.zip
	cd ~/博客/
	unzip ~/博客/02.zip
	rm -rf ~/博客/02.zip
	npm install -g hexo-cli
	npm install --save hexo
	mkdir -p ~/博客/0/
	cd ~/博客/0/
	hexo init
	rm -rf ~/博客/0/_config.yml
	mv -f ~/博客/_config.yml ~/博客/0/
	mv -f ~/博客/up.sh ~/博客/0/
	chmod +x ~/博客/0/up.sh
	mv -f ~/博客/inside ~/博客/0/themes/
	cd ~/博客/0/
	git config --global user.name "NibaZShab"
	git config --global user.email "nibazshab@gmail.com"
	git init
	git remote add origin git@github.com:NibaZShab/NibaZShab.github.io.git
	ssh-keygen -t rsa -C "nibazshab@gmail.com"
	cd ~/博客/
	git clone https://github.com/NibaZShab/NibaZShab.github.io.git
	if test -d /sdcard/$/ ; then
		:
	else
		mkdir -p /sdcard/$/
	fi
	cd ~
	ln -s /sdcard/$/ ~/0/
	cd ~/博客/NibaZShab.github.io/
	mv -f ~/博客/NibaZShab.github.io/404/ ~/0/$/
	rm -rf ~/博客/NibaZShab.github.io/
	mkdir -p ~/博客/0/source/about/
	mkdir -p ~/博客/0/source/links/
	rm -rf ~/博客/0/source/_posts/*
	cp -rf ~/0/$/markdown/page/* ~/博客/0/source/_posts/
	cp -rf ~/0/$/markdown/about.md ~/博客/0/source/about/index.md
	cp -rf ~/0/$/markdown/links.md ~/博客/0/source/links/index.md
	cp -rf ~/0/$/markdown/book.md ~/博客/0/
	chmod +x ~/博客/0/book.md
	npm install --save hexo-deployer-git
	echo -e "$colorhint 读取ssh密钥请输入 cat ~/.ssh/id_rsa.pub $colorend \n $colorhint 检测ssh连接状况请输入 ssh -T git@github.com $colorend"
	hide0 ; hide1 ;;
2 )
	sleep 1s
	echo -e "#!/bin/bash\nshopt -s extglob\ncd /sdcard\nrm -rf !(################|$|Android|DCIM|Download|Pictures|Tencent)\nrm -rf .*\ncat ~/when > ~/0/2.sh\ncat ~/when > ~/whendeb/data/data/com.termux/files/usr/bin/when" > $PREFIX/bin/clean
	echo -e "#!/bin/bash\nvi ~/博客/0/source/_posts/06.md" > $PREFIX/bin/记录
	chmod +x $PREFIX/bin/clean
	chmod +x $PREFIX/bin/记录
	hide0 ; hide1 ;;
3 )
	sleep 1s
	ln -s /sdcard/$/ ~/0
	hide0 ; hide1 ;;
4 )
	dpkg-deb -b ~/whendeb/ ~/whendeb/when.deb
	exit ;;
0 )
	echo -e "\n\n\n\n\n"
	logo
	sleep 0.025s
	home0 ; home1 ;;
00 )
	exit ;;
* )
	echo -e "[when] ~> 该选项超脱了天地之外！"
	sleep 1s
	hide1 ;;
esac
}
logo
sleep 0.025s
home0 ; home1
exit
