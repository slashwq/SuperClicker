#MaxThreadsPerHotkey 3
^+T::
#MaxThreadsPerHotkey 1
If CTRL_SHIFT_T
{
    CTRL_SHIFT_T := False
    Gui,CST:Color,%BGColor%
	WinSet,Transparent,128,CST
    Return
}

CTRL_SHIFT_T := True
Gui,CST:Color,%BGActive%
WinSet,Transparent,192,CST
Loop
{ Loop,8
  { Click
    Sleep,100
	}
  Sleep 5000
  If Not CTRL_SHIFT_T
  Break
  }
CTRL_SHIFT_T := False
Return