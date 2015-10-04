#MaxThreadsPerHotkey 50
+C::
#MaxThreadsPerHotkey 1
If SHIFT_C
{
    SHIFT_C := False
    Gui,SC:Color,%BGColor%
	WinSet,Transparent,128,SC
    Return
}

SHIFT_C := True
Gui,SC:Color,%BGActive%
WinSet,Transparent,192,SC
Loop
{
    Click
    Sleep 10
    If Not SHIFT_C
    Break
}
SHIFT_C := False
Return