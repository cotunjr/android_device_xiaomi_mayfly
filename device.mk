#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8450-common
$(call inherit-product, device/xiaomi/sm8450-common/common.mk)

# Overlay
PRODUCT_PACKAGES += \
    ApertureResMayfly \
    FrameworksResMayfly \
    NfcResMayfly \
    SettingsProviderResMayfly \
    SettingsResMayfly \
    SystemUIResMayfly \
    WifiResMayfly \
    AOSPAMayflyFrameworksOverlay
# Sensors
PRODUCT_PACKAGES += \
    sensors.xiaomi

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Call the proprietary setup
$(call inherit-product, vendor/xiaomi/mayfly/mayfly-vendor.mk)


# Camera
PRODUCT_SYSTEM_PROPERTIES += \
    ro.product.mod_device=mayfly

# Characteristics
PRODUCT_CHARACTERISTICS := nosdcard


# Display
PRODUCT_ODM_PROPERTIES += \
    vendor.display.disable_3d_adaptive_tm=0 \
    vendor.display.enable_fb_scaling=1 \
    vendor.display.enable_rounded_corner=0 \
    vendor.display.enable_optimize_refresh=1

PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.display.ai_disp.enable=true \
    ro.vendor.display.hwc_thermal_dimming=true \
    ro.vendor.display.mi_calib.enable=true \
    ro.vendor.display.nature_mode.enable=true \
    ro.vendor.histogram.enable=true \
    ro.vendor.sre.enable=true \
    ro.vendor.xiaomi.bl.poll=true

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.3-service.xiaomi \
    libudfpshandler

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.mayfly.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.mayfly.rc

# Kernel
KERNEL_PREBUILT_DIR := $(LOCAL_PATH)-kernel
