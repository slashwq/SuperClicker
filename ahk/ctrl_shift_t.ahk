CTRL_SHIFT_T:
{ CTRL_SHIFT_T=0
  Gui,Legend:Font,%FontHotkey%,%Font%
  Gui,Legend:Add,Text,X8 Y64,CTRL+SHIFT+T
  Gui,Legend:Font,%FontDesc%,%Font%
  Gui,Legend:Add,Text,X128 Y64,This is a test combo!
  }
  
^+T::
{ If CTRL_SHIFT_T=1
  { Gosub,CTRL_SHIFT_T
	Return
	}
  Else
  { CTRL_SHIFT_T=1
    Gui,Legend:Font,%FontHotkeyActive%,%Font%
    Gui,Legend:Add,Text,X8 Y64,CTRL+SHIFT+T
	Gui,Legend:Font,%FontDescActive%,%Font%
    Gui,Legend:Add,Text,X128 Y64,This is a test combo!
	Loop
	{ Click
	  Sleep,1000
	  GetKeyState,State,Pause
	  If State=D
	  Gosub,CTRL_SHIFT_T
	  }
    Return
	}
  }