C:
cd C:\HOW2SAY

rmdir data /s /q
mkdir data
xcopy /S C:\HOW2SAY\template\data C:\HOW2SAY\data

call  C:\HOW2SAY\run\SetFileName.bat

java -Dfile.encoding=UTF-8 -Xmx4000m -Djava.rmi.server.codebase="file:///C:/HOW2SAY/dist/How2Say.jar" -Djava.security.policy="file:///C:/HOW2SAY/rmi.policy"  -classpath "./dist/How2Say.jar" org.olanto.mycat.tmx.generic.CreateIndexer > "C:\HOW2SAY\logs\how2say_createNewIndex_logs-%filename%.txt"

