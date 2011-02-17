#/bin/sh

# - to generate Froyo ROM

PRODUCT="$HOME/mydroid/out/target/product/tattoo"
ROMNAME="Froyo-AOSP.zip"

[ ! -d $PRODUCT ] && echo "$PRODUCT not found!" && exit 1

cd $PRODUCT
# NOTE: ash MUST be linked to /system/bin/sh @ updater-script
#find system -type l -exec rm -rf {} \; &> /dev/null

echo "generate ROM..."
rm -f $ROMNAME &> /dev/null
zip -r $ROMNAME META-INF boot.img system &> /dev/null

echo "sign it..."
androsign $ROMNAME

mv ${ROMNAME%.zip}-signed.zip $ROMNAME

