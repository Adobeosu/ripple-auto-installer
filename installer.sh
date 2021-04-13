clear
printf "Advanced users only. I guess."

server-install () {

valid_domain=0

printf "\nInstall directory "[$(pwd)"/realm"]": "
read MasterDir
MasterDir=${MasterDir:=$(pwd)"/realm"}

printf "\n\n..:: NGINX CONFIGS ::.."
while [ $valid_domain -eq 0 ]
do
printf "\nMain domain name: "
read domain

if [ "$domain" = "" ]; then
	printf "\n\nYou need to specify the main domain. Example: realm.so"
else
	printf "\n\nFrontend: $domain"
	printf "\nBancho: c.$domain"
	printf "\nAvatar: a.$domain"
	printf "\nBackend: old.$domain"
	printf "\n\nIs this configuration correct? [y/n]: "
	read q
	if [ "$q" = "y" ]; then
		valid_domain=1
	fi
fi
done

printf "\n\n..:: BANCHO SERVER ::.."
printf "\ncikey [changeme]: "
read peppy_cikey
peppy_cikey=${peppy_cikey:=changeme}

printf "\n\n..:: LETS SERVER::.."
printf "\nosuapi-apikey [YOUR_OSU_API_KEY_HERE]: "
read lets_osuapikey
lets_osuapikey=${lets_osuapikey:=YOUR_OSU_API_KEY_HERE}

printf "\n\n..:: FRONTEND ::.."
printf "\nPort [6969]: "
read hanayo_port
hanayo_port=${hanayo_port:=6969}
printf "\nAPI Secret [Potato]: "
read hanayo_apisecret
hanayo_apisecret=${hanayo_apisecret:=Potato}

printf "\n\n..:: DATABASE ::.."
printf "\nUsername [adobe]: "
read mysql_usr
mysql_usr=${mysql_usr:=adobe}
printf "\nPassword [meme]: "
read mysql_psw
mysql_psw=${mysql_psw:=meme}

echo -e "\e[1;36mAlright! Let's see what I can do here...\n"
echo -e "\e[\033[0m"

START=$(date +%s)

echo -e "\e[1;36mInstalling dependencies..."
echo -e "\e[\033[0m"
sleep 1
apt-get update
sudo apt-get install build-essential autoconf libtool pkg-config python-opengl python-pyrex python-pyside.qtopengl idle-python2.7 qt4-dev-tools qt4-designer libqtgui4 libqtcore4 libqt4-xml libqt4-test libqt4-script libqt4-network libqt4-dbus python-qt4 python-qt4-gl libgle3 python-dev -y	 
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt-get update
apt-get install python3 python3-dev -y
add-apt-repository ppa:ondrej/php -y
add-apt-repository ppa:longsleep/golang-backports -y
apt-get update
apt install git curl python3-pip python3-mysqldb -y
apt-get install python-dev libmysqlclient-dev nginx software-properties-common libssl-dev -y
apt-get install mysql-server
pip3 install --upgrade pip
pip3 install flask
apt install go-dep

apt-get install php7.0 php7.0-mbstring php7.0-mcrypt php7.0-fpm php7.0-curl php7.0-mysql golang-go -y

apt-get install composer -y
apt-get install zip unzip php7.0-zip -y

echo -e "\e[1;36mDone installing dependencies!"
echo -e "\e[\033[0m"
sleep 1
mkdir realm

echo -e "\e[1;36mDownloading Bancho server..."
echo -e "\e[\033[0m"
sleep 1
cd /root/realm/
git clone https://github.com/e2z/pep.py
cd pep.py
git submodule init && git submodule update
python3.6 -m pip install -r requirements.txt
python3.6 setup.py build_ext --inplace
python3.6 pep.py
sed -i 's#root#'$mysql_usr'#g; s#changeme#'$peppy_cikey'#g'; s#http://.../letsapi#'http://127.0.0.1:5002/letsapi'#g; s#http://cheesegu.ll/api#'https://storage.ainu.pw/api'#g' config.ini
sed -E -i -e 'H;1h;$!d;x' config.ini -e 's#password = #password = '$mysql_psw'#'
cd /root/realm/
echo "Bancho Server setup is done!"
sleep 1

echo -e "\e[1;36mSetting up LETS..."
echo -e "\e[\033[0m"
sleep 1
git clone https://github.com/e2z/LETS
cd LETS
python3.6 -m pip install -r requirements.txt
git submodule init && git submodule update
echo -e "\e[1;36mDownloading Patches"
echo -e "\e[\033[0m"
sleep 1
cd /root/realm/LETS/pp
rm -rf oppai-ng
rm -rf oppai-rx
git clone https://github.com/e2z/oppai-ng
git clone https://github.com/e2z/oppai-rx
cd oppai-ng
chmod +x ./build
./build
cd ..
cd oppai-rx
chmod +x ./build
./build
cd ..
cd ..
cd /root/realm/LETS/objects
sed -i 's#dataCtb["difficultyrating"]#'dataCtb["diff_aim"]'#g' beatmap.pyx
cd /root/realm/LETS
cd secret
git submodule init && git submodule update
cd ..
python3.6 setup.py build_ext --inplace
cd secret
git submodule init && git submodule update
cd /root/realm
echo -e "\e[1;36mLETS setup is done!"
echo -e "\e[\033[0m"
sleep 1

echo -e "\e[1;36mInstalling Redis..."
echo -e "\e[\033[0m"
sleep 1
apt-get install redis-server -y
echo -e "\e[1;36mRedis Setup is finised!"
echo -e "\e[\033[0m"
sleep 1

echo -e "\e[1;36mDownloading configs for nginx..."
echo -e "\e[\033[0m"
sleep 1
mkdir nginx
cd nginx
systemctl restart php7.0-fpm
pkill -f nginx
cd /etc/nginx/
rm -rf nginx.conf
wget -O nginx.conf https://pastebin.com/raw/GYrNM3gV
sed -i 's#include /root/realm/nginx/*.conf\*#include '$MasterDir'/nginx/*.conf#' /etc/nginx/nginx.conf
cd $MasterDir
cd nginx
wget -O nginx.conf https://pastebin.com/raw/yEwFiz7m
sed -i 's#DOMAIN#'$domain'#g; s#DIRECTORY#'$MasterDir'#g; s#6969#'$hanayo_port'#g' nginx.conf
wget -O old-frontend.conf https://pastebin.com/raw/WKe5bqfF
sed -i 's#DOMAIN#'$domain'#g; s#DIRECTORY#'$MasterDir'#g; s#6969#'$hanayo_port'#g' old-frontend.conf
echo -e "\e[1;36mDownloading Certificate..."
echo -e "\e[\033[0m"
wget -O cert.pem https://raw.githubusercontent.com/osuthailand/ainu-certificate/master/cert.pem
wget -O key.pem https://raw.githubusercontent.com/osuthailand/ainu-certificate/master/key.key
echo -e "\e[1;36mCertificate Downloaded!"
echo -e "\e[\033[0m"
nginx
cd /root/realm/
echo -e "\e[1;36mnginx is fully setup and ready to go!"
echo -e "\e[\033[0m"
sleep 1

echo -e "\e[1;36mSetting up database"
echo -e "\e[\033[0m"
sleep 1
wget -O ripple.sql https://raw.githubusercontent.com/Airiuwu/ripple-auto-installer/master/ripple.sql
mysql -u "$mysql_usr" -p"$mysql_psw" -e 'CREATE DATABASE realm;'
mysql -u "$mysql_usr" -p"$mysql_psw" realm < ripple.sql
echo -e "\e[1;36mDatabase is now set up!"
echo -e "\e[\033[0m"

echo -e "\e[1;36mSetting up hanayo..."
echo -e "\e[\033[0m"
sleep 1
go get -u github.com/e2z/hanayo
rm -rf hanayo
cd /root/go/src/github.com/osuthailand
rm -rf hanayo
cd /root/realm/
git clone https://github.com/e2z/hanayo
mv hanayo /root/go/src/github.com/osuthailand
cd /root/go/src/github.com/osuthailand/hanayo
go build
cd ..
mv hanayo /root/realm
cd /root/realm/hanayo
go mod init github.com/e2z/hanayo && go mod vendor
go build
sed -i 's#ripple.moe#'$domain'#' templates/navbar.html
./hanayo
sed -i 's#ListenTo=#ListenTo=127.0.0.1:'$hanayo_port'#g; s#AvatarURL=#AvatarURL=https://a.'$domain'#g; s#BaseURL=#BaseURL=https://'$domain'#g; s#APISecret=#APISecret='$hanayo_apisecret'#g; s#BanchoAPI=#BanchoAPI=https://c.'$domain'#g; s#MainRippleFolder=#MainRippleFolder='$MasterDir'#g; s#AvatarFolder=#AvatarFolder='$MasterDir'/nginx/avatar-server/avatars#g; s#RedisEnable=false#RedisEnable=true#g' hanayo.conf
sed -E -i -e 'H;1h;$!d;x' hanayo.conf -e 's#DSN=#DSN='$mysql_usr':'$mysql_psw'@/realm#'
sed -E -i -e 'H;1h;$!d;x' hanayo.conf -e 's#API=#API=http://localhost:40001/api/v1/#'
cd /root/realm
echo -e "\e[1;36mHanayo is now set up!"
echo -e "\e[\033[0m"
sleep 1

echo -e "\e[1;36mSetting up API..."
echo -e "\e[\033[0m"
sleep 1
git clone https://github.com/e2z/api
cd api
chmod +x api
./api
sed -i 's#root@#'$mysql_usr':'$mysql_psw'@#g; s#Potato#'$hanayo_apisecret'#g; s#OsuAPIKey=#OsuAPIKey='$peppy_cikey'#g' api.conf
cd /root/realm
echo -e "\e[1;36mAPI setup is done..."
echo -e "\e[\033[0m"
sleep 1

echo -e "\e[1;36mSetting up avatar serner..."
echo -e "\e[\033[0m"
sleep 1
git clone https://github.com/e2z/AvatarServer
cd AvatarServer
python3.6 -m pip install -r requirements.txt
echo -e "\e[1;36mAvatar Server is now set up!"
echo -e "\e[\033[0m"
sleep 1

echo -e "\e[1;36mSetting up Admin Panel..."
echo -e "\e[\033[0m"
sleep 1
cd /var/www
git clone https://github.com/osuthailand/old-frontend
mv old-frontend osu.ppy.sh
cd osu.ppy.sh
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
cd inc
cp config.sample.php config.php
sed -i 's#root#'$mysql_usr'#g; s#meme#'$mysql_psw'#g; s#allora#realm#g; s#"redis"#"localhost"#g; s#ripple.moe#'$domain'#g' config.php
cd ..
composer install
rm -rf secret
git clone https://github.com/osufx/secret.git
cd $MasterDir
echo -e "\e[1;36mAdmin panel is now set up!"
echo -e "\e[\033[0m"
sleep 1

echo -e "\e[1;36mInstalling PhpMyAdmin..."
echo -e "\e[\033[0m"
sleep 1
apt-get install phpmyadmin -y
cd /var/www/osu.ppy.sh
ln -s /usr/share/phpmyadmin phpmyadmin
echo -e "\e[1;36mPhpMyAdmin is now set up!"
echo -e "\e[\033[0m"
sleep 1

echo -e "\e[1;36mMaking certificates for SSL..."
echo -e "\e[\033[0m"
sleep 1
cd /root/
git clone https://github.com/Neilpang/acme.sh
apt-get install socat -y
cd acme.sh/
./acme.sh --install
./acme.sh --issue --standalone -d $domain -d c.$domain -d a.$domain -d old.$domain
echo -e "\e[1;36mCertificates have been created!"
echo -e "\e[\033[0m"
sleep 1

echo -e "\e[1;36mGiving permissions to all files and folers...."
echo -e "\e[\033[0m"
sleep 1
chmod +x ../realm

END=$(date +%s)
DIFF=$(( $END - $START ))

nginx
echo "Setup is done... but I guess it's still indevelopment I need to check something but It took $DIFF seconds. To setup the server!"
echo "also you can access PhpMyAdmin here... http://old.$domain/phpmyadmin"

printf "\n\nDo you like our installer? [y/n]: "
read q
if [ "$q" = "y" ]; then
	printf "\n\nWell... It just a fake message but thanks! You can start the server now.\n\nAlright! See you later in the next server!\n\n"
fi

}

echo ""
echo "IMPORTANT: Ripple is licensed under the GNU AGPL license. This means, if your server is public, that ANY modification made to the original ripple code MUST be publically available."
echo "Also, to run an osu! private server, as well as any sort of server, you need to have minimum knowledge of command line, and programming."
echo "Running this script assumes you know how to use Linux in command line, secure and manage a server, and that you know how to fix errors, as they might happen while running that code."
echo "Do you agree? (y/n)"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo Continuing
    server-install
else
    echo Exiting
fi
