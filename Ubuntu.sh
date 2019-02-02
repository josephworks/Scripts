echo "Starting"
sudo apt update
sudo apt install aptitude chromium-browser nautilus-admin maven gradle git wget tree toilet figlet curl apache2 mysql-client mysql-server php visualvm openjdk-8-jre-headless htop screenfetch nodejs npm fish openssh-server vsftpd filezilla python python2 -y
sudo update-alternatives --config java

echo "Installing Jenkins"
echo "" | sudo tee -a /etc/apt/sources.list
echo "# Jenkins Apt Repository" | sudo tee -a /etc/apt/sources.list
echo "deb https://pkg.jenkins.io/debian binary/" | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get install jenkins -y

echo "Installing NOIP DUC"
sudo su
cd /usr/local/src/
wget http://www.no-ip.com/client/linux/noip-duc-linux.tar.gz
tar xf noip-duc-linux.tar.gz
cd noip-2.1.9-1/
make install
/usr/local/bin/noip2
