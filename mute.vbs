Set WshShell = CreateObject("WScript.Shell")  
	For i = 0 To 50  
	WshShell.SendKeys(chr(174))  
  WScript.Sleep 100  
Next  
