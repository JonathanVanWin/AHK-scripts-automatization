#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoEnv
#Persistent
#SingleInstance,Force
SetBatchLines,-1
lower:="a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z",nums:="1,2,3,4,5,6,7,8,9,0",OtherUnbracket:="",extras:="space,backspace",matches:=lower "," nums "," OtherUnbracket "," extras
Loop,parse,matches,`,
{	
       
            Hotkey,$%A_LoopField%,keyswap
	    If(A_Index<26)
		    Hotkey,$+%A_LoopField%,keyswap
        
}return

keyswap:
	Random,let,1,26
	Random,num,1,9
	char:=SubStr(A_ThisHotkey,2)
	If(StrLen(char)>1)
		new:=(num=9?"{" char "}{" char "}":"{" char "}")
	else If char is digit 
		new:=num
	else If char is lower
		new:=chr(96+let)
	else new:=chr(64+let)
	SendInput,%new%
return

^+!#Esc:: 
exitapp ; To exit this trick press Ctrl + Shift + Alt + Esc + Windows key
Return 