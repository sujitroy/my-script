echo make directory 
mkdir ownrom
echo move to directory 
cd ownrom

echo  sync source first 
repo init -u git://github.com/OwnROM/android -b own-n

repo sync --force-sync

git clone https://github.com/OwnROM-Devices/android_device_xiaomi_armani.git device/xiaomi/armani -b own-n

echo device tree cloned  
git clone https://github.com/OwnROM-Devices/android_kernel_xiaomi_armani.git kernel/xiaomi/armani -b own-n

echo kernel cloned 

git clone https://github.com/sujitroy/proprietary_vendor_xiaomi.git vendor/xiaomi -b cm-14.1 

echo vendor cloned 

echo now start the build ...

bash armani.sh