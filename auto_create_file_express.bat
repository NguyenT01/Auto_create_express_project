@ECHO OFF
ECHO === AUTO CREATE EXPRESS PROJECT TOOL ===
ECHO Version 1.0.0 --- April 24, 2022
ECHO ========================================
SET /p pname= Project name : 
SET /p v_engine= Your view engine: 

:: STARTING CREATE NODE/EXPRESS PROJECT
CALL npm install express-generator -g
CALL express %pname% --%v_engine%
cd %pname%
CALL npm upgrade
CALL npm audit fix --force



:: DONE
ECHO ==================================================
ECHO Everything is done. Now you can run this project.
PAUSE