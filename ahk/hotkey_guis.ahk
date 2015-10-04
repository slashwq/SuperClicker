SHIFT_C:
{ Gui,SC:+Owner
  Gui,SC:Color,%BGColor%
  Gui,SC:Font,%FontHotkey%,%Font%
  Gui,SC:Add,Text,X8 Y8,SHIFT+C
  Gui,SC:Font,%FontDesc%,%Font%
  Gui,SC:Add,Text,X128 Y8,100/sec constant clicking.
  Gui,SC:Show,X%PosX% Y%PosYH1% W384 H8,SC
  Gui,SC:+AlwaysOnTop -Caption +LastFound +ToolWindow
  WinSet,Transparent,128,SC
  }

SHIFT_X:
{ Gui,SX:+Owner
  Gui,SX:Color,%BGColor%
  Gui,SX:Font,%FontHotkey%,%Font%
  Gui,SX:Add,Text,X8 Y8,SHIFT+X
  Gui,SX:Font,%FontDesc%,%Font%
  Gui,SX:Add,Text,X128 Y8,Click 8 times with a 5 second break.
  Gui,SX:Show,X%PosX% Y%PosYH2% W384 H8,SX
  Gui,SX:+AlwaysOnTop -Caption +LastFound +ToolWindow
  WinSet,Transparent,128,SX
  }