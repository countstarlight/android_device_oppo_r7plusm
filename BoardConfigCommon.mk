# inherit from the proprietary version
-include vendor/oppo/r7plust/BoardConfigVendor.mk

LOCAL_PATH := device/oppo/r7plust

DEVICE_FOLDER_COMMON := device/oppo/r7plust

# Platform
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOARD_PLATFORM := mt6795
TARGET_NO_BOOTLOADER := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_NO_FACTORYIMAGE := true

TARGET_LDPRELOAD += libxlog.so:libmtkabi.so

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

TARGET_CPU_CORTEX_A53 := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6795

TARGET_USERIMAGES_USE_EXT4:=true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Kernel
TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --second_offset 0x00e88000 --tags_offset 0x0df88000 --board $(BUILD_NUMBER)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
BOARD_CUSTOM_BOOTIMG := true

TARGET_KMODULES := true

COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# EGL
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_LEGACY_MTK_AV_BLOB := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

BOARD_HAVE_OPENSOURCE_IMMVIBE := true
BOARD_HARDWARE_CLASS := $(DEVICE_FOLDER_COMMON)/cmhw

# RIL
# moved to forked frameworks_opt_telephony repo
#BOARD_RIL_CLASS := ../../../$(DEVICE_FOLDER)/ril/
MTK_CIP_SUPPORT := yes
MTK_DT_SUPPORT := no
MTK_VT3G324M_SUPPORT := no
MTK_UMTS_TDD128_MODE := no
MTK_SHARE_MODEM_CURRENT := 1
MTK_SHARE_MODEM_SUPPORT := 2
MTK_MD_SHUT_DOWN_NT := yes
MTK_FD_SUPPORT := yes
MTK_IPV6_SUPPORT := yes
MTK_LTE_SUPPORT := yes
MTK_LTE_DC_SUPPORT := no
MTK_SVLTE_SUPPORT := no
MTK_EAP_SIM_AKA := yes
MTK_IRAT_SUPPORT := no
MTK_DTAG_DUAL_APN_SUPPORT := no
MTK_MD1_SUPPORT := 5
MTK_MD2_SUPPORT := 4
MTK_MD3_SUPPORT := 2
MTK_MD5_SUPPORT := 5
MTK_ENABLE_MD1 = yes
MTK_ENABLE_MD2 = no
MTK_ENABLE_MD3 = no
MTK_ENABLE_MD5 = no
MTK_TC1_FEATURE := no
MTK_SIM_RECOVERY := yes
MTK_SIM_HOT_SWAP_COMMON_SLOT := no
MTK_WORLD_PHONE := yes
MTK_VOLTE_SUPPORT := yes
MTK_VILTE_SUPPORT := yes
MTK_WIFI_CALLING_RIL_SUPPORT := yes
COMMON_GLOBAL_CFLAGS += \
	-DMTK_CIP_SUPPORT=1 \
	-DMTK_SHARE_MODEM_CURRENT=1 \
	-DMTK_SHARE_MODEM_SUPPORT=2 \
	-DMTK_MD_SHUTDOWN_NT=1 \
	-DMTK_FD_SUPPORT=1 \
	-DMTK_IPV6_SUPPORT=1 \
	-DMTK_LTE_SUPPORT=1 \
	-DMTK_EAP_SIM_AKA=1 \
	-DMTK_MD1_SUPPORT=5 \
	-DMTK_MD2_SUPPORT=4 \
	-DMTK_MD3_SUPPORT=2 \
	-DMTK_MD5_SUPPORT=5 \
	-DMTK_ENABLE_MD1=1 \
	-DMTK_SIM_RECOVERY=1 \
	-DMTK_WORLD_PHONE=1 \
	-DMTK_VOLTE_SUPPORT=1 \
	-DMTK_VILTE_SUPPORT=1 \
	-DMTK_WIFI_CALLING_RIL_SUPPORT=1 \

COMMON_GLOBAL_CPPFLAGS += \
	-DMTK_CIP_SUPPORT=1 \
	-DMTK_SHARE_MODEM_CURRENT=1 \
	-DMTK_SHARE_MODEM_SUPPORT=2 \
	-DMTK_MD_SHUTDOWN_NT=1 \
	-DMTK_FD_SUPPORT=1 \
	-DMTK_IPV6_SUPPORT=1 \
	-DMTK_LTE_SUPPORT=1 \
	-DMTK_EAP_SIM_AKA=1 \
	-DMTK_MD1_SUPPORT=5 \
	-DMTK_MD2_SUPPORT=4 \
	-DMTK_MD3_SUPPORT=2 \
	-DMTK_MD5_SUPPORT=5 \
	-DMTK_ENABLE_MD1=1 \
	-DMTK_SIM_RECOVERY=1 \
	-DMTK_WORLD_PHONE=1 \
	-DMTK_VOLTE_SUPPORT=1 \
	-DMTK_VILTE_SUPPORT=1 \
	-DMTK_WIFI_CALLING_RIL_SUPPORT=1 \

BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc

# WIFI
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_FOLDER_COMMON)/bluetooth

# system.prop
TARGET_SYSTEM_PROP := $(DEVICE_FOLDER_COMMON)/system.prop

# RECOVERY
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/ramdisk/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TARGET_USERIMAGES_USE_EXT4 := true

# Flags
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# LightHAL
TARGET_PROVIDES_LIBLIGHT := true

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

# GPS
BOARD_GPS_LIBRARIES :=true
BOARD_CONNECTIVITY_MODULE := MT6630 
BOARD_MEDIATEK_USES_GPS := true

# FM
MTK_FM_SUPPORT :=true
MTK_FM_RX_SUPPORT :=true

# MKImage
TARGET_MKIMAGE := $(LOCAL_PATH)/mkimage
TARGET_USE_BUILT_BOOTIMAGE := true

# SELinux
BOARD_SEPOLICY_DIRS += \
    $(DEVICE_FOLDER_COMMON)/sepolicy

# NOTE: remove this once Marshmallow kernel is available
POLICYVERS := 30

# Hack for building without kernel sources
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
