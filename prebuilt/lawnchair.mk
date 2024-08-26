PRODUCT_PACKAGES += Lawnchair

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/Lawnchair/etc/permissions/privapp-permissions-lawnchair.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-lawnchair.xml \
    $(LOCAL_PATH)/Lawnchair/etc/sysconfig/lawnchair-hiddenapi-package-allowlist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/lawnchair-hiddenapi-package-allowlist.xml

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/Lawnchair/overlay
