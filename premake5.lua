workspace "abstract-vm"
    configurations { "release", "debug" }
    language "C++"
    cppdialect "C++latest"
    toolset "clang"

project "utils"
    kind "SharedLib"
    targetname ("%{prj.name}_%{cfg.buildcfg}")
    targetdir ("bin/")
    objdir ("build/%{prj.name}/%{cfg.buildcfg}")

    includedirs
    {
        "src/utils"
    }

    files
    {
        "src/utils/**.cpp"
    }

    buildoptions
    {
        "-Wall",
        "-Wextra",
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



project "avm"
    kind "ConsoleApp"
    targetname ("%{prj.name}_%{cfg.buildcfg}")
    targetdir ("bin/")
    objdir ("build/%{prj.name}/%{cfg.buildcfg}")

    pchheader "src/avm/precomp.h"
    pchsource "src/avm/precomp.cpp"

    links { "utils" }

    includedirs
    {
        "src",
        "src/utils"
    }

    files
    {
        "src/avm/**.cpp"
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
