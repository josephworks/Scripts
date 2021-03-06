echo "Starting"
sudo apt update
sudo apt install aptitude chromium-browser nautilus-admin maven gradle git wget tree toilet figlet curl apache2 mysql-client mysql-server php visualvm openjdk-8-jre-headless htop screenfetch neofetch nodejs npm fish openssh-server vsftpd filezilla python python2 -y
sudo update-alternatives --config java

read -p "Would you like to install Jenkins? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
   echo "Installing Jenkins"
   echo "" | sudo tee -a /etc/apt/sources.list
   echo "# Jenkins Apt Repository" | sudo tee -a /etc/apt/sources.list
   sudo apt-add-repository 'deb https://pkg.jenkins.io/debian binary/'
   sudo apt-get install jenkins -y
fi

echo ""

read -p "Would you like to install NOIP DUC? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
   echo "Installing NOIP DUC"
   sudo su
   cd /usr/local/src/
   wget http://www.no-ip.com/client/linux/noip-duc-linux.tar.gz
   tar xf noip-duc-linux.tar.gz
   cd noip-2.1.9-1/
   make install
   /usr/local/bin/noip2
fi

echo ""

read -p "Would you like to install Wine? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
   echo "Installing Wine"
   cd ~
   wget -nc https://dl.winehq.org/wine-builds/winehq.key
   sudo apt-key add winehq.key
   sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ cosmic main'
   sudo apt install --install-recommends winehq-devel
   sudo apt install winetricks playonlinux q4wine
fi

echo ""

read -p "Would you like to install WebMin? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
   echo "Installing WebMin"
   wget https://prdownloads.sourceforge.net/webadmin/webmin_1.973_all.deb
   sudo dpkg -i webmin_1.973_all.deb
   sudo apt --fix-broken install
fi

echo ""
