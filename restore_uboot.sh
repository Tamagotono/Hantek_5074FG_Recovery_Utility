sudo echo
echo
echo "Please make sure the following files are in this folder:"
echo "Bootloader = \"1-uboot.bin\""
echo "Config file for the scope: \"Hantek_5074FG.cfg\""
echo "This file: \"restore_uboot.sh\""
echo "This process takes approximately 3 to 5 minutes. There will be no process indicator, JUST BE PATIENT!!!"
echo ""
echo ""
echo "Power on the scope and press [enter] within 1 second, to start the script."
echo 

read -p "Press [ENTER] when ready..."

cp ./1-uboot.bin /tmp
sudo openocd -f hantek.cfg 

echo "All Done! The bootloader is written to the flash. Please connect up the serial adapter to the pins and powercycle the scope."
