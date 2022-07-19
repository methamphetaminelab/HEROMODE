#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

Voice := ComObjCreate("SAPI.SpVoice")

SetWorkingDir %A_ScriptDir%

;               в†“CODE HEREв†“

Menu, Tray, Icon, %A_ScriptDir%\icons\invoker.ico
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
Hotkey, 2, toggle
Hotkey, 3, toggle
Hotkey, 4, toggle
Hotkey, 5, toggle
Return

PgUp::
Reload
Return

PgDn::
ExitApp
Return

Insert::
Hotkey, 2, toggle
Voice.Speak("script 2")
Return

Del::
Hotkey, 3, toggle
Voice.Speak("script 3")
Return

Home::
Hotkey, 4, toggle
Voice.Speak("script 4")
Return

End::
Hotkey, 5, toggle
Voice.Speak("script 5")
Return

update:
GuiControlGet, blink
GuiControlGet, rockets
GuiControlGet, rearm
GuiControlGet, soulring
GuiControlGet, shiva
GuiControlGet, hex
GuiControlGet, dagon
MsgBox, 64, UPDATE BUTTONS, UPDATED!
Return

~2::
SendInput, %blink%
Sleep, 50
SendInput, %soulring%
Sleep, 100
SendInput, %rockets%
Sleep, 50
SendInput, %rearm%
Sleep, 50
return

;               в†‘CODE HEREв†‘