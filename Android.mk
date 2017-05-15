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

#GOODIX_IMAGES := \
#    goodixfp.b00 goodixfp.b01 goodixfp.b02 goodixfp.b03 \
#    goodixfp.b04 goodixfp.b05 goodixfp.b06 goodixfp.mdt

#GOODIX_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(GOODIX_IMAGES)))
#$(GOODIX_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
#	@echo "Goodix firmware link: $@"
#	@mkdir -p $(dir $@)
#	@rm -rf $@
#	$(hide) ln -sf /firmware/image/$(notdir $@) $@

#ALL_DEFAULT_INSTALLED_MODULES += $(GOODIX_SYMLINKS)

# Create a link for the WCNSS config file, which ends up as a writable
# version in /data/misc/wifi
$(shell mkdir -p $(TARGET_OUT)/etc/firmware/wlan/prima; \
    ln -sf /data/misc/wifi/WCNSS_qcom_cfg.ini \
	    $(TARGET_OUT)/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini)

endif

#include device/wileyfox/marmite-common/tftp.mk
