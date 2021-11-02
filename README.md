# GVE_DevNet_ASA_to_FTD_Script
This bash script downloads a FTD Image from a TFTP Server and installs it onto an ASA out of the box.


## Contacts
* Charles Llewellyn

## Solution Components
*  Linux
*  Bash
*  ASA
*  TFTP

## Installation/Configuration

1. Install a TFTP Server that has ip access to ASA/ASAs
   a. Store FTD file in TFTP Server for ASA's to download
2. Plug ASA console connection into Linux based system.
   a. Check if you are able to console into the ASA
3. Download this repository onto Linux system from step 2.
4. cd into ftd_image_installer
5. Installtion is complete, Follow below Usage Instructions to use the script.


## Usage

1. Edit the environment_variables.sh file
   * TFTP_SERVER_IP_ADRESS="IP ADDRESS TO YOUR TFTP SERVER"
   * TFTP_SERVER_FILE_PATH="PATH TO FTD IMAGE ON TFTP SERVER, DO NOT INCLUDE NAME OF IMAGE."
   * TFTP_SERVER_FTD_IMAGE="NAME OF FTD IMAGE ON TFTP SERVER"

2. Add ip addresses and subnet masks (to be used for each device) (192.168.45.10 255.255.255.0) 
   to the ip_addresses.txt file. (Examples of format are in the file - Can be deleted and replaced). 

3. Plug console cable into unconfigured ASA

4. To start the install script, use the following command: sudo bash auto-install.sh

5. Output should begin to update you on the install process.

6. Once the output has stated "Image Install Has Begun...", you can remove 
   the console cable from switch.

7. repeat steps 3-6 until all devices have begun the image install process.



# Screenshots
![/IMAGES/topology.png](/IMAGES/topology.png)

![/IMAGES/0image.png](/IMAGES/0image.png)

### LICENSE

Provided under Cisco Sample Code License, for details see [LICENSE](LICENSE.md)

### CODE_OF_CONDUCT

Our code of conduct is available [here](CODE_OF_CONDUCT.md)

### CONTRIBUTING

See our contributing guidelines [here](CONTRIBUTING.md)

#### DISCLAIMER:
<b>Please note:</b> This script is meant for demo purposes only. All tools/ scripts in this repo are released for use "AS IS" without any warranties of any kind, including, but not limited to their installation, use, or performance. Any use of these scripts and tools is at your own risk. There is no guarantee that they have been through thorough testing in a comparable environment and we are not responsible for any damage or data loss incurred with their use.
You are responsible for reviewing and testing any scripts you run thoroughly before use in any non-testing environment.
