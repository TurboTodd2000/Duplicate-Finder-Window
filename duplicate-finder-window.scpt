(*
Duplicate current Finder window
Author: Barry Els
Version: 2.1
modified to work with new security setup
*)




script MyScript
	-- original code goes here…
	try
		tell application "Finder"
			set this_folder to (the target of the front window) as alias
			
			set theTargetWindow to front window
			set {x1, y1} to position of theTargetWindow
			set {bx1, by1, bx2, by2} to bounds of theTargetWindow
			
			set newWindow to make new Finder window to this_folder
			tell newWindow
				set bounds to {bx1, by1, bx2, by2}
				set position to {x1 + 20, y1 + 20}
			end tell
		end tell
	end try
	
end script

on run
	local tempScript
	copy MyScript to tempScript
	run tempScript
end run
