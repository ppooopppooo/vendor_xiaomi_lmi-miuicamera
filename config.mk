# Permissions
PRODUCT_COPY_FILES += \
    vendor/xiaomi/lmi-miuicamera/configs/default-permissions/miuicamera-permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/miuicamera-permissions.xml \
    vendor/xiaomi/lmi-miuicamera/configs/permissions/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml

# Sepolicy
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += vendor/xiaomi/lmi-miuicamera/sepolicy/private
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += vendor/xiaomi/lmi-miuicamera/sepolicy/public
BOARD_VENDOR_SEPOLICY_DIRS += vendor/xiaomi/lmi-miuicamera/sepolicy/vendor

# Sysconfig
PRODUCT_COPY_FILES += \
    vendor/xiaomi/lmi-miuicamera/configs/sysconfig/miuicamera-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-whitelist.xml

# Props
PRODUCT_PRODUCT_PROPERTIES += \
	ro.com.google.lens.oem_camera_package=com.android.camera

PRODUCT_SYSTEM_PROPERTIES += \
    persist.vendor.camera.privapp.list=com.android.camera \
    vendor.camera.aux.packagelist=com.android.camera \
    ro.hardware.camera=xiaomi

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.memory.block@1.0 \
    android.hidl.memory.block@1.0.vendor \
    android.hidl.memory@1.0-impl \
    android.hidl.memory@1.0-impl.vendor

DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += vendor/xiaomi/lmi-miuicamera/device_framework_matrix.xml

$(call inherit-product, vendor/xiaomi/lmi-miuicamera/lmi-miuicamera-vendor.mk)
