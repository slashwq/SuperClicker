; AHK VERSION: Lexikos 1.1.22.06 Unicode 32-bit
; AUTHOR: William Quinn (wquinn@outlook.com)
; TITLE: SuperClicker
; UUID: cbd25b6a-697d-11e5-9d70-feff819cdc9f

#NoEnv
#Persistent
#SingleInstance,Force
SendMode,Input
SetWorkingDir,%A_ScriptDir%

Font=Segoe UI
FontHotkey=CWhite S10 Q5 WBold
FontHotkeyActive=CRed S10 Q5 WBold
FontDesc=Font,CWhite S10 Q5 WNormal
FontDescActive=Font,CRed S10 Q5 WNormal

BGColor=000
GUIHidden=0
PosX=% A_ScreenWidth-384
PosY=% A_ScreenHeight-288

Legend:
{ Gui,Legend:Color,%BGColor%
  Gui,Legend:Font,CWhite S16 Q5,Calibri Light
  Gui,Legend:Add,Text,X8 Y8,SuperClicker
  Gui,Legend:Font,,
  Gui,Legend:Font,CWhite S10 Q5 WBold,Segoe UI
  Gui,Legend:Add,Text,X8 Y40,CTRL+SHIFT+H
  Gui,Legend:Font,,
  Gui,Legend:Font,CWhite S10 Q5,Segoe UI
  Gui,Legend:Add,Text,X128 Y40,Hides/Shows the Legend
  }
; CTRL-SHIFT-T
CTRLSHIFTT:
{ Gui,Legend:Font,%FontHotkey%,%Font%
  Gui,Legend:Add,Text,X8 Y64,CTRL+SHIFT+T
  Gui,Legend:Font,%FontDesc%,%Font%
  Gui,Legend:Add,Text,X128 Y64,This is a test combo!
  }
Gui,Legend:Show,X%PosX% Y%PosY% W384 H192,SuperClicker Legend
Gui,Legend:+AlwaysOnTop +Border -Caption +ToolWindow
WinSet,Transparent,128,SuperClicker Legend

^+H::
{ If GUIHidden=0
  { GUIHidden=1
    Gui,Legend:Hide
	Return
	}
  Else
  { GUIHidden=0
    Gui,Legend:Restore
	Return
	}
  }
  
^+T::
{ If CTRLSHIFTT=0
  { CTRLSHIFTT=1
    Gui,Legend:Font,%FontHotkeyActive%,%Font%
    Gui,Legend:Add,Text,X8 Y64,CTRL+SHIFT+T
	Gui,Legend:Font,%FontDescActive%,%Font%
    Gui,Legend:Add,Text,X128 Y64,This is a test combo!
    Return
  }
  Else
  { CTRLSHIFTT=0
    Gosub,CTRLSHIFTT
	Return
	}
  }
  
^+Q::ExitApp

^+C::
{ CTRLSHIFTC=1 
  Loop
  { Click
    Sleep,40
	GetKeyState,State,Pause
	If State=D
	{ CTRLSHIFTC=0
	  Break
	  }
	}
  }
Return