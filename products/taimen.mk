# Copyright (C) 2017 AquariOS
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

# Include aquarios phone config
include vendor/aquarios/configs/common.mk

# Call some device specific files for taimen
$(call inherit-product, device/google/taimen/aquarios.mk)

# Include AmbientSense if it's available
#-include vendor/ambientmusic/AmbientMusic.mk

# Override AOSP build properties
PRODUCT_NAME := taimen
PRODUCT_DEVICE := taimen
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 2 XL
PRODUCT_MANUFACTURER := Google

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    PRIVATE_BUILD_DESC="taimen-user 9 PQ1A.181105.017.A1 5081125 release-keys"

BUILD_FINGERPRINT := google/taimen/taimen:9/PQ1A.181105.017.A1/5081125:user/release-keys
