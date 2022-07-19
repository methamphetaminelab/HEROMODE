#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

Voice := ComObjCreate("SAPI.SpVoice")

SetWorkingDir %A_ScriptDir%

Menu, Tray, Icon, %A_ScriptDir%\icons\heromode.ico

; 				↓CODE HERE↓

Gui, Add, Picture, x0 y0 w800 h600 , icons\mainmenu.jpg
Gui, Add, Picture, x17 y12 w139 h99 genigma, icons\jpg\enigma.jpg
Gui, Add, Picture, x174 y12 w139 h99 gskywrath, icons\jpg\skywrath.jpg
Gui, Add, Picture, x331 y12 w139 h99 gtinker, icons\jpg\tinker.jpg
Gui, Add, Picture, x488 y12 w139 h99 ghuskar, icons\jpg\huskar.jpg
Gui, Add, Picture, x645 y12 w139 h99 gshadowfiend, icons\jpg\shadowfiend.jpg
Gui, Add, Picture, x645 y487 w139 h99 gLaunchGoogle, icons\jpg\feedback.jpg
Gui, Add, Picture, x272 y536 w253 h-1 gaa, icons\aaa.png
Gui, Show, x462 y148 h600 w800, HEROMODE
Return

GuiClose:
ExitApp
Return

aa:
Run, autoaccept.exe
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

skywrath:
MsgBox, 52, [!] CHOOSE LANGUAGE [!], YES - RUS`n`nNO - ENG
ifmsgbox, Yes
	MsgBox, 64, [!] ПРОЧТИТЕ ИНСТРУКЦИЮ [!], .	1 -MAIN SCRIPT`n.`n.	2 -PROCAST`n.`n.	INSERT - ВКЛ/ВЫКЛ СКРИПТ 1`n.`n.	DEL - ВКЛ/ВЫКЛ СКРИПТ 2`n.`n.	PAUSE - ВКЛ/ВЫКЛ ВСЕ СКРИПТЫ`n.`n.	PAGE UP - ПЕРЕЗАГРУЗИТЬ АХК СКРИПТ`n.`n.	PAGE DOWN - ВЫКЛЮЧИТЬ АХК СКРИПТ,
	else
	MsgBox, 0, [!] CHECK THE INSTRUCTION [!], .	1 -MAIN SCRIPT`n.`n.	2 -PROCAST`n.`n.	INSERT - TOGGLE ON/OFF SCRIPT 1`n.`n.	DEL - ВКЛ/ВЫКЛ СКРИПТ 2`n.`n.	PAUSE - TOGGLE ON/OFF ALL SCRIPTS`n.`n.	PAGE UP - RELOAD AHK SCRIPT`n.`n.	PAGE DOWN - SHUT DOWN AHK SCRIPT
	

Sleep, 1000
SoundPlay, %A_ScriptDir%\sounds\skywrath.wav
Sleep, 2000
Run, skywrath.exe
ExitApp
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

huskar:
MsgBox, 52, [!] CHOOSE LANGUAGE [!], YES - RUS`n`nNO - ENG
ifmsgbox, Yes
	MsgBox, 64, [!] ПРОЧТИТЕ ИНСТРУКЦИЮ [!], .	1 -AUTO ARMLET`n.`n.	2 -PROCAST`n.`n.	INSERT - ВКЛ/ВЫКЛ СКРИПТ 1`n.`n.	DEL - ВКЛ/ВЫКЛ СКРИПТ 2`n.`n.	PAUSE - ВКЛ/ВЫКЛ ВСЕ СКРИПТЫ`n.`n.	PAGE UP - ПЕРЕЗАГРУЗИТЬ АХК СКРИПТ`n.`n.	PAGE DOWN - ВЫКЛЮЧИТЬ АХК СКРИПТ
	else
	MsgBox, 0, [!] CHECK THE INSTRUCTION [!], .	1 -AUTO ARMLET`n.`n.	2 -PROCAST`n.`n.	INSERT - TOGGLE ON/OFF SCRIPT 1`n.`n.	DEL - TOGGLE ON/OFF SCRIPT 2`n.`n.	PAUSE - TOGGLE ON/OFF ALL SCRIPTS`n.`n.	PAGE UP - RELOAD AHK SCRIPT`n.`n.	PAGE DOWN - SHUT DOWN AHK SCRIPT
	

Sleep, 1000
SoundPlay, %A_ScriptDir%\sounds\huskar.wav
Sleep, 2000
Run, huskar.exe
ExitApp
Return

shadowfiend:
MsgBox, 52, [!] CHOOSE LANGUAGE [!], YES - RUS`n`nNO - ENG
ifmsgbox, Yes
	MsgBox, 48, [!] ПРОЧТИТЕ ИНСТРУКЦИЮ [!], .	1 -BLINK-EUL-REQUEM`n.`n.	2 -ARCANE BLINK-EUL-REQUEM`n.`n.	3 -BLINK-EUL-REQUEM-ZXC`n.`n.	4 -ARCANE BLINK-EUL-REQUEM-ZXC`n.`n.	INSERT - ВКЛ/ВЫКЛ СКРИПТ 1`n.`n.	DEL - ВКЛ/ВЫКЛ СКРИПТ 2`n.`n.	HOME - ВКЛ/ВЫКЛ СКРИПТ 3`n.`n.	END - ВКЛ/ВЫКЛ СКРИПТ 4`n.`n.	PAUSE - ВКЛ/ВЫКЛ ВСЕ СКРИПТЫ`n.`n.	PAGE UP - ПЕРЕЗАГРУЗИТЬ АХК СКРИПТ`n.`n.	PAGE DOWN - ВЫКЛЮЧИТЬ АХК СКРИПТ
		else
	MsgBox, 48, [!] CHECK THE INSTRUCTION [!], .	1 -BLINK-EUL-REQUEM`n.`n.	2 -ARCANE BLINK-EUL-REQUEM`n.`n.	3 -BLINK-EUL-REQUEM-ZXC`n.`n.	4 -ARCANE BLINK-EUL-REQUEM-ZXC`n.`n.	INSERT - TOGGLE ON/OFF SCRIPT 1`n.`n.	DEL - TOGGLE ON/OFF SCRIPT 2`n.`n.	HOME - TOGGLE ON/OFF SCRIPT 3`n.`n.	END - TOGGLE ON/OFF SCRIPT 4`n.`n.	PAUSE - TOGGLE ON/OFF ALL SCRIPTS`n.`n.	PAGE UP - RELOAD AHK SCRIPT`n.`n.	PAGE DOWN - SHUT DOWN AHK SCRIPT


Sleep, 1000
SoundPlay, %A_ScriptDir%\sounds\shadowfiend.wav
Sleep, 4000
Run, shadowfiend.exe
ExitApp
Return

LaunchGoogle:
SoundPlay, %A_ScriptDir%\sounds\12tango.wav
Run, https://vk.com/durakandclown
Return

; 				↑CODE HERE↑