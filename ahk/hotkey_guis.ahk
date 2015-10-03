CTRL_SHIFT_S:
{ Gui,CSS:+Owner
  Gui,CSS:Color,%BGColor%
  Gui,CSS:Font,%FontHotkey%,%Font%
  Gui,CSS:Add,Text,X8 Y8,CTRL+SHIFT+S
  Gui,CSS:Font,%FontDesc%,%Font%
  Gui,CSS:Add,Text,X128 Y8,100/sec constant clicking.
  Gui,CSS:Show,X%PosX% Y%PosYH1% W384 H8,CSS
  Gui,CSS:+AlwaysOnTop -Caption +LastFound +ToolWindow
  WinSet,Transparent,128,CSS
  }

CTRL_SHIFT_T:
{ Gui,CST:+Owner
  Gui,CST:Color,%BGColor%
  Gui,CST:Font,%FontHotkey%,%Font%
  Gui,CST:Add,Text,X8 Y8,CTRL+SHIFT+T
  Gui,CST:Font,%FontDesc%,%Font%
  Gui,CST:Add,Text,X128 Y8,Click 8 times with a 5 second break.
  Gui,CST:Show,X%PosX% Y%PosYH2% W384 H8,CST
  Gui,CST:+AlwaysOnTop -Caption +LastFound +ToolWindow
  WinSet,Transparent,128,CST
  }