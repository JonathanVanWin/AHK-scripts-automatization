#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
^d::
CoordMode, Mouse, Screen
MoveMouse_Circle(800, 450, 50, 36000) ; use 36 steps


;-------------------------------------------------------------------------------
MoveMouse_Circle(cx, cy, r, s) { ; move mouse in a circle
;-------------------------------------------------------------------------------
    $Pi := 4 * ATan(1)
    MouseMove, cx + r, cy, 0
    Loop, % s ; number of steps
        MouseMove, cx + r * Cos(A_Index * 2 * $Pi / s)
                 , cy + r * Sin(A_Index * 2 * $Pi / s)
}