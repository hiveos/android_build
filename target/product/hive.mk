PRODUCT_PACKAGES := \
    libfwdlockengine \
    libWnnEngDic \
    libWnnJpnDic \
    libwnndict \
    WAPPushManager

# Additional settings used in all AOSP builds
PRODUCT_PROPERTY_OVERRIDES := \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.config.ringtone=Ring_Synth_04.ogg \
    ro.config.notification_sound=pixiedust.ogg \
    ro.build.display.id=HIVE \
    net.bt.name=HIVE

# Put en_US first in the list, so make it default.
PRODUCT_LOCALES := en_US

# Include drawables for all densities
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi

PRODUCT_PACKAGES := \
    DeskClock \
    Bluetooth \
    Calculator \
    Calendar \
    CertInstaller \
    InputDevices \
    Keyguard \
    LatinIME \
    OneTimeInitializer \
    Provision \
    Settings \
    SystemUI \
    TeleService \
    CalendarProvider \
    bluetooth-health \
    hostapd \
    wpa_supplicant.conf \
    WallpaperCropper

PRODUCT_PACKAGES += \
    audio \
    clatd \
    clatd.conf \
    dhcpcd.conf \
    network \
    pand \
    pppd \
    sdptool \
    wpa_supplicant

PRODUCT_PACKAGES += \
    librs_jni

PRODUCT_PACKAGES += \
    audio.primary.default \
    audio_policy.default \
    local_time.default \
    power.default

PRODUCT_PACKAGES += \
    local_time.default

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=unknown

$(call inherit-product-if-exists, frameworks/base/data/fonts/fonts.mk)
$(call inherit-product-if-exists, external/noto-fonts/fonts.mk)
$(call inherit-product-if-exists, external/naver-fonts/fonts.mk)
$(call inherit-product-if-exists, external/sil-fonts/fonts.mk)
$(call inherit-product-if-exists, frameworks/base/data/keyboards/keyboards.mk)
$(call inherit-product-if-exists, frameworks/webview/chromium/chromium.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)
