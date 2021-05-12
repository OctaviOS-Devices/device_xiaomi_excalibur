#
# Copyright (C) 2021 The Android Open-Source Project
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

# Inherit from sm7125-common
$(call inherit-product, device/xiaomi/sm7125-common/common.mk)

# Inherit proprietary targets
$(call inherit-product-if-exists, vendor/xiaomi/excalibur/excalibur-vendor.mk)

# Hardware
PRODUCT_BOARD_PLATFORM := atoll
PRODUCT_USES_QCOM_HARDWARE := true

# HALS
SRC_AUDIO_HAL_DIR := hardware/qcom-caf/sm8150/audio
SRC_DISPLAY_HAL_DIR := hardware/qcom-caf/sm8150/display
SRC_MEDIA_HAL_DIR := hardware/qcom-caf/sm8150/media

# Doze
PRODUCT_PACKAGES += \
    XiaomiDoze

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    hardware/qcom-caf/sm8150 \
    $(LOCAL_PATH)

# Init scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.device.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.device.rc

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/thermal/thermal-engine-map.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-map.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-map-excalibur.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-map-excalibur.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-normal-excalibur.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-normal-excalibur.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-camera-excalibur.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-camera-excalibur.conf
