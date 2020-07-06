sudo yum -y update

#install and configure softether vpn
sudo yum -y install NetworkManager-openvpn NetworkManager-openvpn-gnome network-manager-applet
sudo nm-applet
sudo nm-connection-editor

cd ~/Downloads

#download 64 bit version of Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
#Install Google Chrome and its dependencies on a CentOS/RHEL, type:
sudo yum -y install ./google-chrome-stable_current_*.rpm
#Start Google Chrome from the CLI:
#google-chrome &
#Now go to /usr/share/applications, right click "Google Chrome" and copy to desktop

sudo touch /usr/share/applications/chrome-browser.desktop
sudo bash -c 'cat >> /usr/share/applications/chrome-browser.desktop <<EOL
[Desktop Entry]
Exec=/usr/bin/google-chrome
GenericName=Chrome
Icon=google-chrome
Name=Google Chrome
Path=/tmp/
StartupNotify=true
Terminal=false
TerminalOptions=
Type=Application'

sudo yum -y install java-1.8.0-openjdk
java -version
#sudo alternatives --config java

#install eclipse
cd /opt
sudo wget http://eclipse.mirror.rafal.ca/technology/epp/downloads/release/2020-06/R/eclipse-jee-2020-06-R-linux-gtk-x86_64.tar.gz
sudo tar -zxvf eclipse-jee-2020-06-R-linux-gtk-x86_64.tar.gz
sudo ln -sf /opt/eclipse/eclipse /usr/bin/eclipse

#add desktop entry for eclipse
sudo touch /usr/share/applications/eclipseide.desktop
sudo bash -c 'cat >> /usr/share/applications/eclipseide.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Eclipse IDE
Comment=Eclipse IDE
Exec=/usr/bin/eclipse
Icon=/opt/eclipse/icon.xpm
Categories=Application;Development;Java;IDE
Version=1.0
Type=Application
Terminal=0
EOL'

echo "figure out the os..."
uname -a
sudo cat /etc/*release*

echo "install docker for Amazon Linux 2"
sudo amazon-linux-extras install docker

echo "start the Docker service"
sudo service docker start

echo "docker info"
sudo docker info

echo "run hello world docker image"
sudo docker run hello-world
