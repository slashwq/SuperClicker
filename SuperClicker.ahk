; AHK VERSION: Lexikos 1.1.22.06 Unicode 32-bit
; AUTHOR: William Quinn (wquinn@outlook.com)
; TITLE: SuperClicker
; UUID: cbd25b6a-697d-11e5-9d70-feff819cdc9f

#Include ahk\var.ahk ; Defines all variables.
#Include ahk\install.ahk ; Installs all files.

Legend:
{ Gui,Legend:Color,%BGColor%
  Gui,Legend:Font,CWhite S16 Q5,Calibri Light
  Gui,Legend:Add,Text,X8 Y8,SuperClicker
  Gui,Legend:Font,,
  Gui,Legend:Font,CWhite S8 Q5,Segoe UI
  Gui,Legend:Add,Text,X150 Y5,SHIFT+H shows and hides the legend.
  Gui,Legend:Add,Text,X150 Y17,SHIFT+Q quits SuperClicker.
  Gui,Legend:Add,Text,X150 Y29,BACKSPACE stops all clicker macros.
  Gui,Legend:Add,Text,X150 Y41,SHIFT+BACKSPACE reloads the script.
  Gui,Legend:Add,Text,X8 Y32,%Version%
  Gui,Legend:Show,X%PosX% Y%PosY% W384 H32,SuperClicker Legend
  Gui,Legend:+AlwaysOnTop -Caption +LastFound +ToolWindow
  WinSet,Transparent,192,SuperClicker Legend
  }
  
#Include ahk\hotkey_guis.ahk

+H::
{ If GUIHidden=0
  { GUIHidden=1
    Gui,Legend:Hide
	Gui,SC:Hide
	Gui,SX:Hide
	Return
	}
  Else
  { GUIHidden=0
    Gui,Legend:Restore
	Gui,SC:Restore
	Gui,SX:Restore
	Return
	}
  }
 
#Include ahk\sc.ahk
#Include ahk\sx.ahk

BACKSPACE::
{ SHIFT_C := False
  Gui,SC:Color,%BGColor%
  WinSet,Transparent,128,SC
  SHIFT_X := False
  Gui,SX:Color,%BGColor%
  WinSet,Transparent,128,SX
  Return
  }
  
+BACKSPACE::Reload

LegendGuiClose:
+Q::
!F4::
{ FileRemoveDir,%Install%,1
  ExitApp
  }