#Requires AutoHotkey v2.0
TraySetIcon("icons\dvi.ico")
;#NoTrayIcon	; Delete this line if you want the icon

#Home::ChangeRefreshRate(144)

#PgUp::ChangeRefreshRate(120)

#PgDn::ChangeRefreshRate(60)

#End::ChangeResolution(32, 2880, 1620, 144)

#^End::ChangeResolution(32, 3840, 2160, 60)


ChangeRefreshRate(rR)
{
	
	ChangeResolution(32, 1920, 1080, rR)
	
}


ChangeResolution(Color_Depth := 32, Screen_Width := 1920, Screen_Height := 1080, Refresh_Rate := 144)
{
    Device_Mode := Buffer(156, 0)
    NumPut("UShort", 156, Device_Mode, 36)
    DllCall("EnumDisplaySettingsA", "UInt",0, "UInt",-1, "Ptr",Device_Mode)
    NumPut("UInt", 0x5c0000, Device_Mode, 40)
    NumPut("UInt", Color_Depth, Device_Mode, 104)
    NumPut("UInt", Screen_Width, Device_Mode, 108)
    NumPut("UInt", Screen_Height, Device_Mode, 112)
    NumPut("UInt", Refresh_Rate, Device_Mode, 120)
    Return DllCall( "ChangeDisplaySettingsA", "Ptr",Device_Mode, "UInt",0 )
}