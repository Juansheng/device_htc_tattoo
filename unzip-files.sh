#!/bin/sh

ZIP=signed-google_ion.zip

#(cd ../prebuilt-open && ./unzip-files.sh $ZIP)
(cd ../../pv-open && ./unzip-files.sh $ZIP)
(cd ../../qcom/android-open/libopencorehw && ./unzip-files.sh $ZIP)
(cd ../../qcom/android-open/loc_api && ./unzip-files.sh $ZIP)
(cd ../../qcom/android-open/pvomx && ./unzip-files.sh $ZIP)
(cd ../../qcom/proprietary-open/dsp/libqcamera && ./unzip-files.sh $ZIP)
(cd ../../qcom/proprietary-open/dsp/mm && ./unzip-files.sh $ZIP)
(cd ../../qcom/proprietary-open/libaudioeq && ./unzip-files.sh $ZIP)
(cd ../../qcom/proprietary-open/libgps && ./unzip-files.sh $ZIP)
(cd ../../qcom/proprietary-open/libhgl && ./unzip-files.sh $ZIP)
