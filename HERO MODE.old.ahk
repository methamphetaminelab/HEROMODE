#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

Voice := ComObjCreate("SAPI.SpVoice")

SetWorkingDir %A_ScriptDir%

Menu, Tray, Icon, %A_ScriptDir%\icons\heromode.ico

; 				↓CODE HERE↓

Gui, Font, S8 CDefault, Verdana
Gui, Font, S15, Verdana
Gui, Add, Text, x107 y3 w260 h30 , HERO MODE FOR DOTA 2
Gui, Add, Picture, x12 y43 w100 h70 gtinker, icons\tinker.ico
Gui, Add, Picture, x122 y43 w100 h70 genigma, icons\enigma.ico
Gui, Add, Picture, x232 y43 w100 h70 ghuskar, icons\huskar.ico
Gui, Add, Picture, x342 y43 w100 h70 ginvoker, icons\invoker.jpg
Gui, Add, Picture, x12 y123 w100 h70 gskywrath, icons\skywrath.ico
Gui, Add, Picture, x122 y123 w100 h70 gbrist, icons\bristleback.jpg
Gui, Add, Picture, x232 y123 w100 h70 gbountyhunter, icons\bountyhunter.jpg
Gui, Add, Picture, x362 y323 w80 h60 gLaunchGoogle, icons\tango.ico
Gui, Add, Picture, x342 y123 w100 h70 gsf, icons\shadowfiend.jpg
Gui, Show, x627 y317 h407 w460, HERO MODE
Return

GuiClose:
ExitApp
Return

sf:
MsgBox, 64, shadowfiend, SOON
Return

brist:
Voice.Speak("этого ежа драного пикают только хуесосы, так что не пикай его, не позорьсся!")
Return

skywrath:
MsgBox, 52, [!] CHOOSE LANGUAGE [!], YES - RUS`n`nNO - ENG
ifmsgbox, Yes
	MsgBox, 64, [!] ПРОЧТИТЕ ИНСТРУКЦИЮ [!], .	1 -MAIN SCRIPT`n.`n.	INSERT - ВКЛ/ВЫКЛ СКРИПТ 1`n.`n.	PAUSE - ВКЛ/ВЫКЛ ВСЕ СКРИПТЫ`n.`n.	PAGE UP - ПЕРЕЗАГРУЗИТЬ АХК СКРИПТ`n.`n.	PAGE DOWN - ВЫКЛЮЧИТЬ АХК СКРИПТ,
	else
	MsgBox, 0, [!] CHECK THE INSTRUCTION [!], .	1 -MAIN SCRIPT`n.`n.	INSERT - TOGGLE ON/OFF SCRIPT 1`n.`n.	PAUSE - TOGGLE ON/OFF ALL SCRIPTS`n.`n.	PAGE UP - RELOAD AHK SCRIPT`n.`n.	PAGE DOWN - SHUT DOWN AHK SCRIPT
	

Sleep, 1000
SoundPlay, %A_ScriptDir%\sounds\skywrath.wav
Sleep, 2000
Run, skywrath.exe
ExitApp
Return

invoker:
MsgBox, 64, invoker, SOON
Return

huskar:
MsgBox, 52, [!] CHOOSE LANGUAGE [!], YES - RUS`n`nNO - ENG
ifmsgbox, Yes
	MsgBox, 64, [!] ПРОЧТИТЕ ИНСТРУКЦИЮ [!], .	1 -AUTO ARMLET`n.`n.	2 -PROCAST`n.`n.	INSERT - ВКЛ/ВЫКЛ СКРИПТ 1`n.`n.	PAUSE - ВКЛ/ВЫКЛ ВСЕ СКРИПТЫ`n.`n.	PAGE UP - ПЕРЕЗАГРУЗИТЬ АХК СКРИПТ`n.`n.	PAGE DOWN - ВЫКЛЮЧИТЬ АХК СКРИПТ
	else
	MsgBox, 0, [!] CHECK THE INSTRUCTION [!], .	1 -AUTO ARMLET`n.`n.	2 -PROCAST`n.`n.	INSERT - TOGGLE ON/OFF SCRIPT 1`n.`n.	PAUSE - TOGGLE ON/OFF ALL SCRIPTS`n.`n.	PAGE UP - RELOAD AHK SCRIPT`n.`n.	PAGE DOWN - SHUT DOWN AHK SCRIPT
	

Sleep, 1000
SoundPlay, %A_ScriptDir%\sounds\huskar.wav
Sleep, 2000
Run, huskar.exe
ExitApp
Return

enigma:
MsgBox, 52, [!] CHOOSE LANGUAGE [!], YES - RUS`n`nNO - ENG
ifmsgbox, Yes
	MsgBox, 48, [!] ПРОЧТИТЕ ИНСТРУКЦИЮ [!], .	1 -BLINK-MIDNIGHTPULSE-BLACKHOLE`n.`n.	2 -BKB-BLINK-MIDNIGHTPULSE-BLACKHOLE`n.`n.	3 -FULL PROCAST`n.`n.	INSERT - ВКЛ/ВЫКЛ СКРИПТ 1`n.`n.	DEL - ВКЛ/ВЫКЛ СКРИПТ 2`n.`n.	HOME - ВКЛ/ВЫКЛ СКРИПТ 3`n.`n.	PAUSE - ВКЛ/ВЫКЛ ВСЕ СКРИПТЫ`n.`n.	PAGE UP - ПЕРЕЗАГРУЗИТЬ АХК СКРИПТ`n.`n.	PAGE DOWN - ВЫКЛЮЧИТЬ АХК СКРИПТ
	else
	MsgBox, 48, [!] CHECK THE INSTRUCTION [!], .	1 -BLINK-MIDNIGHTPULSE-BLACKHOLE`n.`n.	2 -BKB-BLINK-MIDNIGHTPULSE-BLACKHOLE`n.`n.	3 -FULL PROCAST`n.`n.	INSERT - TOGGLE ON/OFF SCRIPT 1`n.`n.	DEL - TOGGLE ON/OFF SCRIPT 2`n.`n.	HOME - TOGGLE ON/OFF SCRIPT 3`n.`n.	PAUSE - TOGGLE ON/OFF ALL SCRIPTS`n.`n.	PAGE UP - RELOAD AHK SCRIPT`n.`n.	PAGE DOWN - SHUT DOWN AHK SCRIPT

Sleep, 1000
SoundPlay, %A_ScriptDir%\sounds\enigma.wav
Sleep, 2000
Run, enigma.exe
ExitApp
Return

bountyhunter:
SoundPlay, %A_ScriptDir%\sounds\bountyhunter.wav
Return

tinker: 
MsgBox, 52, [!] CHOOSE LANGUAGE [!], YES - RUS`n`nNO - ENG
ifmsgbox, Yes
	MsgBox, 48, [!] ПРОЧТИТЕ ИНСТРУКЦИЮ [!], .	1 -BLINK-SOULRING-ROCKETS-BOTTLE-REARM`n.`n.	2 -BLINK-SHIVA-ROCKETS-SOUL RING-REARM`n.`n.	3 -BLINK-SHIVA-ROCKETS-HEX-REAM`n.`n.	4 -BLINK-SHIVA-HEX-DAGON-REAM`n.`n.	INSERT - ВКЛ/ВЫКЛ СКРИПТ 1`n.`n.	DEL - ВКЛ/ВЫКЛ СКРИПТ 2`n.`n.	HOME - ВКЛ/ВЫКЛ СКРИПТ 3`n.`n.	END - ВКЛ/ВЫКЛ СКРИПТ 4`n.`n.	PAUSE - ВКЛ/ВЫКЛ ВСЕ СКРИПТЫ`n.`n.	PAGE UP - ПЕРЕЗАГРУЗИТЬ АХК СКРИПТ`n.`n.	PAGE DOWN - ВЫКЛЮЧИТЬ АХК СКРИПТ
	else
	MsgBox, 48, [!] CHECK THE INSTRUCTION [!], .	1 -BLINK-SOULRING-ROCKETS-BOTTLE-REARM`n.`n.	2 -BLINK-SHIVA-ROCKETS-SOUL RING-REARM`n.`n.	3 -BLINK-SHIVA-ROCKETS-HEX-REAM`n.`n.	4 -BLINK-SHIVA-HEX-DAGON-REAM`n.`n.	INSERT - TOGGLE ON/OFF SCRIPT 1`n.`n.	DEL - TOGGLE ON/OFF SCRIPT 2`n.`n.	HOME - TOGGLE ON/OFF SCRIPT 3`n.`n.	END - TOGGLE ON/OFF SCRIPT 4`n.`n.	PAUSE - TOGGLE ON/OFF ALL SCRIPTS`n.`n.	PAGE UP - RELOAD AHK SCRIPT`n.`n.	PAGE DOWN - SHUT DOWN AHK SCRIPT

Sleep, 1000
SoundPlay, %A_ScriptDir%\sounds\tinker.wav
Sleep, 2000
Run, tinker.exe
ExitApp
Return

LaunchGoogle:
SoundPlay, %A_ScriptDir%\sounds\12tango.wav
Run, https://vk.com/durakandclown
Return

; 				↑CODE HERE↑