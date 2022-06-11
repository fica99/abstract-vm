workspace "abstract-vm"
    configurations { "Release", "Debug", "Profile", "Final" }

outputdir = "%{cfg.buildcfg}"

project "avm"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++latest"
    toolset "gcc"
    targetdir ("bin/" .. outputdir)
    objdir ("tmp/" .. outputdir)
    
    pchheader "source/precomp.h"
    pchsource "source/precomp.cpp"

    includedirs
    {
        "extern/utils/logging/",
        "extern/utils/assert",
        "extern/commandlinearguments",
        "source"
    }

    defines
    {
        "avmBeginNamespace=namespace avm {",
        "avmEndNamespace=}",
        "AVM_EASYLOGGINGPP_DEFINED",
        "AUTO_INITIALIZE_EASYLOGGINGPP",
        "AVM_SNOWHOUSE_DEFINED",
        "AVM_ARGUMENTUM_DEFINED"
    }

    files
    {
        "extern/utils/logging/easyloggingpp/src/easylogging++.cc",
        "source/**.cpp"
    }

    filter "configurations:Release"
        defines
        {
            "DEBUG",
            "AVM_RELEASE"
        }
        warnings "Extra"
        symbols "On"
        optimize "On"

    filter "configurations:Debug"
        defines
        {
            "DEBUG",
            "AVM_DEBUG"
        }
        symbols "On"
        optimize "Off"

    filter "configurations:Profile"
        defines
        {
            "NDEBUG",
            "AVM_PFOFILE"
        }
        symbols "Off"
        optimize "On"

    filter "configurations:Final"
        defines
        {
            "NDEBUG",
            "AVM_FINAL"
        }
        flags
        {
            "FatalCompileWarnings",
            "FatalLinkWarnings",
            "FatalWarnings"
        }
        warnings "Extra"
        symbols "Off"
        optimize "On"
