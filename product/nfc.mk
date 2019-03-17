DEVICE_PATH := device/samsung/j7xelte

# Configs
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/configs/nfc/libnfc-sec-hal.conf:system/etc/libnfc-sec-hal.conf \
	$(DEVICE_PATH)/configs/nfc/libnfc-sec.conf:system/etc/libnfc-sec.conf \
	$(DEVICE_PATH)/configs/nfc/nfcee_access.xml:system/etc/nfcee_access.xml \
	$(DEVICE_PATH)/configs/nfc/libnfc-brcm.conf:system/vendor/etc/libnfc-brcm.conf
	$(DEVICE_PATH)/configs/permissions/android.hardware.nfc.hce.xml:system/vendor/etc/permissions/android.hardware.nfc.hce.xml \
        $(DEVICE_PATH)/configs/permissions/android.hardware.nfc.hcef.xml:system/vendor/etc/permissions/android.hardware.nfc.hcef.xml \
        $(DEVICE_PATH)/configs/permissions/android.hardware.nfc.xml:system/vendor/etc/permissions/android.hardware.nfc.xml \
        $(DEVICE_PATH)/configs/permissions/com.android.nfc_extras.xml:system/vendor/etc/permissions/com.android.nfc_extras.xml \
        $(DEVICE_PATH)/configs/permissions/com.gsma.services.nfc.xml:system/vendor/etc/permissions/com.gsma.services.nfc.xml \
        $(DEVICE_PATH)/configs/permissions/com.samsung.android.nfc.mpos.xml:$system/vendor/etc/permissions/com.samsung.android.nfc.mpos.xml \
        $(DEVICE_PATH)/configs/permissions/com.sec.feature.cover.nfc_authentication.xml:system/vendor/etc/permissions/com.sec.feature.cover.nfc_authentication.xml \
        $(DEVICE_PATH)/configs/permissions/com.sec.feature.nfc_authentication.xml:system/vendor/etc/permissions/com.sec.feature.nfc_authentication.xml

# Packages
PRODUCT_PACKAGES += \
        libnfc-nci \
        libnfc_nci_jni \
	com.android.nfc_extras \
	NfcNci \
	Tag \
	android.hardware.nfc@1.0-impl

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.nfc.sec_hal=true \
	ro.nfc.port="I2C"
