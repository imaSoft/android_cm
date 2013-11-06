#/bin/sh

# make a new system.img

rm system.img
dd if=/dev/zero of=system.img bs=1024 count=610000
mkfs.ext3 system.img


# copy the files to the new system.img

mkdir -p /tmp/system
sudo mount system.img /tmp/system
sudo rm -r /tmp/system/*
sudo cp -r --preserve out/target/product/rk29board/system/* /tmp/system
sudo rm /tmp/system/app/CMAccount.apk
#sudo cp -r --preserve device/rockchip/rk29board/other/* /tmp/system
sudo chown root:root -R /tmp/system
sudo chmod 06755 /tmp/system/xbin/su
sudo umount /tmp/system
rm -r /tmp/system


# make boot.img and copy to the same direktory as system.img

rm boot.img
pushd out/target/product/rk29board/root/
chmod g-w -R *
find . | cpio -o -H newc | gzip -n > ../../../../../boot.gz
popd

cd out/target/product/rk29board/rktools
./rkcrc -k ../../../../../boot.gz ../../../../../boot.img

rm ../../../../../boot.gz

exit 0
