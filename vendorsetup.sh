color="\033[1;36m"
end="\033[0m"

# Lineage-21 Hardware Source
echo -e "${color}Cloning Hardware & Timekeep from Lineage-21${end}"
rm -rf hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-21 hardware/xiaomi 
git clone https://github.com/LineageOS/android_hardware_sony_timekeep -b lineage-21 hardware/sony/timekeep

sleep 1

# Miui Camera & Dolby 
bash vendor/xiaomi/miuicamera/vendorsetup.sh

echo -e "${color}Cloning Dolby${end}"
git clone https://github.com/veux-frost-testzone/hardware_dolby hardware/dolby

sleep 1
