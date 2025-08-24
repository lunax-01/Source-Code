#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetBatchLines, -1
SetDefaultMouseSpeed, 0

toggleSpam := false

~r::
    toggleSpam := !toggleSpam
    if (toggleSpam) {
        SetTimer, ClickLoop, 1
    } else {
        SetTimer, ClickLoop, Off
    }
return

ClickLoop:
    Click
    Sleep, 67
return

toggleCombo := false

v::
    toggleCombo := !toggleCombo
return

~v up::
if (toggleCombo) {
    Click left
    Sleep, 30
    Send, 3
    Sleep, 30
    Click right
    Sleep, 30
    Send, 1
}
return
