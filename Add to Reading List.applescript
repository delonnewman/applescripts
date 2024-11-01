set theResponse to display dialog "Please enter the URL of the website" default answer "" with icon note buttons {"Cancel", "Continue"} default button "Continue"
if {text returned of theResponse} is equal to "" then
else
	set theUrl to {text returned of theResponse}
	tell application "Safari"
		add reading list item theUrl
	end tell
end if
