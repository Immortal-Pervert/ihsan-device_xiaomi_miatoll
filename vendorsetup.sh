color="\033[1;36m"
end="\033[0m"

# Vendor & Kernel Sources
echo -e "${color}Cloning vendor${end}"
git clone --depth=1 -b icecream https://github.com/ihsanulrahman/vendor_xiaomi_miatoll vendor/xiaomi/miatoll

echo -e "${color}Cloning kernel${end}"
git clone --depth=1 -b 15 https://github.com/clarencekopitiam/kernel_xiaomi_sm6250 kernel/xiaomi/sm6250

sleep 1

# Hardware/xiaomi & Timekeeo
echo -e "${color}Cloning Hardware & Timekeep from Lineage-21${end}"
rm -rf hardware/xiaomi
git clone https://github.com/ProjectPixelage/android_hardware_xiaomi -b 15 hardware/xiaomi 
git clone https://github.com/LineageOS/android_hardware_sony_timekeep -b lineage-21 hardware/sony/timekeep

sleep 1

# Miui Camera & OP Dolby 
echo -e "${color}Cloning Miui Camera${end}"
git clone https://github.com/ihsanulrahman/vendor_xiaomi_miuicamera --depth=1 vendor/xiaomi/miuicamera
bash vendor/xiaomi/miuicamera/vendorsetup.sh

echo -e "${color}Cloning OP Dolby${end}"
git clone https://github.com/veux-frost-testzone/hardware_dolby hardware/dolby

sleep 3