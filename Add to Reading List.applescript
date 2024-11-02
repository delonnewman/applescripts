set theResponse to display dialog "Please enter the URL of the website" default answer "" with icon note buttons {"Cancel", "Continue"} default button "Continue"
set theUrl to {text returned of theResponse}
if the length of theUrl is not equal to 0 then
	tell application "Safari"
		add reading list item theUrl
	end tell
end if
