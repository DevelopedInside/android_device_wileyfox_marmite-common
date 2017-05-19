# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/configs/lowi.conf:system/etc/lowi.conf \
    $(LOCAL_PATH)/configs/xtwifi.conf:system/etc/xtwifi.conf

PRODUCT_BOOT_JARS += \
    com.qti.location.sdk

PRODUCT_PACKAGES += \
    libcurl \
    libgnsspps \
    gps.conf
