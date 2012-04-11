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
		if ($? -eq $False)
		{
			echo "Generating site failed. Throwing..."
			throw "Error"
		}		
	}

	echo "All sites generated succesfully"

	copy sitemap.xml public
	copy root\template\download.html public
	copy root\template\viihde_esittely.docx public

	.\graze.exe -t .\root\template -tf .\root\template\404.cshtml -of .\public\404.html
	if ($? -eq $False)
	{
		echo "Generating site failed. Throwing..."
		throw "Error"
	}
	
	.\graze.exe -t .\root\template -tf .\root\template\index_spotlight.cshtml -of .\public\index_spotlight.html
	if ($? -eq $False)
	{
		echo "Generating site failed. Throwing..."
		throw "Error"
	}

	copy irc\template\screenshots.zip public\irc
	copy irc\template\*.pdf public\irc
	
	exit 0 # Success
} catch {
	echo "Generating sites failed"
	echo "##teamcity[buildStatus status='FAILURE' text='{build.status.text} in compilation']"
	exit 1 # Failure
}
