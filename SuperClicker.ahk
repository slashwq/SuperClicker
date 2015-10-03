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
  Gui,Legend:Add,Text,X150 Y16,CTRL+SHIFT+H shows and hides the legend.
  Gui,Legend:Add,Text,X150 Y32,CTRL+SHIFT+Q quits SuperClicker.
  Gui,Legend:Add,Text,X8 Y32,%Version%
  Gui,Legend:Show,X%PosX% Y%PosY% W384 H32,SuperClicker Legend
  Gui,Legend:+AlwaysOnTop -Caption +LastFound +ToolWindow
  WinSet,Transparent,192,SuperClicker Legend
  }
  
#Include ahk\hotkey_guis.ahk

^+H::
{ If GUIHidden=0
  { GUIHidden=1
    Gui,Legend:Hide
	Gui,CST:Hide
	Gui,CSS:Hide
	Return
	}
  Else
  { GUIHidden=0
    Gui,Legend:Restore
	Gui,CST:Restore
	Gui,CSS:Restore
	Return
	}
  }
 
#Include ahk\cst.ahk
#Include ahk\css.ahk

LegendGuiClose:
^+Q::
!F4::
{ FileRemoveDir,%Install%,1
  ExitApp
  }