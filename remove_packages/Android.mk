LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := arcore CalendarGooglePrebuilt Chrome CarrierSetup ConnMO DCMO Drive FM2 FilesPrebuilt GoogleCamera GoogleTTS libqcomfm_jni LatinIMEGooglePrebuilt Maps MyVerizonServices MaestroPrebuilt NfcNci NgaResources obdm_stub OBDM_Permissions Photos PrebuiltBugle PrebuiltGmail qcom.fmradio RecorderPrebuilt ScribePrebuilt Showcase SprintDM SprintHM SoundAmplifierPrebuilt SafetyHubPrebuilt TipsPrebuilt USCCDM VzwOmaTrigger VZWAPNLib WallpapersBReel2020 YouTube YouTubeMusicPrebuilt WellbeingPrebuilt
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
