@Echo Off
for /f "tokens=1,2" %%a in ('dir /s /b *.cs') do ren %%a %%~nxas
for /f "tokens=1,2" %%a in ('dir /s /b *.pn') do ren %%a %%~nxag
for /f "tokens=1,2" %%a in ('dir /s /b *.tp') do ren %%a %%~nxal
@pause