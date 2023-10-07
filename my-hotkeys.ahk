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

; Open CMD, linux style
^!T::Run "cmd"
;^!T::Run "powershell"

; Screenshot
#Enter::PrintScreen