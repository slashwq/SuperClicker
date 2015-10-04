#MaxThreadsPerHotkey 50
+X::
#MaxThreadsPerHotkey 1
If SHIFT_X
{
    SHIFT_X := False
    Gui,SX:Color,%BGColor%
	WinSet,Transparent,128,SX
    Return
}

SHIFT_X := True
Gui,SX:Color,%BGActive%
WinSet,Transparent,192,SX
Loop
{ Loop,8
  { Click
    Sleep,100
	}
  Sleep 5000
  If Not SHIFT_X
  Break
  }
SHIFT_X := False
Return