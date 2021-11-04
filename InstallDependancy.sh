#!/bin/bash

echo "++++++++++++++++++++++++++++++++++++++++"
echo "installing dependancies for music system"
echo "++++++++++++++++++++++++++++++++++++++++"
echo ""
echo "Installing packages: python3 python3-pip espeak youtube-dl pipx" 
sudo apt install -y python3 python3-pip espeak youtube-dl pipx
echo "Done." 
echo "Installing yewtube"
pip3 install pipx
pipx install git+https://github.com/iamtalhaasghar/yewtube.git
pipx inject yewtube youtube-dl
echo "Done."
echo "Installing Flask"
pip3 install flask flask_wtf
echo "Done."
echo "Remember to set API key in yewtube"

echo "++++++++++++++++++++++++++++++++++++++++"
