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

# Full language support
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# This is the top-level configuration for a Tattoo build
$(call inherit-product, device/htc/tattoo/products/tattoo_custom.mk)

# Overwrite PRODUCT_* strings
PRODUCT_NAME := full_tattoo
PRODUCT_DEVICE := tattoo
PRODUCT_BRAND := Google
PRODUCT_MODEL := Click
PRODUCT_MANUFACTURER := HTC

PLATFORM_VERSION := 2.2.2
BUILD_ID := froyo

PRODUCT_PACKAGE_OVERLAYS := device/htc/tattoo/overlay

PRODUCT_PACKAGES += Stk

PRODUCT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    keyguard.no_require_sim=true \
    ro.config.ringtone=BentleyDubs.ogg

# Pick up some sounds
include frameworks/base/data/sounds/OriginalAudio.mk

# Stuff common to all HTC phones
$(call inherit-product, device/htc/common/common_small.mk)
