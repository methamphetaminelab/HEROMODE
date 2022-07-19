#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

Voice := ComObjCreate("SAPI.SpVoice")

SetWorkingDir %A_ScriptDir%

;               ↓CODE HERE↓

Menu, Tray, Icon, %A_ScriptDir%\icons\bristleback.ico
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

~2::
SendInput, W
Sleep, 100
return

;               ↑CODE HERE↑