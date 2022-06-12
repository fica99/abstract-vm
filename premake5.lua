workspace "abstract-vm"
    configurations { "Release", "Debug", "Profile", "Final" }

project "avm"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++latest"
    toolset "gcc"
    targetname ("%{prj.name}_%{cfg.system}_%{cfg.buildcfg}")
    targetdir ("bin/")
    objdir ("tmp/%{prj.name}/%{cfg.buildcfg}")

    pchheader "source/precomp.h"
    pchsource "source/precomp.cpp"

    includedirs
    {
        "extern/utils/logs/spdlog/include",
        "extern/commandlinearguments/argumentum/include",
        "source"
    }

    defines
    {
        "avmBeginNamespace=namespace avm {",
        "avmEndNamespace=}",
        "AVM_SPDLOG_DEFINED",
        "AVM_ARGUMENTUM_DEFINED"
    }

    files
    {
        "source/**.cpp"
    }

    buildoptions
    {
        "-Wall",
        "-Wextra"
    }

    filter "configurations:Release"
        defines
        {
            "DEBUG",
            "AVM_RELEASE"
        }
        symbols "On"
        optimize "On"

    filter "configurations:Debug"
        defines
        {
            "DEBUG",
            "AVM_DEBUG"
        }
        symbols "On"
        optimize "Debug"

    filter "configurations:Profile"
        defines
        {
            "DEBUG",
            "AVM_PFOFILE"
        }
        symbols "On"
        optimize "Speed"

    filter "configurations:Final"
        defines
        {
            "NDEBUG",
            "AVM_FINAL"
        }

        buildoptions
        {
            "-Werror"
        }
        symbols "Off"
        optimize "Full"
