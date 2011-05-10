#!/sbin/sh
#
# Backup and restore proprietary Android system files
#

C=/tmp/backup
S=/system

# list of tiny gapps-mdpi-20110501
get_files() {
cat <<EOF
app/CarHomeGoogle.apk
app/CarHomeLauncher.apk
app/Facebook.apk
app/GenieWidget.apk
app/Gmail.apk
app/GoogleBackupTransport.apk
app/GoogleCalendarSyncAdapter.apk
app/GoogleContactsSyncAdapter.apk
app/GoogleFeedback.apk
app/GooglePartnerSetup.apk
app/GoogleQuickSearchBox.apk
app/GoogleServicesFramework.apk
app/googlevoice.apk
app/HtcCopyright.apk
app/HtcEmailPolicy.apk
app/HtcSettings.apk
app/kickback.apk
app/LatinImeTutorial.apk
app/Maps.apk
app/MarketUpdater.apk
app/MediaUploader.apk
app/NetworkLocation.apk
app/OneTimeInitializer.apk
app/PassionQuickOffice.apk
app/SetupWizard.apk
app/soundback.apk
app/Street.apk
app/Talk.apk
app/talkback.apk
app/Twitter.apk
app/Vending.apk
app/VoiceSearch.apk
app/YouTube.apk
etc/permissions/com.google.android.maps.xml
etc/permissions/features.xml
framework/com.google.android.maps.jar
lib/libinterstitial.so
lib/libspeech.so
lib/libvoicesearch.so
EOF
}

# script entry - just copy out and copy in
case "$1" in
    backup)
        mount $S
        rm -rf $C

        # skip to backup incompatible version of gapps
        [ x`sed -ne "/^ro.build.id=froyo$/p" /system/build.prop` == x'' ] && \
        exit 0

        mkdir -p $C
        get_files | while read file
        do
            echo "backup: $file"
            if [ -e $S/$file ]
            then
                fname=`echo $file | busybox sed 's!/!_!g'`
                cp -p $S/$file $C/$fname
            fi
        done
        umount $S
        ;;
    restore)
        get_files | while read file
        do
            echo "restore: $file"
            fname=`echo $file | busybox sed 's!/!_!g'`
            if [ -e $C/$fname ]
            then
                cp -p $C/$fname $S/$file
            fi
        done
        rm -rf $C
        ;;
    *)
        echo "Usage: $0 {backup|restore}"
        exit 1
esac

exit 0
