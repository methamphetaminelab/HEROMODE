#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

Voice := ComObjCreate("SAPI.SpVoice")

SetWorkingDir %A_ScriptDir%

;               ↓CODE HERE↓

Menu, Tray, Icon, %A_ScriptDir%\icons\huskar.ico
SoundPlay, %A_ScriptDir%\sounds\run.wav
Sleep, 1000
Suspend

iniread, armlet, settings.ini, huskar, armlet
iniread, discord, settings.ini, huskar, discord
iniread, ethereal, settings.ini, huskar, ethereal
iniread, ult, settings.ini, huskar, ultimate
iniread, scr1, settings.ini, huskar, script1
iniread, scr2, settings.ini, huskar, script2

guicontrolget, armlet
guicontrolget, discord
guicontrolget, ethereal
guicontrolget, ultimate
guicontrolget, scr1
guicontrolget, scr2

Hotkey, %scr1%, script1, on
Hotkey, %scr2%, script2, on

Gui, Font, S15 CDefault, Verdana
Gui, Add, Button, x153 y353 w110 h30 gupdate, UPDATE
Gui, Add, Button, x123 y313 w170 h30 gsave, SAVE BUTTONS
Gui, Add, Button, x153 y393 w110 h30 greload, RELOAD
Gui, Add, Text, x67 y123 w270 h30 , IF NOT BUYED - NOTHING
Gui, Add, Text, x12 y223 w110 h30 , SCRIPT 1:
Gui, Add, Text, x12 y263 w110 h30 , SCRIPT 2:
Gui, Add, Picture, x12 y13 w80 h60 , icons\armlet.ico
Gui, Add, Picture, x112 y13 w80 h60 , icons\discord.ico
Gui, Add, Picture, x212 y13 w80 h60 , icons\ethereal.ico
Gui, Add, Picture, x312 y13 w80 h60 , icons\jpg\lifebreak.jpg
Gui, Add, HotKey, x12 y83 w80 h30 varmlet, %armlet%
Gui, Add, HotKey, x112 y83 w80 h30 vethereal, %ethereal%
Gui, Add, HotKey, x212 y83 w80 h30 vdiscord, %discord%
Gui, Add, HotKey, x312 y83 w80 h30 vult, %ult%
Gui, Add, Hotkey, x142 y223 w100 h30 vscr1, %scr1%
Gui, Add, Hotkey, x142 y263 w100 h30 vscr2, %scr2%
Gui, Show, h452 w405, HERO MODE
Return

GuiClose:
ExitApp
Return

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

reload:
Reload
Return

save:
Gui, Submit, NoHide
iniwrite, %armlet%, settings.ini, huskar, armlet
iniwrite, %discord%, settings.ini, huskar, discord
iniwrite, %ethereal%, settings.ini, huskar, ethereal
iniwrite, %ult%, settings.ini, huskar, ultimate
iniwrite, %scr1%, settings.ini, huskar, script1
iniwrite, %scr2%, settings.ini, huskar, script2
MsgBox, 0, HERO MODE, YOUR BUTTONS SAVED!
Return

update:
GuiControlGet, armlet
GuiControlGet, discord
GuiControlGet, ethereal
GuiControlGet, ult
GuiControlGet, scr1
GuiControlGet, scr2
MsgBox, 64, UPDATE BUTTONS, UPDATED!
Return

script1:
SendInput, %armlet%
Sleep, 10
SendInput, %armlet%
Return

script2:
SendInput, %discord%
Sleep, 10
SendInput, %ethereal%
Sleep, 10
SendInput, %ult%
Return

;               ↑CODE HERE↑