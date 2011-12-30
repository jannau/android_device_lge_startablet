#!/bin/sh

# Copyright (C) 2011 The CyanogenMod Project
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

VENDOR=lge
DEVICE=startablet

mkdir -p ../../../vendor/$VENDOR/$DEVICE

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__VENDOR__/$VENDOR/g > ../../../vendor/$VENDOR/$DEVICE/$DEVICE-vendor.mk
# Copyright (C) 2011 The CyanogenMod Project
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

# This file is generated by device/__VENDOR__/__DEVICE__/setup-makefiles.sh

#DEVICE_PACKAGE_OVERLAYS += device/lge/star-common/overlay

# Live wallpaper packages
PRODUCT_PACKAGES := \\
    LiveWallpapers \\
    LiveWallpapersPicker \\
    MagicSmokeWallpapers \\
    VisualizationWallpapers \\
    librs_jni

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES := \\
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

\$(call inherit-product, vendor/__VENDOR__/__DEVICE__/__DEVICE__-vendor-blobs.mk)
EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__VENDOR__/$VENDOR/g > ../../../vendor/$VENDOR/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2011 The CyanogenMod Project
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

# This file is generated by device/__VENDOR__/__DEVICE__/setup-makefiles.sh

# Audio
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libaudio.so:obj/lib/libaudio.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libaudiopolicy.so:obj/lib/libaudiopolicy.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libaudio.so:system/lib/libaudio.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libaudiopolicy.so:system/lib/libaudiopolicy.so

# HAL
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/gralloc.tegra.so:system/lib/hw/gralloc.tegra.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/overlay.tegra.so:system/lib/hw/overlay.tegra.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/sensors.tegra.so:system/lib/hw/sensors.tegra.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/gps.startablet.so:system/lib/hw/gps.startablet.so \\

# EGL
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/egl/libEGL_tegra.so:system/lib/egl/libEGL_tegra.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/egl/libGLESv1_CM_tegra.so:system/lib/egl/libGLESv1_CM_tegra.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/egl/libGLESv2_tegra.so:system/lib/egl/libGLESv2_tegra.so

# Wifi
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/wifi/nvram.txt:system/etc/wifi/nvram.txt \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/wifi/rtecdc_apsta.bin:system/etc/wifi/rtecdc_apsta.bin \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/wifi/rtecdc-mfgtest.bin:system/etc/wifi/rtecdc-mfgtest.bin \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/wifi/rtecdc.bin:system/etc/wifi/rtecdc.bin

# OMX
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/drm/libdrmwvmplugin.so:system/lib/drm/libdrmwvmplugin.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libdrm1.so:system/lib/libdrm1.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libdrm1_jni.so:system/lib/libdrm1_jni.so \\
 vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvodm_dtvtuner.so:system/lib/libnvodm_dtvtuner.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libstagefrighthw.so:system/lib/libstagefrighthw.so

PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/bluetooth/BCM4329B1_002.002.023.0875.0883.hcd:system/etc/bluetooth/BCM4329B1_002.002.023.0875.0883.hcd \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/nvrm_daemon:system/bin/nvrm_daemon \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/nvddk_audiofx_core.axf:system/etc/firmware/nvddk_audiofx_core.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/nvrm_avp.bin:system/etc/firmware/nvrm_avp.bin \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/nvmm_wavdec.axf:system/etc/firmware/nvmm_wavdec.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/nvmm_sorensondec.axf:system/etc/firmware/nvmm_sorensondec.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/nvmm_service.axf:system/etc/firmware/nvmm_service.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/nvmm_reference.axf:system/etc/firmware/nvmm_reference.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/nvmm_mpeg4dec.axf:system/etc/firmware/nvmm_mpeg4dec.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/nvmm_mp3dec.axf:system/etc/firmware/nvmm_mp3dec.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/nvmm_mp2dec.axf:system/etc/firmware/nvmm_mp2dec.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/nvmm_manager.axf:system/etc/firmware/nvmm_manager.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/nvmm_jpegenc.axf:system/etc/firmware/nvmm_jpegenc.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/nvmm_jpegdec.axf:system/etc/firmware/nvmm_jpegdec.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/nvmm_h264dec.axf:system/etc/firmware/nvmm_h264dec.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/nvmm_audiomixer.axf:system/etc/firmware/nvmm_audiomixer.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/nvmm_adtsdec.axf:system/etc/firmware/nvmm_adtsdec.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/nvmm_aacdec.axf:system/etc/firmware/nvmm_aacdec.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/nvddk_audiofx_transport.axf:system/etc/firmware/nvddk_audiofx_transport.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/nvddk_audiofx_core.axf:system/etc/firmware/nvddk_audiofx_core.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/drmserver:system/bin/drmserver \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libril.so:system/lib/libril.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvos.so:system/lib/libnvos.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvrm.so:system/lib/libnvrm.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/lge-ril.so:system/lib/lge-ril.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvapputil.so:system/lib/libnvapputil.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvmm_camera.so:system/lib/libnvmm_camera.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libcamera.so:obj/lib/libcamera.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libcamera.so:system/lib/libcamera.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvddk_2d_v2.so:system/lib/libnvddk_2d_v2.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvodm_imager.so:system/lib/libnvodm_imager.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvrm_graphics.so:system/lib/libnvrm_graphics.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvddk_2d.so:system/lib/libnvddk_2d.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvsm.so:system/lib/libnvsm.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvmm_utils.so:system/lib/libnvmm_utils.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvmm.so:system/lib/libnvmm.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvdispmgr_d.so:system/lib/libnvdispmgr_d.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvdispmgr_d.so:obj/lib/libnvdispmgr_d.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvddk_audiofx.so:system/lib/libnvddk_audiofx.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvodm_query.so:system/lib/libnvodm_query.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvodm_dtvtuner.so:system/lib/libnvodm_dtvtuner.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvrm_channel.so:system/lib/libnvrm_channel.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvdispatch_helper.so:system/lib/libnvdispatch_helper.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvomxilclient.so:system/lib/libnvomxilclient.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libcgdrv.so:system/lib/libcgdrv.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvmm_audio.so:system/lib/libnvmm_audio.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvmm_contentpipe.so:system/lib/libnvmm_contentpipe.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvmm_image.so:system/lib/libnvmm_image.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvmm_manager.so:system/lib/libnvmm_manager.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvmm_misc.so:system/lib/libnvmm_misc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvmm_parser.so:system/lib/libnvmm_parser.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvmm_tracklist.so:system/lib/libnvmm_tracklist.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvmm_video.so:system/lib/libnvmm_video.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvmm_videorenderer.so:system/lib/libnvmm_videorenderer.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvmm_vp6_video.so:system/lib/libnvmm_vp6_video.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvmm_writer.so:system/lib/libnvmm_writer.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvmm_service.so:system/lib/libnvmm_service.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvomx.so:system/lib/libnvomx.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnvwsi.so:system/lib/libnvwsi.so \\

# Wi-Fi Calling
PRODUCT_COPY_FILES += \\
    #vendor/__VENDOR__/__DEVICE__/proprietary/app/Kineto.apk:system/app/Kineto.apk \\
    #vendor/__VENDOR__/__DEVICE__/proprietary/lib/libganril.so:system/lib/libganril.so \\
    #vendor/__VENDOR__/__DEVICE__/proprietary/lib/libkineto.so:system/lib/libkineto.so \\
    #vendor/__VENDOR__/__DEVICE__/proprietary/lib/librilswitch.so:system/lib/librilswitch.so

EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__VENDOR__/$VENDOR/g > ../../../vendor/$VENDOR/$DEVICE/BoardConfigVendor.mk
# Copyright (C) 2011 The CyanogenMod Project
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

# This file is generated by device/__VENDOR__/__DEVICE__/setup-makefiles.sh

USE_CAMERA_STUB := false
EOF

