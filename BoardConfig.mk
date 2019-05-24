# Copyright (C) 2016 The CyanogenMod Project
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

# inherit from common millet-common
-include device/samsung/millet-common/BoardConfigCommon.mk

# Recovery
TARGET_OTA_ASSERT_DEVICE := milletlte,milletltexx

DEVICE_PATH := device/samsung/milletlte

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8226-sec_milletlte_defconfig

# Partitions
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1866465280

# Radio
PRODUCT_PACKAGES += \
    libril_shim

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# inherit from the proprietary version
-include vendor/samsung/milletlte/BoardConfigVendor.mk
