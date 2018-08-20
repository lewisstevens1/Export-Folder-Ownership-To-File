:: OWNERSHIP WRITING TO FILE - Lewis Stevens

@echo off


echo.

CHOICE /C:12 /m "Include Subdirectories For Ownership Writing [1]No or [2]Yes?"

IF ERRORLEVEL 2 GOTO YesFunction
IF ERRORLEVEL 1 GOTO NoFunction

:YesFunction
	echo. 2> generated_report.txt
	icacls ./* /t >> generated_report.txt
	echo Data written to generated_report.txt file.
pause
GOTO End

:NoFunction
	echo. 2> generated_report.txt
	icacls ./* >> generated_report.txt
	echo Data written to generated_report.txt file.
pause
GOTO End

:End