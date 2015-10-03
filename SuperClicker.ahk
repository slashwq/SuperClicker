; AHK VERSION: Lexikos 1.1.22.06 Unicode 32-bit
; AUTHOR: William Quinn (wquinn@outlook.com)
; TITLE: SuperClicker
; UUID: cbd25b6a-697d-11e5-9d70-feff819cdc9f

#Include ahk\var.ahk ; Defines all variables.
; #Include ahk\install.ahk ; Installs all files.

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
  Gui,Legend:Show,X%PosX% Y%PosY% W384 H192,SuperClicker Legend
  Gui,Legend:+AlwaysOnTop -Caption +LastFound +ToolWindow +0x08000000
  WinSet,Transparent,128,SuperClicker Legend
  }
  
; CTRL-SHIFT-T
#Include ahk\ctrl_shift_t.ahk
  
; CTRL-SHIFT-C
CTRLSHIFTC:
{ Gui,Legend:Font,%FontHotkey%,%Font%
  Gui,Legend:Add,Text,X8 Y88 vCTRLSHIFTC1,CTRL+SHIFT+C
  Gui,Legend:Font,%FontDesc%,%Font%
  Gui,Legend:Add,Text,X128 Y88 vCTRLSHIFTC2,AutoClick at a rate of 25/sec.
  If CTRLSHIFTC=1
  { Gui,Legend:Font,%FontHotkeyActive%,%Font%
    Gui,Legend:Add,Text,X8 Y88 vCTRLSHIFTC1,CTRL+SHIFT+C
    Gui,Legend:Font,%FontDescActive%,%Font%
    Gui,Legend:Add,Text,X128 Y88 vCTRLSHIFTC2,AutoClick at a rate of 25/sec.
    }
  }

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
 
  
^+Q::
!F4::ExitApp

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