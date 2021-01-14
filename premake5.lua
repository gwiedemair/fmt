project "fmt"
	location ""
	language "C++"
	cppdialect "C++latest"
	staticruntime "on"


	defines {
	}

	files {
		"include/**.h",
		"src/**.cc",
	}

	includedirs {
		"include",
	}

	libdirs {
	}

	links {
	}


	filter "platforms:Static"
		kind "StaticLib"
	filter "platforms:Shared"
		kind "SharedLib"
		defines "FMT_EXPORT"
		postbuildcommands {
			-- ("{COPY} \"%{wks.location}/bin/" .. outputdir .. "/FoWSI/*.dll\" %{cfg.targetdir}")
		}


	filter "system:windows"
		systemversion "latest"
		defines {
		}

	filter "configurations:Debug"
		defines {
		}
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		defines {
		}
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		defines {
		}
		runtime "Release"
		optimize "on"
