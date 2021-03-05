#!/bin/bash
# updates
apt-get update -y
apt-get upgrade -y

# get useful wordlists
cd /opt
wget https://raw.githubusercontent.com/berzerk0/Probable-Wordlists/master/Real-Passwords/Top12Thousand-probable-v2.txt
wget https://raw.githubusercontent.com/berzerk0/Probable-Wordlists/master/Real-Passwords/Top304Thousand-probable-v2.txt
wget https://raw.githubusercontent.com/berzerk0/Probable-Wordlists/master/Real-Passwords/Top1575-probable-v2.txt

# git clone https://github.com/danielmiessler/SecLists
# config burp
echo "Install FoxyProxy - 127.0.0.1 8080"
echo "Visit http://burp/ to download and import cert"

# install gobuster
sudo apt install gobuster -y
sudo apt install ffuf -y
git clone https://github.com/21y4d/nmapAutomator.git
sudo ln -s $(pwd)/nmapAutomator/nmapAutomator.sh /usr/local/bin/

# install sparta
sudo apt install python3-sqlalchemy python3-pyqt5 wkhtmltopdf -y
apt-get install ldap-utils rwho rsh-client x11-apps finger -y
cd /usr/share/
git clone https://github.com/secforce/sparta.git
cd sparta
cp sparta /usr/bin/
chmod +x /usr/bin/sparta

# install autorecon
sudo apt install python3 -y
sudo apt install python3-pip -y
sudo apt install python3-venv -y
python3 -m pip install --user pipx -y
python3 -m pipx ensurepath -y
alias sudo="sudo env \"PATH=$PATH\""
sudo visudo /etc/sudoers
echo "secure_path=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/kali/.local/bin"
sudo apt install seclists curl enum4linux gobuster nbtscan nikto nmap onesixtyone oscanner smbclient smbmap smtp-user-enum snmp sslscan sipvicious tnscmd10g whatweb wkhtmltopdf -y
sudo python3 -m pip install git+https://github.com/Tib3rius/AutoRecon.git
