; Simple Illdan Script for HoTS
; by Ollie Cee
; Note: You must have have smart cast enabled

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

; Holding T will loop abilities, Blade of the Ruined King, Heal
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