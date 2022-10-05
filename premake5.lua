workspace "abstract-vm"
    configurations { "release", "debug" }

project "avm"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++latest"
    toolset "clang"
    targetname ("%{prj.name}_%{cfg.buildcfg}")
    targetdir ("bin/")
    objdir ("build/%{prj.name}/%{cfg.buildcfg}")

    pchheader "src/avm/precomp.h"
    pchsource "src/avm/precomp.cpp"

    includedirs
    {
        "src"
    }

    files
    {
        "src/**.cpp"
    }

    buildoptions
    {
        "-Wall",
        "-Wextra"
    }

    filter "configurations:release"
        symbols "Off"
        optimize "Full"
        buildoptions
        {
            "-Werror"
        }
        defines
        {
            "NDEBUG"
        }

    filter "configurations:debug"
        symbols "On"
        optimize "Off"
