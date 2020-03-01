#This should be ran on a raspberry pi 
wget https://downloads.raspberrypi.org/raspbian_lite_latest
unzip raspbian_lite_latest
sudo losetup -Pr /dev/loop0 2020-02-13-raspbian-buster-lite.img
mkdir rpi
sudo mount -o ro /dev/loop0p2 ./rpi
sudo tar -C ./rpi -czpf raspbian.tar.gz --numeric-owner .
sudo umount ./rpi
sudo losetup -d /dev/loop0