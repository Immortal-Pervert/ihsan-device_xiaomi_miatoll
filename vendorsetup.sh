color="\033[1;36m"
end="\033[0m"

# Common DT
echo -e "${color}Cloning Common DT${end}"
git clone -b 14-inf https://github.com/ihsanulrahman/device_xiaomi_sm6250-common device/xiaomi/sm6250-common

# Vendor & Kernel Sources
echo -e "${color}Cloning vendor${end}"
git clone --depth=1 -b 14-s https://github.com/ihsanulrahman/vendor_xiaomi_miatoll vendor/xiaomi/miatoll
git clone --depth=1 -b 14 https://github.com/ihsanulrahman/vendor_xiaomi_sm6250-common vendor/xiaomi/sm6250-common

echo -e "${color}Cloning kernel${end}"
git clone --depth=1 -b 15-kinesis https://github.com/clarencekopitiam/kernel_xiaomi_sm6250 kernel/xiaomi/sm6250

sleep 1

# Lineage-21 Hardware Source
echo -e "${color}Cloning Hardware & Timekeep from Lineage-21${end}"
rm -rf hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-21 hardware/xiaomi 
git clone https://github.com/LineageOS/android_hardware_sony_timekeep -b lineage-21 hardware/sony/timekeep

# Miui Camera
echo -e "${color}Cloning Miui Camera${end}"
git clone https://github.com/c0smic-Lab/vendor_xiaomi_miuicamera vendor/xiaomi/miuicamera
bash vendor/xiaomi/miuicamera/vendorsetup.sh

# Dolby
echo -e "${color}Cloning Dolby${end}"
git clone https://github.com/veux-frost-testzone/hardware_dolby hardware/dolby

sleep 1