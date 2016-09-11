# this is to kill existing chrome running so it will not block with the script
$a = get-process chrome
if ($a -ne $null) {
	stop-process -id  $a.id
}


$chrome = "C:\Progra~2\Google\Chrome\Application\chrome.exe"
$addurl = "--new-instance http://perk.tv/video/123-123-123"

$i = 0
$bbb = 20
$bbbp = 3

while ($true)
{

Write-Host "Executed " $i "times"

$Process1 = [Diagnostics.Process]::Start($chrome)
Start-Sleep -Seconds $bbbp
$Process1_1 = [Diagnostics.Process]::Start($chrome, $addurl)

Start-Sleep -Seconds $bbb 

$Process2 = [Diagnostics.Process]::Start($chrome)
Start-Sleep -Seconds $bbbp
$Process2_1 = [Diagnostics.Process]::Start($chrome, $addurl)

Start-Sleep -Seconds $bbb 

$Process3 = [Diagnostics.Process]::Start($chrome)
Start-Sleep -Seconds $bbbp
$Process3_1 = [Diagnostics.Process]::Start($chrome, $addurl)

Start-Sleep -Seconds $bbb

$Process4 = [Diagnostics.Process]::Start($chrome)
Start-Sleep -Seconds $bbbp
$Process4_1 = [Diagnostics.Process]::Start($chrome, $addurl)

# restart after 30 minutes
Start-Sleep -Seconds 2400 
Stop-Process -Id $Process1.Id -ErrorAction stop            

Start-Sleep -Seconds 25         

$i += 1

}
exit