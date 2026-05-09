mkfile_path	:=	$(abspath $(lastword $(MAKEFILE_LIST)))

BOREALIS_PATH :=	$(EXTERN_PATH)/borealis

ifeq ($(wildcard $(TOPDIR)/$(BOREALIS_PATH)/library/borealis.mk),)
include $(TOPDIR)/$(EXTERN_PATH)/borealis_compat.mk
else
include $(TOPDIR)/$(BOREALIS_PATH)/library/borealis.mk
endif

SOURCES		:=	$(SOURCES) \
				$(EXTERN_PATH)/moonlight-common-c/src \
				$(EXTERN_PATH)/moonlight-common-c/enet \
				$(EXTERN_PATH)/moonlight-common-c/reedsolomon 

INCLUDES	:=	$(INCLUDES) \
				$(EXTERN_PATH)/moonlight-common-c/src \
				$(EXTERN_PATH)/moonlight-common-c/enet/include \
				$(EXTERN_PATH)/moonlight-common-c/reedsolomon \
                $(EXTERN_PATH)/zeroconf \
                $(EXTERN_PATH)/CImg

DEFINES := $(DEFINES) -DUSE_MBEDTLS
