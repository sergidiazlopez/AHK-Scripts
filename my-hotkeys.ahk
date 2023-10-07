#Requires AutoHotkey v2.0
TraySetIcon("icons\remapping.ico")
#NoTrayIcon	; Delete this line if you want the icon

; Cycle virtual desktops with CTRL + WIN + WHEEL
#^WheelUp::#^Left
#^WheelDown::#^Right

; Volume control with WIN + WHEEL
#WheelUp::Volume_Up
#WheelDown::Volume_Down
#MButton::Volume_Mute

; Microphone / Line In
#M::SoundSetMute -1, 1, "Samson Meteor"
#XButton2::SoundSetMute -1, 1, "Samson Meteor"
#N::SoundSetMute -1, 1, "Line In"
#XButton1::SoundSetMute -1, 1, "Line In"

; Open CMD, linux style
^!T::Run "cmd"
;^!T::Run "powershell"

; Screenshot
#Enter::PrintScreen

; Youtube Videos
#`::Run "yt-dlp " A_Clipboard " -o " a_desktop "\%(title)s.%(ext)s" 
#^`::Run "yt-dlp " A_Clipboard " -f bestaudio --extract-audio -o " a_desktop "\%(title)s.%(ext)s" 
#+`::Run "mpv " A_Clipboard