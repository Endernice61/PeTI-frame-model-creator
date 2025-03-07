@if "%1" == "" (
	@set /p units=How many units should the frame be? 
) else set units=%1
call frame_creator_mdlsrc_smd.cmd "%units%"
@echo smd file created
@pause
@(for /F "delims=" %%i in (ref/qc.txt) do @CALL :replace "%%i" "%units%") > "mdlsrc/straight_%units%.qc"
@echo qc file created
@pause
@set /a unitsminusone=units-1
@(for /F "delims=" %%i in (ref/physics.txt) do @CALL :replace "%%i" "%unitsminusone%") > "mdlsrc/straight_%units%_physics.smd"
@echo physics file created
@goto end
:replace
@setlocal enabledelayedexpansion
@set line=%~1
@echo !line:#1=%~2!
@endlocal
@exit /b 0
:end
@pause