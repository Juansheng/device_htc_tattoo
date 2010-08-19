#
# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This is the top-level configuration for a Tattoo build
$(call inherit-product, device/htc/tattoo/products/tattoo_custom.mk)

# Overwrite PRODUCT_* strings
PRODUCT_NAME := full_tattoo
PRODUCT_BRAND := google
PRODUCT_DEVICE := tattoo
PRODUCT_MODEL := Tattoo
PRODUCT_MANUFACTURER := HTC

PLATFORM_VERSION := 2.2
BUILD_ID := FRF91
BUILD_DISPLAY_ID := FRF91
BUILD_FINGERPRINT := google/passion/passion/mahimahi:2.2/FRF91/43546:user/release-keys
PRIVATE_BUILD_DESC := "tattoo-user 2.2 FRF91 43546 release-keys"

PRODUCT_PACKAGE_OVERLAYS := device/htc/tattoo/overlay

PRODUCT_PACKAGES += Stk

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.secure=0 \
    ro.config.ringtone=BentleyDubs.ogg \
    ro.config.notification_sound=Teleport.mp3

# Pick up some sounds
include frameworks/base/data/sounds/OriginalAudio.mk

# Stuff common to all HTC phones
$(call inherit-product, device/htc/common/common_small.mk)
