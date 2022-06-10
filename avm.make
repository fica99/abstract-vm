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
  TARGETDIR = bin/Release
  TARGET = $(TARGETDIR)/avm
  OBJDIR = tmp/Release
  PCH = source/precomp.h
  GCH = $(OBJDIR)/$(notdir $(PCH)).gch
  DEFINES += -DAVM_EASYLOGGINGPP_DEFINED -DAVM_SNOWHOUSE_DEFINED -DAVM_ARGUMENTUM_DEFINED -DDEBUG -DAVM_RELEASE
  INCLUDES += -Iextern/utils/logging -Iextern/utils/assert -Iextern/commandlinearguments -Isource
  FORCE_INCLUDE += -include $(OBJDIR)/$(notdir $(PCH))
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -O2 -g -Wall -Wextra
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -O2 -g -Wall -Wextra -std=c++20
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
  TARGETDIR = bin/Debug
  TARGET = $(TARGETDIR)/avm
  OBJDIR = tmp/Debug
  PCH = source/precomp.h
  GCH = $(OBJDIR)/$(notdir $(PCH)).gch
  DEFINES += -DAVM_EASYLOGGINGPP_DEFINED -DAVM_SNOWHOUSE_DEFINED -DAVM_ARGUMENTUM_DEFINED -DDEBUG -DAVM_DEBUG
  INCLUDES += -Iextern/utils/logging -Iextern/utils/assert -Iextern/commandlinearguments -Isource
  FORCE_INCLUDE += -include $(OBJDIR)/$(notdir $(PCH))
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -O0 -g
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -O0 -g -std=c++20
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
  TARGETDIR = bin/Profile
  TARGET = $(TARGETDIR)/avm
  OBJDIR = tmp/Profile
  PCH = source/precomp.h
  GCH = $(OBJDIR)/$(notdir $(PCH)).gch
  DEFINES += -DAVM_EASYLOGGINGPP_DEFINED -DAVM_SNOWHOUSE_DEFINED -DAVM_ARGUMENTUM_DEFINED -DNDEBUG -DAVM_PFOFILE
  INCLUDES += -Iextern/utils/logging -Iextern/utils/assert -Iextern/commandlinearguments -Isource
  FORCE_INCLUDE += -include $(OBJDIR)/$(notdir $(PCH))
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -O2
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -O2 -std=c++20
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

ifeq ($(config),final)
  RESCOMP = windres
  TARGETDIR = bin/Final
  TARGET = $(TARGETDIR)/avm
  OBJDIR = tmp/Final
  PCH = source/precomp.h
  GCH = $(OBJDIR)/$(notdir $(PCH)).gch
  DEFINES += -DAVM_EASYLOGGINGPP_DEFINED -DAVM_SNOWHOUSE_DEFINED -DAVM_ARGUMENTUM_DEFINED -DNDEBUG -DAVM_FINAL
  INCLUDES += -Iextern/utils/logging -Iextern/utils/assert -Iextern/commandlinearguments -Isource
  FORCE_INCLUDE += -include $(OBJDIR)/$(notdir $(PCH))
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -Werror -O2 -Wall -Wextra
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -Werror -O2 -Wall -Wextra -std=c++20
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
	$(OBJDIR)/easylogging++.o \
	$(OBJDIR)/main.o \
	$(OBJDIR)/precomp.o \

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

$(OBJDIR)/easylogging++.o: extern/utils/logging/easyloggingpp/src/easylogging++.cc
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/main.o: source/main/main.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/precomp.o: source/precomp.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
endif