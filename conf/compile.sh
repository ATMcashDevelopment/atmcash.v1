CP=conf/:classes/:lib/*
SP=src/java/

/bin/mkdir -p classes/

"C:\Program Files\Java\jdk1.8.0_121\bin\javac" -sourcepath $SP -classpath $CP -d classes/ src/java/nxt/*.java src/java/nxt/*/*.java src/java/fr/cryptohash/*.java || exit 1

/bin/rm -f ATM.jar 
jar cf ATM.jar -C classes . || exit 1
/bin/rm -rf classes

echo "ATM.jar generated successfully"
