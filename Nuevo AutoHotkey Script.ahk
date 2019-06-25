#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#i::
Run, chrome.exe
Sleep 1000
Send, !f
Sleep 500
Send, {Down}{Enter}
Sleep 2000
Send, {Esc}{Esc}
Send, ^+{Tab}
Sleep 500
Send, https://www.pexels.com/search/nature/{Enter}
return
