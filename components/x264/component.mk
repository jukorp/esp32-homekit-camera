# ESP_IDF
x264_THIRDPARTY_ROOT = x264-snapshot-20181221-2245-stable

COMPONENT_SRCDIRS = $(x264_THIRDPARTY_ROOT)/common $(x264_THIRDPARTY_ROOT)/encoder
COMPONENT_ADD_INCLUDEDIRS = . $(x264_THIRDPARTY_ROOT)

$(eval $(call compile_exclude, $(addprefix $(x264_THIRDPARTY_ROOT)/, \
    common/opencl.o \
    common/win32thread.o \
    encoder/rdo.o \
    encoder/slicetype.o \
)))
