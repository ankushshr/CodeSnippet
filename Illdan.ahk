; Simple Illdan Script for HoTS
; by Ollie Cee
; Note: You must have have smart cast enabled and put active items on slot 3

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Toggle hotkey
~-::Suspend, On
~=::Suspend, Off

; Holding G will loop abilities except R
~g::
Loop {
    Sleep 50
    GetKeyState, gState, g, P
    if gState = U
    break
    send {q}
    send {w}
    send {e}
}
return

; Holding T will loop abilities
; Put Blade of the Ruined King active on 3
; Put Heal active on 2
~t::
Loop {
    Sleep 50
    GetKeyState, tState, t, P
    if tState = U
    break
    send {q}
    send {w}
    send {e}
    send {3}
    send {2}
}
return