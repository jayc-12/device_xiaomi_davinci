git clone https://github.com/jayc-12/device_xiaomi_sm6150-common.git -b arc device/xiaomi/sm6150-common
git clone https://github.com/jayc-12/vendor_xiaomi.git -b arc vendor/xiaomi
git clone https://github.com/xNombre/msm-4.14.git -b 12.1 kernel/xiaomi/sm6150
cd device/xiaomi/davinci && git pull && cd ../../../
cd device/xiaomi/sm6150-common && git pull && cd ../../../
cd vendor/xiaomi/ && git pull && cd ../../../
cd kernel/xiaomi/sm6150 && git pull && cd ../../../
