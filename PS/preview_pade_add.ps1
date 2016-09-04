# PowerShell.exe -ExecutionPolicy Bypass -file ".\preview_pade_add.ps1"

$filetype = "log"

New-PSDrive -PSProvider registry -Root HKEY_CLASSES_ROOT -Name HKCR

Set-Location HKCR:

New-ItemProperty .\.$filetype -Name PerceivedType -Value text

exit