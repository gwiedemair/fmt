project "fmt"
	location ""
	language "C++"
	cppdialect "C++latest"

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
