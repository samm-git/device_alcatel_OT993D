USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/alcatel/OT993D/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := 993D

TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_RECOVERY_INITRC := device/alcatel/OT993D/recovery.rc

# copied from original recovery
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom androidboot.bootloader=LB35N0N0 qcsblhdver=HB35N0N0 qcsblver=QB35N0N0 oemsblhdver=EB35NHN0 oemsblver=EB35N0N0
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

# recovery name and rev
RECOVERY_NAME := CWM/OT993D Recovery
RECOVERY_REVISION := r4
# recovery settings
BOARD_HAS_NO_SELECT_BUTTON := false
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun%d/file"
