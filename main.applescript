set query to "{query}"

set Next to "n"
set Previous to "p"
set Like to "l"
set Lyrics to "lyrics"

on is_running(appName)
	tell application "System Events" to (name of processes) contains appName
end is_running

if not is_running("NeteaseMusic") then
	tell application "NeteaseMusic" to activate
	delay 3
end if

if query is equal to "" then
  tell application "System Events"
	tell process "NeteaseMusic"
		click menu item 1 of menu "Controls" of menu bar 1
	end tell
  end tell
else if query is equal to Next then
  tell application "System Events"
	tell process "NeteaseMusic"
		click menu item 2 of menu "Controls" of menu bar 1
	end tell
  end tell
else if query is equal to Previous then
  tell application "System Events"
	tell process "NeteaseMusic"
		click menu item 3 of menu "Controls" of menu bar 1
	end tell
  end tell
else if query is equal to Like then
  tell application "System Events"
	tell process "NeteaseMusic"
		click menu item "Like" of menu "Controls" of menu bar 1
	end tell
  end tell
else if query is equal to Lyrics then
  tell application "System Events"
	tell process "NeteaseMusic"
		click menu item 9 of menu "Controls" of menu bar 1
	end tell
  end tell
end if
