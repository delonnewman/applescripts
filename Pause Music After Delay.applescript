set theResponse to display dialog "How many minutes would you like the music to play?" default answer "" with icon note buttons {"Cancel", "Continue"} default button "Continue"
set minutesText to {text returned of theResponse}
set minutes to minutesText as number
tell application "Music"
	delay minutes * 30 -- after 30 minutes
	if it is running then
		pause
	end if
end tell
