#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

SetWorkingDir %A_ScriptDir%

;               ↓CODE HERE↓

SoundPlay, %A_ScriptDir%\sounds\run.wav
Sleep, 1000

Gui, Font, S15 CDefault, Verdana
Gui, Add, Button, x32 y63 w130 h30 gaa, ENABLE
Gui, Add, Text, x22 y13 w150 h30 , AUTO ACCEPT
Gui, Show, x764 y361 h110 w198, HERO MODE
Return

GuiClose:
ExitApp
Return

Pause::
Reload
Return

aa:
msgbox, 52, HERO MODE, PAUSE - DEACTIVATE AUTO ACCEPT
ifmsgbox, yes
    {
    End::
    BreakLoop := !BreakLoop
    if BreakLoop = 1
    {
    SetTimer,RepeatCode,5000
    } else {
    NumberOfTimersRepeatLabelHasRan = 0
    Settimer,RepeatCode,off
    }
    RepeatCode:
    NumberOfTimesRepeatLabelHasRan++
    xValue := (A_ScreenWidth * 49.58333333333333) / 100
    yValue := (A_ScreenHeight * 48.61111111111111) / 100
    MouseClick, left, %xValue%, %yValue%
    return
    }
Else
    ExitApp
Return