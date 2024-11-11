;#SETUP START
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
ListLines Off
SetBatchLines -1
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#KeyHistory 0
#WinActivateForce

Process, Priority,, H

SetWinDelay -1
SetControlDelay -1

;include the library
#Include VD.ahk
; VD.init() ;COMMENT OUT `static dummyStatic1 := VD.init()` if you don't want to init at start of script

;you should WinHide invisible programs that have a window.
WinHide, % "Malwarebytes Tray Application"
;#SETUP END

VD.createUntil(8) ;create until we have at least n VD

return


^#left::VD.goToRelativeDesktopNum(-1)
^#right::VD.goToRelativeDesktopNum(+1)

; ctrl alt shift + number
^!+1::VD.MoveWindowToDesktopNum("A",1)
^!+2::VD.MoveWindowToDesktopNum("A",2)
^!+3::VD.MoveWindowToDesktopNum("A",3)
^!+4::VD.MoveWindowToDesktopNum("A",4)
^!+5::VD.MoveWindowToDesktopNum("A",5)
^!+6::VD.MoveWindowToDesktopNum("A",6)
^!+7::VD.MoveWindowToDesktopNum("A",7)
^!+8::VD.MoveWindowToDesktopNum("A",8)
^!+9::VD.MoveWindowToDesktopNum("A",9)

