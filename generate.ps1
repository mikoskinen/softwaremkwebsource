$ErrorActionPreference = "Stop"
. .\gen.ps1

$sites = ("root\template","public"),
		 ("irc\template","public\irc"),
		 ("ampparit\template","public\ampparit"),
		 ("ipsnoop\template","public\ipsnoop"),
		 ("tekstitv\template","public\tekstitv"),
		 ("movieposters\template","public\movieposters"), 
		 ("viihde\template","public\viihde")
	
try {

	mkdir public -Force
	rm public\* -recurse -force

	foreach ($element in $sites)
	{
		Generate $element[0] $element[1]
	}

	echo "All sites generated succesfully"

	exit 0 # Success
} catch {
	echo "Generating sites failed"
	exit 1 # Failure
}
