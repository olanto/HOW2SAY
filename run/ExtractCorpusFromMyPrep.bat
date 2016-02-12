C:
cd C:\HOW2SAY

rem sourceTMX /MYPREP/SMT/";
rem targetMFLF/MYPREP/HOW2SAY/corpus.mflf;
rem languages are defined in HOW2SAY/config/IDX_fix.xml


call  C:\HOW2SAY\run\SetFileName.bat

java -Dfile.encoding=UTF-8 -Xmx4000m -Djava.rmi.server.codebase="file:///C:/HOW2SAY/dist/How2Say.jar" -Djava.security.policy="file:///C:/HOW2SAY/rmi.policy"  -classpath "./dist/How2Say.jar" org.olanto.mycat.tmx.generic.extractCorpusFromMyPRE > "C:\HOW2SAY\logs\how2say_extractCorpus_logs-%filename%.txt"

rem copy /MYPREP/HOW2SAY/corpus.mflf into  HOW2SAY/corpus