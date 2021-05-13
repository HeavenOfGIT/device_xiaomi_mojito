#!/bin/bash 

# Drop CrDroid music which is broken on mojito
sed -i /crDroidMusic/d vendor/lineage/config/crdroid.mk

# Drop healthd and clone LOS one
rm -rf vendor/qcom/opensource/healthd-ext 
git clone --depth=1 --single-branch https://github.com/LineageOS/android_vendor_qcom_opensource_healthd-ext vendor/qcom/opensource/healthd-ext 

# Clone hardware/xiaomi if it doesn't exist
git clone https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi 

