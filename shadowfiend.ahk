#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

Voice := ComObjCreate("SAPI.SpVoice")

SetWorkingDir %A_ScriptDir%

;               ↓CODE HERE↓

Menu, Tray, Icon, %A_ScriptDir%\icons\shadowfiend.ico
SoundPlay, %A_ScriptDir%\sounds\run.wav
Sleep, 1000
Suspend

iniread, raze1, settings.ini, shadowfiend, raze1
iniread, raze2, settings.ini, shadowfiend, raze2
iniread, raze3, settings.ini, shadowfiend, raze3
iniread, req, settings.ini, shadowfiend, requiem
iniread, dmove, settings.ini, shadowfiend, dmove
iniread, blink, settings.ini, shadowfiend, blink
iniread, eul, settings.ini, shadowfiend, eul
iniread, scr1, settings.ini, shadowfiend, script1
iniread, scr2, settings.ini, shadowfiend, script2
iniread, scr3, settings.ini, shadowfiend, script3
iniread, scr4, settings.ini, shadowfiend, script4
iniread, csb, settings.ini, customselectedbutton, customselectedbutton
iniread, cb, settings.ini, custombutton, custombutton
iniread, scrr1, settings.ini, shadowfiend, scriptb1
iniread, scrr2, settings.ini, shadowfiend, scriptb2
iniread, scrr3, settings.ini, shadowfiend, scriptb3
iniread, scrr4, settings.ini, shadowfiend, scriptb4
iniread, scrr5, settings.ini, shadowfiend, scriptb5

guicontrolget, customselectedbutton
guicontrolget, custombutton
guicontrolget, raze1
guicontrolget, raze2
guicontrolget, raze3
guicontrolget, req
guicontrolget, dmove
guicontrolget, blink
guicontrolget, eul
guicontrolget, scr1
guicontrolget, scr2
guicontrolget, scr3
guicontrolget, scr4
guicontrolget, scrr1
guicontrolget, scrr2
guicontrolget, scrr3
guicontrolget, scrr4
guicontrolget, scrr5

Hotkey, %scr1%, script1, on
Hotkey, %scr2%, script2, on
Hotkey, %scr3%, script3, on
Hotkey, %scr4%, script4, on

Gui, Font, S15 CDefault, Verdana
Gui, Add, Picture, x12 y53 w120 h120 , icons\jpg\raze1.jpg
Gui, Add, Picture, x152 y53 w120 h120 , icons\jpg\raze2.jpg
Gui, Add, Picture, x292 y53 w120 h120 , icons\jpg\raze3.jpg
Gui, Add, Picture, x432 y53 w120 h120 , icons\jpg\requiem.jpg
Gui, Add, Picture, x572 y53 w120 h120 , icons\blink.ico
Gui, Add, Picture, x712 y53 w120 h120 , icons\jpg\eul.jpg
Gui, Add, Picture, x12 y223 w470 h30 , icons\jpg\dmove.jpg
Gui, Add, Edit, x22 y183 w100 h30 vraze1, %raze1%
Gui, Add, Edit, x162 y183 w100 h30 vraze2, %raze2%
Gui, Add, Edit, x302 y183 w100 h30 vraze3, %raze3%
Gui, Add, Edit, x442 y183 w100 h30 vreq, %req%
Gui, Add, Edit, x362 y223 w100 h30 vdmove, %dmove%
Gui, Add, Edit, x582 y183 w100 h30 vblink, %blink%
Gui, Add, Edit, x722 y183 w100 h30 veul, %eul%
Gui, Add, Text, x562 y223 w270 h30 , IF NOT BUYED - NOTHING
Gui, Add, Button, x42 y579 w120 h30 gupdate, UPDATE
Gui, Add, Button, x12 y419 w180 h30 gsave, SAVE BUTTONS
Gui, Add, Button, x42 y539 w120 h30 greload, RELOAD
Gui, Add, Edit, x142 y263 w100 h30 vscr1, %scr1%
Gui, Add, Edit, x142 y303 w100 h30 vscr2, %scr2%
Gui, Add, Edit, x142 y343 w100 h30 vscr3, %scr3%
Gui, Add, Edit, x142 y383 w100 h30 vscr4, %scr4%
Gui, Add, Text, x12 y263 w110 h30 , SCRIPT 1:
Gui, Add, Text, x12 y303 w110 h30 , SCRIPT 2:
Gui, Add, Text, x12 y343 w110 h30 , SCRIPT 3:
Gui, Add, Text, x12 y383 w110 h30 , SCRIPT 4:
Gui, Add, Button, x12 y459 w180 h30 gmorebuttons, MORE BUTTONS
Gui, Add, Button, x12 y499 w180 h30 ginstruction, INSTRUCTION
Gui, Add, Button, x562 y269 w270 h30 gbpause, SCRIPT PAUSED?
Gui, Add, Button, x562 y309 w270 h30 gb1, SCRIPT 1 ACTIVATED?
Gui, Add, Button, x562 y349 w270 h30 gb2, SCRIPT 2 ACTIVATED?
Gui, Add, Button, x562 y389 w270 h30 gb3, SCRIPT 3 ACTIVATED?
Gui, Add, Button, x562 y429 w270 h30 gb4, SCRIPT 4 ACTIVATED?
Gui, Show, x503 y238 h634 w865, HERO MODE
Return

GuiClose:
ExitApp
Return

bpause:
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

b1:
Hotkey, %scr1%, toggle
Voice.Speak("script 1")
Return

b2:
Hotkey, %scr2%, toggle
Voice.Speak("script 2")
Return

b3:
Hotkey, %scr3%, toggle
Voice.Speak("script 3")
Return

b4:
Hotkey, %scr4%, toggle
Voice.Speak("script 4")
Return

update:
guicontrolget, raze1
guicontrolget, raze2
guicontrolget, raze3
guicontrolget, req
guicontrolget, dmove
guicontrolget, blink
guicontrolget, eul
guicontrolget, scr1
guicontrolget, scr2
guicontrolget, scr3
guicontrolget, scr4
guicontrolget, scrr1
guicontrolget, scrr2
guicontrolget, scrr3
guicontrolget, scrr4
guicontrolget, scrr5
MsgBox, 0, HERO MODE, YOUR BUTTONS UPDATED!
Return

save:
Gui, Submit, NoHide
iniwrite, %raze1%, settings.ini, shadowfiend, raze1
iniwrite, %raze2%, settings.ini, shadowfiend, raze2
iniwrite, %raze3%, settings.ini, shadowfiend, raze3
iniwrite, %req%, settings.ini, shadowfiend, requiem
iniwrite, %dmove%, settings.ini, shadowfiend, dmove
iniwrite, %blink%, settings.ini, shadowfiend, blink
iniwrite, %eul%, settings.ini, shadowfiend, eul
iniwrite, %scr1%, settings.ini, shadowfiend, script1
iniwrite, %scr2%, settings.ini, shadowfiend, script2
iniwrite, %scr3%, settings.ini, shadowfiend, script3
iniwrite, %scr4%, settings.ini, shadowfiend, script4
iniwrite, %scrr1%, settings.ini, shadowfiend, scriptb1
iniwrite, %scrr2%, settings.ini, shadowfiend, scriptb2
iniwrite, %scrr3%, settings.ini, shadowfiend, scriptb3
iniwrite, %scrr4%, settings.ini, shadowfiend, scriptb4
iniwrite, %scrr5%, settings.ini, shadowfiend, scriptb5
MsgBox, 0, HERO MODE, YOUR BUTTONS SAVED!
Return

reload:
Reload
Return

script1:   
Send, %blink%
Sleep, 65
Send, %eul%
Sleep, 300
Send, {RButton}
Sleep, 500
Send, %req%
Return

script2:
Send, %blink%
Sleep, 65
Send, %eul%
Sleep, 300
Send, {RButton}
Sleep, 1400
Send, %req%
Return

script3:
Send, %blink%
Sleep, 65
Send, %eul%
Sleep, 300
Send, {%dmove% down}
Send, {RButton}
Send, {%dmove% up}
Sleep, 500
Send, %req%
Sleep, 1700
Send, {%dmove% down}
Sleep, 10
Send, {RButton}
Send, {%dmove% up}
Send, %raze1%
Sleep, 400
Send, {%dmove% down}
Sleep, 10
Send, {RButton}
Send, {%dmove% up}
Sleep, 100
Send, %raze2%
Sleep, 400
Send, {%dmove% down}
Sleep, 10
Send, {RButton}
Send, {%dmove% up}
Sleep, 100
Send, %raze3%
Return

script4:
Send, %blink%
Sleep, 65
Send, %eul%
Sleep, 300
Send, {RButton}
Sleep, 1400
Send, %req%
Sleep, 1500
Send, {%dmove% down}
Sleep, 10
Send, {RButton}
Send, {%dmove% up}
Send, %raze1%
Sleep, 350
Send, s
Sleep, 400
Send, {%dmove% down}
Sleep, 10
Send, {RButton}
Send, {%dmove% up}
Sleep, 10
Send, %raze2%
Sleep, 350
Send, s
Sleep, 500
Send, {%dmove% down}
Sleep, 10
Send, {RButton}
Send, {%dmove% up}
Sleep, 10
Send, %raze3%
Return

morebuttons:
Run, https://ahk-wiki.ru/keylist
Return

instruction:
MsgBox, 0, HERO MODE, Чтобы поставить кнопку
Return

            ;               ↑CODE HERE↑