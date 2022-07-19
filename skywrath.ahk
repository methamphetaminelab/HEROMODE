#NoEnv
#UseHook
#InstallKeybdHook
#InstallMouseHook
#SingleInstance, force
#Persistent
SendMode InputThenPlay

if not A_IsAdmin
{
   Run *RunAs "%A_ScriptFullPath%"  ; Requires v1.0.92.01+
   ExitApp
}

Voice := ComObjCreate("SAPI.SpVoice")

SetWorkingDir %A_ScriptDir%

;               ↓CODE HERE↓

Menu, Tray, Icon, %A_ScriptDir%\icons\skywrath.ico
SoundPlay, %A_ScriptDir%\sounds\run.wav
Sleep, 1000
Suspend

iniread, abolt, settings.ini, skywrath, abolt
iniread, shot, settings.ini, skywrath, shot
iniread, seal, settings.ini, skywrath, seal
iniread, flare, settings.ini, skywrath, flare
iniread, blink, settings.ini, skywrath, blink
iniread, atos, settings.ini, skywrath, atos
iniread, discord, settings.ini, skywrath, discord
iniread, ethereal, settings.ini, skywrath, ethereal
iniread, hex, settings.ini, skywrath, hex
iniread, scr1, settings.ini, skywrath, script1

GuiControlGet, abolt
GuiControlGet, shot
GuiControlGet, seal
GuiControlGet, flare
GuiControlGet, blink
GuiControlGet, atos
GuiControlGet, discord
GuiControlGet, ethereal
GuiControlGet, hex
GuiControlget, scr1

Hotkey, %scr1%, script1, on

Gui, Font, S15 CDefault, Verdana
Gui, Add, Text, x462 y133 w270 h30 , IF NOT BUYED - NOTHING
Gui, Add, Picture, x12 y13 w80 h70 , icons\abolt.ico
Gui, Add, Picture, x102 y13 w80 h70 , icons\shot.ico
Gui, Add, Picture, x192 y13 w80 h70 , icons\seal.ico
Gui, Add, Picture, x282 y13 w80 h70 , icons\flare.ico
Gui, Add, Picture, x372 y13 w80 h70 , icons\blink.ico
Gui, Add, Picture, x462 y13 w80 h70 , icons\atos.ico
Gui, Add, Picture, x642 y13 w80 h70 , icons\ethereal.ico
Gui, Add, Picture, x552 y13 w80 h70 , icons\discord.ico
Gui, Add, Picture, x732 y13 w80 h70 , icons\hex.ico
Gui, Add, HotKey, x12 y93 w80 h30 vabolt, %abolt%
Gui, Add, HotKey, x102 y93 w80 h30 vshot, %shot%
Gui, Add, HotKey, x192 y93 w80 h30 vseal, %seal%
Gui, Add, HotKey, x282 y93 w80 h30 vflare, %flare%
Gui, Add, HotKey, x372 y93 w80 h30 vblink, %blink%
Gui, Add, HotKey, x462 y93 w80 h30 vatos, %atos%
Gui, Add, HotKey, x552 y93 w80 h30 vdiscord, %discord%
Gui, Add, HotKey, x642 y93 w80 h30 vethereal, %ethereal%
Gui, Add, HotKey, x732 y93 w80 h30 vhex, %hex%
Gui, Add, Hotkey, x132 y153 w100 h30 vscr1, %scr1%
Gui, Add, Button, x361 y213 w110 h30 gupdate, UPDATE
Gui, Add, Button, x331 y173 w170 h30 gsave, SAVE BUTTONS
Gui, Add, Button, x361 y253 w110 h30 greload, RELOAD
Gui, Add, Text, x12 y153 w110 h30 , SCRIPT 1:
Gui, Show, h300 w837, HERO MODE
Return

GuiClose:
ExitApp
Return

Menu, Tray, Icon, %A_ScriptDir%\icons\skywrath.ico
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
Return

PgUp::
Reload
Return

PgDn::
ExitApp
Return

Insert::
Hotkey, %scr1%, toggle
Voice.Speak("script 2")
Return

reload:
Reload
Return

save:
Gui, Submit, NoHide
iniwrite, %abolt%, settings.ini, skywrath, abolt
iniwrite, %shot%, settings.ini, skywrath, shot
iniwrite, %seal%, settings.ini, skywrath, seal
iniwrite, %flare%, settings.ini, skywrath, flare
iniwrite, %blink%, settings.ini, skywrath, blink
iniwrite, %atos%, settings.ini, skywrath, atos
iniwrite, %discord%, settings.ini, skywrath, discord
iniwrite, %ethereal%, settings.ini, skywrath, ethereal
iniwrite, %hex%, settings.ini, skywrath, hex
iniwrite, %scr1%, settings.ini, skywrath, script1
MsgBox, 0, HERO MODE, YOUR BUTTONS SAVED!
Return

update:
GuiControlGet, abolt
GuiControlGet, shot
GuiControlGet, seal
GuiControlGet, flare
GuiControlGet, blink
GuiControlGet, atos
GuiControlGet, discord
GuiControlGet, ethereal
GuiControlGet, hex
GuiControlget, scr1
MsgBox, 64, UPDATE BUTTONS, UPDATED!
Return

script1:
SendInput, %blink%
SendInput, %discord%
Sleep, 200
SendInput, %ethereal%
Sleep, 100
SendInput, %hex%
Sleep, 200
SendInput, %atos%
Sleep, 200
SendInput, %seal%
Sleep, 300
SendInput, %flare%
Sleep, 300
SendInput, %shot%
Sleep, 200
SendInput, %abolt%
Sleep, 50
return

;               ↑CODE HERE↑