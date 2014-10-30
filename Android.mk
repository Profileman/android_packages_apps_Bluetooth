LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_STATIC_JAVA_LIBRARIES := com.android.vcard com.android.emailcommon com.broadcom.fm
LOCAL_JAVA_LIBRARIES += javax.obex telephony-common mms-common 
LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := Bluetooth
LOCAL_CERTIFICATE := platform

#LOCAL_JNI_SHARED_LIBRARIES := libbluetooth_jni
#LOCAL_JAVA_LIBRARIES := javax.obex telephony-common mms-common 

LOCAL_REQUIRED_MODULES := libbluetooth_jni bluetooth.default
LOCAL_PROGUARD_ENABLED := disabled

include $(BUILD_PACKAGE)

include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := com.broadcom.fm:libs/com.broadcom.fm.jar
include $(BUILD_MULTI_PREBUILT)

include $(call all-makefiles-under,$(LOCAL_PATH))
