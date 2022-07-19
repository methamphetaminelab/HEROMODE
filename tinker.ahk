#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent



Voice := ComObjCreate("SAPI.SpVoice")

SetWorkingDir %A_ScriptDir%

;               ↓CODE HERE↓

Menu, Tray, Icon, %A_ScriptDir%\icons\tinker.ico
SoundPlay, %A_ScriptDir%\sounds\run.wav
Sleep, 1000
Suspend

iniread, blink, settings.ini, tinker, blink
iniread, rockets, settings.ini, tinker, rockets
iniread, rearm, settings.ini, tinker, rearm
iniread, soulring, settings.ini, tinker, soulring
iniread, shiva, settings.ini, tinker, shiva
iniread, hex, settings.ini, tinker, hex
iniread, dagon, settings.ini, tinker, dagon
iniread, bottle, settings.ini, tinker, bottle
iniread, scr1, settings.ini, tinker, script1
iniread, scr2, settings.ini, tinker, script2
iniread, scr3, settings.ini, tinker, script3
iniread, scr4, settings.ini, tinker, script4

guicontrolget, rockets
guicontrolget, rearm
guicontrolget, soulring
guicontrolget, bottle
guicontrolget, shiva
guicontrolget, blink
guicontrolget, hex
guicontrolget, dagon
guicontrolget, scr1
guicontrolget, scr2
guicontrolget, scr3
guicontrolget, scr4

Hotkey, %scr1%, script1, on
Hotkey, %scr2%, script2, on
Hotkey, %scr3%, script3, on
Hotkey, %scr4%, script4, on

Gui, Font, S15 CDefault, Verdana
Gui, Add, HotKey, x12 y93 w80 h30 vrockets, %rockets%
Gui, Add, HotKey, x102 y93 w80 h30 vrearm, %rearm%
Gui, Add, HotKey, x192 y93 w80 h30 vsoulring, %soulring%
Gui, Add, HotKey, x282 y93 w80 h30 vbottle, %bottle%
Gui, Add, HotKey, x372 y93 w80 h30 vblink, %blink%
Gui, Add, HotKey, x462 y93 w80 h30 vshiva, %shiva%
Gui, Add, HotKey, x552 y93 w80 h30 vhex, %hex%
Gui, Add, HotKey, x642 y93 w80 h30 vdagon, %dagon%
Gui, Add, Text, x322 y133 w270 h30 , IF NOT BUYED - NOTHING
Gui, Add, Picture, x12 y13 w80 h70 , icons\rockets.ico
Gui, Add, Picture, x102 y13 w80 h70 , icons\rearm.ico
Gui, Add, Picture, x372 y13 w80 h70 , icons\blink.ico
Gui, Add, Picture, x192 y13 w80 h70 , icons\soulring.ico
Gui, Add, Picture, x282 y13 w80 h70 , icons\bottle.ico
Gui, Add, Picture, x462 y13 w80 h70 , icons\shiva.ico
Gui, Add, Picture, x552 y13 w80 h70 , icons\hex.ico
Gui, Add, Picture, x642 y13 w80 h70 , icons\dagon.ico
Gui, Add, Button, x373 y303 w110 h30 gupdate, UPDATE
Gui, Add, Button, x343 y263 w170 h30 gsave, SAVE BUTTONS
Gui, Add, Button, x373 y343 w110 h30 greload, RELOAD
Gui, Add, Hotkey, x142 y223 w100 h30 vscr1, %scr1%
Gui, Add, Hotkey, x142 y263 w100 h30 vscr2, %scr2%
Gui, Add, Hotkey, x142 y303 w100 h30 vscr3, %scr3%
Gui, Add, Hotkey, x142 y343 w100 h30 vscr4, %scr4%
Gui, Add, Text, x12 y223 w110 h30 , SCRIPT 1:
Gui, Add, Text, x12 y263 w110 h30 , SCRIPT 2:
Gui, Add, Text, x12 y303 w110 h30 , SCRIPT 3:
Gui, Add, Text, x12 y343 w110 h30 , SCRIPT 4:
Gui, Show, h412 w743, HERO MODE
Return

GuiClose:
ExitApp
Return

Menu, Tray, Icon, %A_ScriptDir%\icons\tinker.ico
SoundPlay, %A_ScriptDir%\sounds\run.wav
Sleep, 1000
Suspend

Pause::
    Suspend, toggle
    If A_IsSuspended
    {
        SoundPlay, %A_ScriptDir%\sounds\off.wav
    }
    Else
    {
        SoundPlay, %A_ScriptDir%\sounds\on.wav
    }
Hotkey, %scr1%, toggle
Hotkey, %scr2%, toggle
Hotkey, %scr3%, toggle
Hotkey, %scr4%, toggle
Return

PgUp::
Reload
Return

PgDn::
ExitApp
Return

Insert::
Hotkey, %scr1%, toggle
Voice.Speak("script 1")
Return

Del::
Hotkey, %scr2%, toggle
Voice.Speak("script 2")
Return

Home::
Hotkey, %scr3%, toggle
Voice.Speak("script 3")
Return

End::
Hotkey, %scr4%, toggle
Voice.Speak("script 4")
Return

reload:
Reload
Return

save:
Gui, Submit, NoHide
iniwrite, %blink%, settings.ini, tinker, blink
iniwrite, %rockets%, settings.ini, tinker, rockets
iniwrite, %rearm%, settings.ini, tinker, rearm
iniwrite, %soulring%, settings.ini, tinker, soulring
iniwrite, %shiva%, settings.ini, tinker, shiva
iniwrite, %hex%, settings.ini, tinker, hex
iniwrite, %dagon%, settings.ini, tinker, dagon
iniwrite, %bottle%, settings.ini, tinker, bottle
iniwrite, %scr1%, settings.ini, tinker, script1
iniwrite, %scr2%, settings.ini, tinker, script2
iniwrite, %scr3%, settings.ini, tinker, script3
iniwrite, %scr4%, settings.ini, tinker, script4
MsgBox, 0, HERO MODE, YOUR BUTTONS SAVED!
Return

update:
GuiControlGet, blink
GuiControlGet, rockets
GuiControlGet, rearm
GuiControlGet, soulring
GuiControlGet, shiva
GuiControlGet, hex
GuiControlGet, dagon
GuiControlGet, bottle
GuiControlGet, scr1
GuiControlGet, scr2
MsgBox, 64, UPDATE BUTTONS, UPDATED!
Return

script1:
SendInput, %blink%
Sleep, 50
SendInput, %soulring%
Sleep, 100
SendInput, %rockets%
Sleep, 50
SendInput, %rearm%
Sleep, 50
return

script2:
SendInput, %blink%
Sleep, 50
SendInput, %shiva%
Sleep, 100
SendInput, %rockets%
Sleep, 50
SendInput, %soulring%
Sleep, 50
SendInput, %rearm%
Sleep, 50
return

script3:
SendInput, %blink%
Sleep, 50
SendInput, %shiva%
Sleep, 50
SendInput, %rockets%
Sleep, 100
SendInput, %hex%
Sleep, 50
SendInput, %rearm%
Sleep, 50
return

script4:
SendInput, %blink%
Sleep, 50
SendInput, %shiva%
Sleep, 50
SendInput, %hex%
Sleep, 50
SendInput, %dagon%
Sleep, 50
SendInput, %rearm%
Sleep, 50
return

;               ↑CODE HERE↑