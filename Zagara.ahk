; Simple Zagara Script for HoTS
; by Ollie Cee
; Note: You must have have smart cast enabled and put active items on slot 3

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Toggle hotkey
~-::Suspend, On
~=::Suspend, Off

; Holding T will loop abilities
; Put actives on 3
; W > E > Q Combo Mode because E and Q have cast times, whereas W can be used while casting. Its the optimal combo.
; Ultimate Ability is not used because its situational, you have to manually cast it
~t::
Loop {
Sleep 50
GetKeyState, tState, t, P
if tState = U
break
    send {w}
    send {e}
    send {q}
    send {3}
}
return