:: DelTree.cmd
:: Delete a folder plus all files and subfolders
@Echo Off
Set _folder=%1
if [%_folder%]==[] goto:eof
Pushd %_folder%
Del /f /q /s *.* >NUL
CD \
RD /s /q %_folder%
:: repeat because RD is sometimes buggy 
if exist %_folder% RD /s /q %_folder%
Popd