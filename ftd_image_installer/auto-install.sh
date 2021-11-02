#!/bin/sh
source environment_variables.sh

stty -F /dev/ttyUSB1 9600 raw -echo -echoe -echok -echoctl -echoke
echo -e -n '\r'  > /dev/ttyUSB1
echo -e -n 'enable\r'  > /dev/ttyUSB1
sleep 1
echo -e -n 'C1sco12345\r'  > /dev/ttyUSB1
sleep 1
echo -e -n 'C1sco12345\r'  > /dev/ttyUSB1
sleep 1
echo -e -n 'config terminal\r'  > /dev/ttyUSB1
sleep 1

ip_address=$(head -n 1 ip_addresses.txt)
sleep 1
tail -n +2 "ip_addresses.txt" > "ip_addresses.tmp" && mv "ip_addresses.tmp" "ip_addresses.txt"
sleep 1
echo -e -n 'interface management1/1\r'  > /dev/ttyUSB1
sleep 1
echo -e -n "ip address $ip_address\r" > /dev/ttyUSB1
sleep 1
echo -e -n 'exit\r' > /dev/ttyUSB1
sleep 1
echo -e -n 'exit\r' > /dev/ttyUSB1
sleep 5


echo -e -n "copy tftp://${TFTP_SERVER_IP_ADDRESS}${TFTP_SERVER_FILE_PATH}${TFTP_SERVER_FTD_IMAGE} disk0:/${TFTP_SERVER_FTD_IMAGE}\r"  > /dev/ttyUSB1
sleep 1
echo -e -n '\r'  > /dev/ttyUSB1
sleep 1
echo -e -n '\r'  > /dev/ttyUSB1
sleep 1
echo -e -n '\r'  > /dev/ttyUSB1
sleep 1
echo -e -n '\r'  > /dev/ttyUSB1
sleep 1
echo -e -n '\r'  > /dev/ttyUSB1
echo -e -n 'config terminal\r'  > /dev/ttyUSB1
echo -e -n '\r'  > /dev/ttyUSB1
echo -e -n '\r'  > /dev/ttyUSB1
echo -e -n '\r'  > /dev/ttyUSB1
echo -e -n '\r'  > /dev/ttyUSB1
echo -e -n '\r'  > /dev/ttyUSB1
echo -e -n '\r'  > /dev/ttyUSB1
echo -e -n '\r'  > /dev/ttyUSB1

source ./install_processes/log_screen_output.sh

echo "FTD Image Installation Started..."

echo -e -n '\r'  > /dev/ttyUSB1
echo -e -n '\r'  > /dev/ttyUSB1
echo -e -n '\r'  > /dev/ttyUSB1
echo -e -n '\r'  > /dev/ttyUSB1
