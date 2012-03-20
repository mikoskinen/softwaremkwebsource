function Generate($template, $output)
{
	echo "Generating site: " $template $output
	.\graze.exe -t $template -o $output
	
	if ($? -eq $False)
	{
		echo "Generating site failed. Throwing..."
		throw "Error"
	}
}