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
    Superuser \
    FileManager \
    FM
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

# LiveWallpaper
PRODUCT_PACKAGES += \
	LiveWallpapersPicker

# sensors library
PRODUCT_PACKAGES += \
    sensors.msm7k

# Libraries necessary to complete the compilation
PRODUCT_COPY_FILES += \
    device/htc/tattoo/prebuilt/system/lib/libgps.so:obj/lib/libgps.so \
    device/htc/tattoo/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml

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
    device/htc/tattoo/prebuilt/system/etc/apns-conf.xml:system/etc/apns-conf.xml \
	device/htc/tattoo/prebuilt/system/etc/AudioPara4.csv:system/etc/AudioPara4.csv \
	device/htc/tattoo/prebuilt/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
	device/htc/tattoo/prebuilt/system/etc/AudioPreProcess.csv:system/etc/AudioPreProcess.csv \
    device/htc/tattoo/prebuilt/system/etc/bash/bash_logout:system/etc/bash/bash_logout \
    device/htc/tattoo/prebuilt/system/etc/bash/bashrc:system/etc/bash/bashrc \
    device/htc/tattoo/prebuilt/system/etc/gps.conf:system/etc/gps.conf \
    device/htc/tattoo/prebuilt/system/etc/hosts:system/etc/hosts \
    device/htc/tattoo/prebuilt/system/etc/init.d/00sysctl:system/etc/init.d/00sysctl \
    device/htc/tattoo/prebuilt/system/etc/init.d/01dalvikcache:system/etc/init.d/01dalvikcache \
    device/htc/tattoo/prebuilt/system/etc/init.d/08compcache:system/etc/init.d/08compcache \
    device/htc/tattoo/prebuilt/system/etc/init.d/20optandfix:system/etc/init.d/20optandfix \
    device/htc/tattoo/prebuilt/system/etc/init.d/80userinit:system/etc/init.d/80userinit \
    device/htc/tattoo/prebuilt/system/etc/media_profiles.xml:/system/etc/media_profiles.xml \
    device/htc/tattoo/prebuilt/system/etc/passwd:system/etc/passwd \
    device/htc/tattoo/prebuilt/system/etc/resolv.conf:system/etc/resolv.conf \
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
	device/htc/tattoo/prebuilt/META-INF/com/google/android/update-binary:META-INF/com/google/android/update-binary \
	device/htc/tattoo/prebuilt/META-INF/com/google/android/updater-script:META-INF/com/google/android/updater-script \
	device/htc/tattoo/prebuilt/META-INF/com/android/metadata:META-INF/com/android/metadata \
	device/htc/tattoo/prebuilt/system/bin/akm8973:system/bin/akm8973 \
	device/htc/tattoo/prebuilt/system/bin/backuptool.sh:system/bin/backuptool.sh \
	device/htc/tattoo/prebuilt/system/bin/sysinit:system/bin/sysinit \
	device/htc/tattoo/prebuilt/system/xbin/rzscontrol:system/xbin/rzscontrol \
	device/htc/tattoo/prebuilt/system/lib/modules/wlan.ko:system/lib/modules/wlan.ko

# Media
PRODUCT_COPY_FILES += \
	system/core/rootdir/etc/vold.fstab:system/etc/vold.fstab \
	device/htc/tattoo/prebuilt/system/media/bootanimation.zip:system/media/bootanimation.zip \
	device/htc/tattoo/prebuilt/system/media/Lock.ogg:system/media/audio/ui/Lock.ogg \
	device/htc/tattoo/prebuilt/system/media/Unlock.ogg:system/media/audio/ui/Unlock.ogg

# Prebuilt libraries
PRODUCT_COPY_FILES += \
	device/htc/tattoo/prebuilt/system/lib/libaudioeq.so:system/lib/libaudioeq.so \
	device/htc/tattoo/prebuilt/system/lib/libgps.so:system/lib/libgps.so \
	device/htc/tattoo/prebuilt/system/lib/libhtc_acoustic.so:system/lib/libhtc_acoustic.so \
	device/htc/tattoo/prebuilt/system/lib/libhtc_ril.so:system/lib/libhtc_ril.so \
	device/htc/tattoo/prebuilt/system/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
	device/htc/tattoo/prebuilt/system/lib/libmmcamera.so:system/lib/libmmcamera.so \
	device/htc/tattoo/prebuilt/system/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
	device/htc/tattoo/prebuilt/system/lib/libmm-qcamera-tgt.so:system/lib/libmm-qcamera-tgt.so \
	device/htc/tattoo/prebuilt/system/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
	device/htc/tattoo/prebuilt/system/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
	device/htc/tattoo/prebuilt/system/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
	device/htc/tattoo/prebuilt/system/lib/libt9.so:system/lib/libt9.so

# WITH_WINDOWS_MEDIA
PRODUCT_COPY_FILES += \
	device/htc/tattoo/prebuilt/system/etc/pvasflocal.cfg:system/etc/pvasflocal.cfg \
	device/htc/tattoo/prebuilt/system/lib/libomx_wmadec_sharedlibrary.so:system/lib/libomx_wmadec_sharedlibrary.so \
	device/htc/tattoo/prebuilt/system/lib/libomx_wmvdec_sharedlibrary.so:system/lib/libomx_wmvdec_sharedlibrary.so \
	device/htc/tattoo/prebuilt/system/lib/libpvasfcommon.so:system/lib/libpvasfcommon.so \
	device/htc/tattoo/prebuilt/system/lib/libpvasflocalpbreg.so:system/lib/libpvasflocalpbreg.so \
	device/htc/tattoo/prebuilt/system/lib/libpvasflocalpb.so:system/lib/libpvasflocalpb.so

