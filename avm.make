# GNU Make project makefile autogenerated by Premake

ifndef config
  config=release
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild prelink

ifeq ($(config),release)
  RESCOMP = windres
  TARGETDIR = bin
  TARGET = $(TARGETDIR)/avm_macosx_Release
  OBJDIR = tmp/avm/Release
  PCH = source/precomp.h
  GCH = $(OBJDIR)/$(notdir $(PCH)).gch
  DEFINES += -DavmBeginNamespace=namespace\ avm\ { -DavmEndNamespace=} -DAVM_SPDLOG_DEFINED -DAVM_ARGUMENTUM_DEFINED -DDEBUG -DAVM_RELEASE
  INCLUDES += -Iextern/utils/logs/spdlog/include -Iextern/commandlinearguments/argumentum/include -Isource
  FORCE_INCLUDE += -include $(OBJDIR)/$(notdir $(PCH))
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -O2 -g -Wall -Wextra
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -O2 -g -std=c++20 -Wall -Wextra
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS +=
  LDDEPS +=
  ALL_LDFLAGS += $(LDFLAGS)
  LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),debug)
  RESCOMP = windres
  TARGETDIR = bin
  TARGET = $(TARGETDIR)/avm_macosx_Debug
  OBJDIR = tmp/avm/Debug
  PCH = source/precomp.h
  GCH = $(OBJDIR)/$(notdir $(PCH)).gch
  DEFINES += -DavmBeginNamespace=namespace\ avm\ { -DavmEndNamespace=} -DAVM_SPDLOG_DEFINED -DAVM_ARGUMENTUM_DEFINED -DDEBUG -DAVM_DEBUG
  INCLUDES += -Iextern/utils/logs/spdlog/include -Iextern/commandlinearguments/argumentum/include -Isource
  FORCE_INCLUDE += -include $(OBJDIR)/$(notdir $(PCH))
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -Og -g -Wall -Wextra
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -Og -g -std=c++20 -Wall -Wextra
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS +=
  LDDEPS +=
  ALL_LDFLAGS += $(LDFLAGS)
  LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),profile)
  RESCOMP = windres
  TARGETDIR = bin
  TARGET = $(TARGETDIR)/avm_macosx_Profile
  OBJDIR = tmp/avm/Profile
  PCH = source/precomp.h
  GCH = $(OBJDIR)/$(notdir $(PCH)).gch
  DEFINES += -DavmBeginNamespace=namespace\ avm\ { -DavmEndNamespace=} -DAVM_SPDLOG_DEFINED -DAVM_ARGUMENTUM_DEFINED -DDEBUG -DAVM_PFOFILE
  INCLUDES += -Iextern/utils/logs/spdlog/include -Iextern/commandlinearguments/argumentum/include -Isource
  FORCE_INCLUDE += -include $(OBJDIR)/$(notdir $(PCH))
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -O3 -g -Wall -Wextra
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -O3 -g -std=c++20 -Wall -Wextra
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS +=
  LDDEPS +=
  ALL_LDFLAGS += $(LDFLAGS)
  LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),final)
  RESCOMP = windres
  TARGETDIR = bin
  TARGET = $(TARGETDIR)/avm_macosx_Final
  OBJDIR = tmp/avm/Final
  PCH = source/precomp.h
  GCH = $(OBJDIR)/$(notdir $(PCH)).gch
  DEFINES += -DavmBeginNamespace=namespace\ avm\ { -DavmEndNamespace=} -DAVM_SPDLOG_DEFINED -DAVM_ARGUMENTUM_DEFINED -DNDEBUG -DAVM_FINAL
  INCLUDES += -Iextern/utils/logs/spdlog/include -Iextern/commandlinearguments/argumentum/include -Isource
  FORCE_INCLUDE += -include $(OBJDIR)/$(notdir $(PCH))
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -O3 -Wall -Wextra -Werror
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -O3 -std=c++20 -Wall -Wextra -Werror
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS +=
  LDDEPS +=
  ALL_LDFLAGS += $(LDFLAGS) -Wl,-x
  LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: prebuild prelink $(TARGET)
	@:

endif

OBJECTS := \
	$(OBJDIR)/commandlinearguments.o \
	$(OBJDIR)/main.o \
	$(OBJDIR)/precomp.o \
	$(OBJDIR)/logs.o \

RESOURCES := \

CUSTOMFILES := \

SHELLTYPE := posix
ifeq (.exe,$(findstring .exe,$(ComSpec)))
	SHELLTYPE := msdos
endif

$(TARGET): $(GCH) ${CUSTOMFILES} $(OBJECTS) $(LDDEPS) $(RESOURCES) | $(TARGETDIR)
	@echo Linking avm
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(CUSTOMFILES): | $(OBJDIR)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning avm
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(OBJECTS): $(GCH) $(PCH) | $(OBJDIR)
$(GCH): $(PCH) | $(OBJDIR)
	@echo $(notdir $<)
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
else
$(OBJECTS): | $(OBJDIR)
endif

$(OBJDIR)/commandlinearguments.o: source/avm/commandlinearguments/commandlinearguments.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/main.o: source/avm/main/main.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/precomp.o: source/precomp.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/logs.o: source/utils/logs/logs.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
endif