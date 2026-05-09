LIBS		:=  -lglfw3 -lEGL -lglapi -ldrm_nouveau -lm $(LIBS)

include $(TOPDIR)/$(BOREALIS_PATH)/library/lib/extern/switch-libpulsar/deps.mk

SOURCES		:=	$(SOURCES) \
				$(BOREALIS_PATH)/library/lib/core \
				$(BOREALIS_PATH)/library/lib/core/touch \
				$(BOREALIS_PATH)/library/lib/views \
				$(BOREALIS_PATH)/library/lib/views/widgets \
				$(BOREALIS_PATH)/library/lib/views/cells \
				$(BOREALIS_PATH)/library/lib/platforms/switch \
				$(BOREALIS_PATH)/library/lib/platforms/glfw \
				$(BOREALIS_PATH)/library/lib/extern/glad \
				$(BOREALIS_PATH)/library/lib/extern/nanovg \
				$(BOREALIS_PATH)/library/lib/extern/libretro-common/compat \
				$(BOREALIS_PATH)/library/lib/extern/libretro-common/encodings \
				$(BOREALIS_PATH)/library/lib/extern/libretro-common/features \
				$(BOREALIS_PATH)/library/lib/extern/nxfmtwrapper \
				$(BOREALIS_PATH)/library/lib/extern/yoga/yoga/event \
				$(BOREALIS_PATH)/library/lib/extern/yoga/yoga \
				$(BOREALIS_PATH)/library/lib/extern/tinyxml2/ \
				$(addprefix $(BOREALIS_PATH)/library/lib/extern/switch-libpulsar/, $(PLSR_SOURCES))

INCLUDES	:=	$(INCLUDES) \
				$(BOREALIS_PATH)/library/include \
				$(BOREALIS_PATH)/library/lib/extern/fmt/include \
				$(BOREALIS_PATH)/library/lib/extern/yoga \
				$(BOREALIS_PATH)/library/include/borealis/extern/nanovg \
				$(BOREALIS_PATH)/library/lib/extern/tweeny/include \
				$(BOREALIS_PATH)/library/include/borealis/extern \
				$(BOREALIS_PATH)/library/include/borealis/extern/tinyxml2 \
				$(addprefix $(BOREALIS_PATH)/library/lib/extern/switch-libpulsar/, $(PLSR_INCLUDES))

CXXFLAGS := $(CXXFLAGS) -DYG_ENABLE_EVENTS -fdata-sections -DBRLS_RESOURCES="\"romfs:/\""
