#!/bin/bash
source environment_variables.sh

parent_path=$(pwd -P)
echo $parent_path
stty -F /dev/ttyUSB1 9600 raw -echo -echoe -echok -echoctl -echoke
echo -e -n 'config terminal\r' > /dev/ttyUSB1
echo -e -n "boot system disk0:/${TFTP_SERVER_FTD_IMAGE}\r"  > /dev/ttyUSB1

bash "${parent_path}/install_processes/is_installing.sh"
