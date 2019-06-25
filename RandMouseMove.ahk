#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

gradual_mousemove(end_x,end_y,time=1000,delay=10) {
    ;preserve settings
    original_coordmode := A_CoordModeMouse

    CoordMode, Mouse, Screen
    MouseGetPos, start_x, start_y

    ;compute deltas
    dx := end_x - start_x
    dy := end_y - start_y

    ;delay ms per step
    step_t := time / delay

    original_mousedelay:=A_MouseDelay 
    SetMouseDelay, 0

    loop % step_t
    {
        p := (A_index/step_t)
        step_x := start_x + (p*dx)
        step_y := start_y + (p*dy)
        Click, %step_x%, %step_y%, 0 ;move without clicking

        sleep, %delay%

        ;debug info
        ;ToolTip X: %step_x%  Y: %step_y%  P: %p%  D: %delay%  T: %time%   S: %A_Index% / %step_t%

        MouseGetPos, mx, my
        if ( (mx==end_x) && (my==end_y) )
            break
    }

    ;ensure correct end point
    Click, %end_x%, %end_y%, 0

    ;reset settings
    CoordMode, Mouse, %original_coordmode%
    SetMouseDelay, %original_mousedelay%
}

loop
{ 
    Random, min, 500, 10000
    Random, max, 3000,4000
    Random, waitTime, min, max ; play this mouse trick every 20 to 60 seconds
    Sleep waitTime
    Random, endX, 0, A_ScreenWidth
    Random, endY, 0, A_ScreenHeight
    Random, timeForMove, 0, 3500
    Random, delay, 0, 3500
    gradual_mousemove(endX, endY, timeForMove, delay)
}

^+!#Esc:: 
exitapp ; To exit this trick press Ctrl + Shift + Alt + Esc + Windows key
Return 