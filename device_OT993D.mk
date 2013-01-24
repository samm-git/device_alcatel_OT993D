$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/alcatel/OT993D/993D-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/alcatel/OT993D/overlay

LOCAL_PATH := device/alcatel/OT993D

TARGET_KERNEL_CONFIG := ot993d_defconfig
# fallback
TARGET_PREBUILT_KERNEL := device/alcatel/OT993D/kernel

PRODUCT_COPY_FILES += \
	$(shell mkdir -p $OUT/recovery/root/vendor) \
	device/alcatel/OT993D/vendor/bin/linker:recovery/root/vendor/bin/linker \
	device/alcatel/OT993D/vendor/bin/rmt_storage:recovery/root/vendor/bin/rmt_storage \
	device/alcatel/OT993D/vendor/lib/libc.so:recovery/root/vendor/lib/libc.so \
	device/alcatel/OT993D/vendor/lib/libm.so:recovery/root/vendor/lib/libm.so \
	device/alcatel/OT993D/vendor/lib/libcutils.so:recovery/root/vendor/lib/libcutils.so \
	device/alcatel/OT993D/vendor/lib/liblog.so:recovery/root/vendor/lib/liblog.so \
	device/alcatel/OT993D/vendor/lib/libstdc++.so:recovery/root/vendor/lib/libstdc++.so

# runs after recovery boot
PRODUCT_COPY_FILES +=  device/alcatel/OT993D/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_OT993D
PRODUCT_DEVICE := OT993D
