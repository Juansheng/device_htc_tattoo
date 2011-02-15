# Modified from build/target/product/core.mk
PRODUCT_POLICY := android.policy_phone

PRODUCT_PACKAGES += \
    framework-res \
    Browser \
    Contacts \
    Launcher2 \
    HTMLViewer \
    Phone \
    ApplicationsProvider \
    ContactsProvider \
    DownloadProvider \
    MediaProvider \
    PicoTts \
    SettingsProvider \
    TelephonyProvider \
    TtsService \
    VpnServices \
    UserDictionaryProvider \
    PackageInstaller \
    DefaultContainerService
# End of core.mk

# Modified from build/target/product/generic.mk
PRODUCT_PACKAGES += \
    AccountAndSyncSettings \
    DeskClock \
    AlarmProvider \
    Bluetooth \
    Calculator \
    Calendar \
    CalendarProvider \
    Camera \
    CertInstaller \
    DrmProvider \
    Email \
	Fallback \
    Gallery \
    LatinIME \
    Mms \
    Music \
    Protips \
    QuickSearchBox \
    Settings \
    Sync \
    SyncProvider \
    Updater \
    Superuser
# End of generic.mk

# sdk builds
PRODUCT_PACKAGES += \
    Development \
    GlobalSearch \
	SdkSetup \
    SoundRecorder \
    VoiceDialer \
	SpareParts \
    GoogleContactsProvider

# LiveWallpaper and sensors lib
PRODUCT_PACKAGES += \
	LiveWallpapersPicker \
	sensors.bahamas

# Tattoo uses medium-density artwork where available
PRODUCT_LOCALES := \
	en_US \
	en_GB \
	fr_FR \
	it_IT \
	es_ES \
	es_US \
	de_DE \
	nl_NL \
	cs_CZ \
	pl_PL \
	zh_TW \
	zh_CN \
	ru_RU \
	ko_KR \
	nb_NO \
	pt_PT \
	pt_BR \
	da_DK \
	el_GR \
	sv_SE \
	tr_TR \
	ja_JP \
	mdpi

PRODUCT_COPY_FILES := \
	system/core/rootdir/etc/vold.fstab:system/etc/vold.fstab \
	frameworks/base/data/sounds/effects/camera_click.ogg:system/media/audio/ui/camera_click.ogg \
	frameworks/base/data/sounds/effects/VideoRecord.ogg:system/media/audio/ui/VideoRecord.ogg

# libgps is necessary to complete the compilation
PRODUCT_COPY_FILES += \
    device/htc/tattoo/prebuilt/boot/logo.rle:root/logo.rle \
    device/htc/tattoo/prebuilt/system/lib/libgps.so:obj/lib/libgps.so \
    device/htc/tattoo/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml

# Include available languages for TTS in the system image
#include external/svox/pico/lang/PicoLangDeDeInSystem.mk
#include external/svox/pico/lang/PicoLangEnGBInSystem.mk
#include external/svox/pico/lang/PicoLangEnUsInSystem.mk
#include external/svox/pico/lang/PicoLangEsEsInSystem.mk
#include external/svox/pico/lang/PicoLangFrFrInSystem.mk
#include external/svox/pico/lang/PicoLangItItInSystem.mk

# Permissions and other stuff
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Files in /system/etc
PRODUCT_COPY_FILES += \
	device/htc/tattoo/prebuilt/system/etc/AudioPara4.csv:system/etc/AudioPara4.csv \
	device/htc/tattoo/prebuilt/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
	device/htc/tattoo/prebuilt/system/etc/AudioPreProcess.csv:system/etc/AudioPreProcess.csv \
    device/htc/tattoo/prebuilt/system/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/htc/tattoo/prebuilt/system/etc/gps.conf:system/etc/gps.conf \
    device/htc/tattoo/prebuilt/system/etc/passwd:system/etc/passwd \
    device/htc/tattoo/prebuilt/system/etc/init.d/00sysctl:system/etc/init.d/00sysctl \
    device/htc/tattoo/prebuilt/system/etc/init.d/02squashfs:system/etc/init.d/02squashsf \
    device/htc/tattoo/prebuilt/system/etc/init.d/08compcache:system/etc/init.d/08compcache \
    device/htc/tattoo/prebuilt/system/etc/init.d/20opt_and_fix:system/etc/init.d/20opt_and_fix \
    device/htc/tattoo/prebuilt/system/etc/init.d/80userinit:system/etc/init.d/80userinit \
    device/htc/tattoo/prebuilt/system/etc/init.d/99complete:system/etc/init.d/99complete \
    device/htc/tattoo/prebuilt/system/etc/sysctl.conf:system/etc/sysctl.conf \
    device/htc/tattoo/prebuilt/system/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    device/htc/tattoo/prebuilt/system/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    device/htc/tattoo/prebuilt/system/etc/wifi/Fw1251r1c.bin:system/etc/wifi/Fw1251r1c.bin \
    device/htc/tattoo/prebuilt/system/etc/wifi/tiwlan.ini:system/etc/wifi/tiwlan.ini

# Prebuilt for /system/usr/keychars and /system/usr/keylayout
PRODUCT_COPY_FILES += \
	device/htc/tattoo/prebuilt/system/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
	device/htc/tattoo/prebuilt/system/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin

# boot partition
PRODUCT_COPY_FILES += \
	device/htc/tattoo/prebuilt/boot/init.rc:root/init.rc

# Other bin stuff
PRODUCT_COPY_FILES += \
	device/htc/tattoo/prebuilt/META-INF/com/google/android/update-script:META-INF/com/google/android/update-script \
	device/htc/tattoo/prebuilt/system/bin/akm8973:system/bin/akm8973 \
	device/htc/tattoo/prebuilt/system/lib/modules/placeholder:system/lib/modules/placeholder

PRODUCT_COPY_FILES += \
	device/htc/tattoo/prebuilt/system/media/audio/notifications/Teleport.mp3:system/media/audio/notifications/Teleport.mp3 \
	device/htc/tattoo/prebuilt/system/media/bootanimation.zip:system/media/bootanimation.zip

# Prebuilt libraries
PRODUCT_COPY_FILES += \
	device/htc/tattoo/prebuilt/system/lib/libA2DP.so:system/lib/libA2DP.so \
	device/htc/tattoo/prebuilt/system/lib/libaudioeq.so:system/lib/libaudioeq.so \
	device/htc/tattoo/prebuilt/system/lib/libGLES_qcom.so:system/lib/egl/libGLES_qcom.so \
	device/htc/tattoo/prebuilt/system/lib/libgps.so:system/lib/libgps.so \
	device/htc/tattoo/prebuilt/system/lib/libhtc_acoustic.so:system/lib/libhtc_acoustic.so \
	device/htc/tattoo/prebuilt/system/lib/libhtc_ril.so:system/lib/libhtc_ril.so \
	device/htc/tattoo/prebuilt/system/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
	device/htc/tattoo/prebuilt/system/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
	device/htc/tattoo/prebuilt/system/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
	device/htc/tattoo/prebuilt/system/lib/libt9.so:system/lib/libt9.so

# Eclair LIBCAMERA
PRODUCT_COPY_FILES += \
	device/htc/tattoo/prebuilt/system/lib/liboemcamera.so:system/lib/liboemcamera.so

