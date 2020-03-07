#!/usr/bin/osascript
tell application "System Events"
	click menu bar item 9 of menu bar 1 of application process "SystemUIServer"
	click menu item "Brett’s iPad" of menu 1 of menu bar item 9 of menu bar 1 of application process "SystemUIServer"
end tell