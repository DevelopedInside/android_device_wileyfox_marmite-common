#
# Copyright (C) 2017 The LineageOS Project
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

LOCAL_PATH := $(call my-dir)

ifneq ($(filter marmite,$(TARGET_DEVICE)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

# Create a link for the WCNSS config file, which ends up as a writable
# version in /data/misc/wifi
$(shell mkdir -p $(TARGET_OUT)/etc/firmware/wlan/prima; \
    ln -sf /data/misc/wifi/WCNSS_qcom_cfg.ini \
	    $(TARGET_OUT)/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini)

#Create symbolic links
$(shell mkdir -p $(TARGET_OUT)/vendor/lib; \
        rm $(TARGET_OUT)/vendor/lib/libEGL_adreno.so; \
        ln -sf /system/vendor/lib/egl/libEGL_adreno.so \
        $(TARGET_OUT)/vendor/lib/libEGL_adreno.so)

$(shell mkdir -p $(TARGET_OUT)/vendor/lib64; \
        rm $(TARGET_OUT)/vendor/lib64/libEGL_adreno.so; \
        ln -sf /system/vendor/lib64/egl/libEGL_adreno.so \
        $(TARGET_OUT)/vendor/lib64/libEGL_adreno.so)

#include device/wileyfox/marmite-common/tftp.mk

endif
