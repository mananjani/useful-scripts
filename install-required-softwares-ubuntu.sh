sudo apt -y update

cd ~/Downloads

#chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt -y install ./google-chrome-stable_current_amd64.deb

#zoom
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt -y install ./zoom_amd64.deb

#workspace
wget -q -O - https://workspaces-client-linux-public-key.s3-us-west-2.amazonaws.com/ADB332E7.asc | sudo apt-key add -
echo "deb [arch=amd64] https://d3nt0h4h6pmmc4.cloudfront.net/ubuntu bionic main" | sudo tee /etc/apt/sources.list.d/amazon-workspaces-clients.list 
sudo apt-get update
sudo apt-get install workspacesclient

#keepass
sudo apt-add-repository -y ppa:jtaylor/keepass
sudo apt-get -y update
sudo apt-get -y install keepass2

#skype
wget https://go.skype.com/skypeforlinux-64.deb
sudo apt -y install ./skypeforlinux-64.deb
