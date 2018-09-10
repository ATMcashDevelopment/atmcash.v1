@ECHO OFF
IF EXIST java (
	start "ATM" java -cp ATM.jar;lib\*;conf nxt.Nxt
) ELSE (
	IF EXIST "%PROGRAMFILES%\Java\jre7" (
		start "ATM" "%PROGRAMFILES%\Java\jre7\bin\java.exe" -cp ATM.jar;lib\*;conf nxt.Nxt
	) ELSE (
		IF EXIST "%PROGRAMFILES(X86)%\Java\jre7" (
			start "ATM" "%PROGRAMFILES(X86)%\Java\jre7\bin\java.exe" -cp ATM.jar;lib\*;conf nxt.Nxt
		) ELSE (
			ECHO Java software not found on your system. Please go to http://java.com/en/ to download a copy of Java.
			PAUSE
		)
	)
)

