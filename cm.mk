## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := OT993D

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/alcatel/OT993D/device_OT993D.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := OT993D
PRODUCT_NAME := cm_OT993D
PRODUCT_BRAND := alcatel
PRODUCT_MODEL := OT993D
PRODUCT_MANUFACTURER := Alcatel
