#SingleInstance, Force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Gui, leaveMessage: Add, Text, section xm w200, Simple leave messsage on MicroSIP
Gui, leaveMessage: Add, button, section xm w120 x120 y20 gCalibrate, Calibrate the numbers
Gui, leaveMessage: Add, button, section xm w90 y20 gLeaveMessage, Leave Message
Gui leaveMessage:+AlwaysOnTop




Gui, leaveMessage: show, w280 h70 y100,Leave message
return

Calibrate:
Gui, Calibrate: Add, text, section xm w250 y20, When calilbraing done, please do not move the MicroSIP window, if so you will have to calibrate again

Gui, Calibrate: Add, text, section xm w250, Star button on MicroSIP Position: 
Gui, Calibrate: Add, edit, section xm w50 y60 x170, 

Gui, Calibrate: Add, text, section xm w250, Hash button on MicroSIP Position: 

Gui, Calibrate: Add, text, section xm w250, Number 9 button on MicroSIP Position: 

Gui, Calibrate: Add, text, section xm w250, End button on MicroSIP Position: 

Gui, Calibrate: Add, button, section xm w90, Save






Gui, Calibrate: show, w280 h170 y100,Calibrate
        
		
LeaveMessage:
LeavingMessage()
return

LeavingMessage(){
	CoordMode,Mouse, Screen 
	
	click, 2000,454
	sleep 200
	send {NumpadMult}
	send {Shift down}+{3}
	send {Shift up}
	send {numpad9}
	
	BlockInput On
	click, 2436,907 
	BlockInput Off
	
	return
}		
