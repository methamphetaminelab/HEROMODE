#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

Voice := ComObjCreate("SAPI.SpVoice")

SetWorkingDir %A_ScriptDir%

;               ↓CODE HERE↓

Menu, Tray, Icon, %A_ScriptDir%\icons\enigma.ico
SoundPlay, %A_ScriptDir%\sounds\run.wav
Sleep, 1000
Suspend

iniread, mp, settings.ini, enigma, mp
iniread, bh, settings.ini, enigma, bh
iniread, blink, settings.ini, enigma, blink
iniread, bkb, settings.ini, enigma, bkb
iniread, ref, settings.ini, enigma, ref
iniread, scr1, settings.ini, enigma, script1
iniread, scr2, settings.ini, enigma, script2
iniread, scr3, settings.ini, enigma, script3
iniread, scr4, settings.ini, enigma, script4

guicontrolget, mp
guicontrolget, bh
guicontrolget, blink
guicontrolget, bkb
guicontrolget, ref
guicontrolget, scr1
guicontrolget, scr2
guicontrolget, scr3
guicontrolget, scr4

Hotkey, %scr1%, script1, on
Hotkey, %scr2%, script2, on
Hotkey, %scr3%, script3, on

Gui, Font, S15 CDefault, Verdana
Gui, Add, HotKey, x12 y93 w70 h30 vmp, %mp%
Gui, Add, HotKey, x92 y93 w70 h30 vbh, %bh%
Gui, Add, HotKey, x172 y93 w80 h30 vblink, %blink%
Gui, Add, HotKey, x262 y93 w80 h30 vbkb, %bkb%
Gui, Add, HotKey, x352 y93 w90 h30 vref, %ref%
Gui, Add, Picture, x12 y13 w70 h70 , icons\mp.ico
Gui, Add, Picture, x92 y13 w70 h70 , icons\bh.ico
Gui, Add, Picture, x172 y13 w80 h70 , icons\blink.ico
Gui, Add, Picture, x262 y13 w80 h70 , icons\bkb.ico
Gui, Add, Picture, x352 y13 w90 h70 , icons\refresher.ico
Gui, Add, Text, x172 y123 w270 h30 , IF NOT BUYED - NOTHING
Gui, Add, Button, x282 y263 w110 h30 gupdate, UPDATE
Gui, Add, Button, x252 y223 w170 h30 gsave, SAVE BUTTONS
Gui, Add, Button, x282 y303 w110 h30 greload, RELOAD
Gui, Add, Hotkey, x142 y223 w100 h30 vscr1, %scr1%
Gui, Add, Hotkey, x142 y263 w100 h30 vscr2, %scr2%
Gui, Add, Hotkey, x142 y303 w100 h30 vscr3, %scr3%
Gui, Add, Text, x12 y223 w110 h30 , SCRIPT 1:
Gui, Add, Text, x12 y263 w110 h30 , SCRIPT 2:
Gui, Add, Text, x12 y303 w110 h30 , SCRIPT 3:
Gui, Show, h350 w463, HERO MODE
Return

GuiClose:
ExitApp
Return

reload:
Reload
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
HotKey, %scr3%, toggle
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

Del::
Hotkey, %scr2%, toggle
Voice.Speak("script 3")
Return

Home::
Hotkey, %scr3%, toggle
Voice.Speak("script 4")
Return

update:
GuiControlGet, mp
GuiControlGet, blink
GuiControlGet, bh
GuiControlGet, bkb
GuiControlGet, ref
GuiControlGet, scr1
GuiControlGet, scr2
GuiControlGet, scr3
MsgBox, 64, UPDATE BUTTONS, UPDATED!
Return

save:
Gui, Submit, NoHide
iniwrite, %mp%, settings.ini, enigma, mp
iniwrite, %blink%, settings.ini, enigma, blink
iniwrite, %bh%, settings.ini, enigma, bh
iniwrite, %bkb%, settings.ini, enigma, bkb
iniwrite, %ref%, settings.ini, enigma, ref
iniwrite, %scr1%, settings.ini, enigma, script1
iniwrite, %scr2%, settings.ini, enigma, script2
iniwrite, %scr3%, settings.ini, enigma, script3
MsgBox, 0, HERO MODE, YOUR BUTTONS SAVED!
Return

script1:
Sleep, 50
SendInput, %blink%
SendInput, %mp%
Sleep, 400
SendInput, %bh%
return

script2:
SendInput, %bkb%
SendInput, %blink%
SendInput, %mp%
Sleep, 400
SendInput, %bh%
return

script3:
GuiControlGet, ref
SendInput, %bkb%
SendInput, %blink%
SendInput, %mp%
Sleep, 400
SendInput, %bh%
Sleep, 4200
SendInput, %ref%
Sleep, 200
SendInput, %bkb%
Sleep, 200
SendInput, %mp%
Sleep, 400
SendInput, %bh%
return

;               ↑CODE HERE↑