#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
^q::
Run, chrome.exe https://www.instagram.com/popugram/
Sleep 10000 ; Wait 10 sec for loading
Send, {Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Enter}
Sleep 10000
counter:=4
i:=0
while(i<166)
{
  j:=0
  while(j<counter)
  {
    Send, {Tab}
    j++
  }

  Send, {Enter}
  Sleep 100
  counter +=3
  i++
}
Esc::ExitApp