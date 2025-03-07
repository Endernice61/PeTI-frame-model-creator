@if "%1"=="-game" (
	@set game=%2
) else set game="%CD%"
@if NOT EXIST %game:~0,-1%\gameinfo.txt" (
	@echo Unable to find GameInfo.txt
	@echo Add -game ^<path^> on the command line where ^<path^> is the directory that GameInfo.txt is in.
	@goto end
)
@set /p units=How many units should the frame be? 
call frame_creator_mdlsrc.cmd "%units%"
@set qcpath="%CD%/mdlsrc/straight_%units%.qc"
cd %game%
cd ../bin
studiomdl -game %game% %qcpath%
:end
pause