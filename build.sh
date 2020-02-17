wget https://downloads.raspberrypi.org/raspbian_lite_latest raspbian.zip
unzip raspbian.zip
sudo losetup -Pr /dev/loop0 2020-02-13-raspbian-buster-lite.imgmkdir rpi
sudo mount -o ro /dev/loop0p2 ./rpi
sudo tar -C ./rpi -czpf raspbian.tar.gz --numeric-owner .
sudo umount ./rpi
sudo losetup -d /dev/loop0