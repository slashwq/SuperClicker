#MaxThreadsPerHotkey 3
^+S::
#MaxThreadsPerHotkey 1
If CTRL_SHIFT_S
{
    CTRL_SHIFT_S := False
    Gui,CSS:Color,%BGColor%
	WinSet,Transparent,128,CSS
    Return
}

CTRL_SHIFT_S := True
Gui,CSS:Color,%BGActive%
WinSet,Transparent,192,CSS
Loop
{
    Click
    Sleep 10
    If Not CTRL_SHIFT_S
    Break
}
CTRL_SHIFT_S := False
Return