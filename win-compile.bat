REM Edit Line 1 to point to your JDK Bin Directory

set path=%path%;C:\Program Files\Java\jdk1.8.0_151\bin
set CP="conf/;classes/;lib/*"
set SP=src/java/

mkdir classes

dir /s /B *.java > sources.txt 
"C:\Program Files\Java\jdk1.8.0_151\bin\javac" -sourcepath %SP% -classpath %CP% -d classes/ @sources.txt

del /f ATM.jar 
jar cf ATM.jar -C classes . 
rmdir /s /q classes
pause