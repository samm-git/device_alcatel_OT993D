USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/alcatel/OT993D/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := 993D

TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_RECOVERY_INITRC := device/alcatel/OT993D/recovery.rc

# copied from original recovery
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom androidboot.bootloader=LB35N0N0 qcsblhdver=HB35N0N0 qcsblver=QB35N0N0 oemsblhdver=EB35NHN0 oemsblver=EB35N0N0
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

# recovery name and rev
RECOVERY_NAME := CWM/OT993D Recovery
RECOVERY_REVISION := r6
# recovery settings
BOARD_HAS_NO_SELECT_BUTTON := false
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun%d/file"

# some platform specific settings, not currently in use
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_CORTEX_CACHE_LINE_32 := true

TARGET_ARCH_VARIANT_CPU := cortex-a5
TARGET_ARCH_VARIANT_FPU := neon

TARGET_USERIMAGES_USE_EXT4 := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_QCOM_FM := true

# we should use libaudio from arora 
# Additional libraries
##TARGET_PROVIDES_LIBAUDIO := true
##BOARD_GLOBAL_CFLAGS += -DQCOM_HARDWARE


# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

BOARD_HAVE_QCOM_FM := true
BOARD_HAVE_BLUETOOTH:= true
