echo off
copy /Y defaults.json.bak defaults.json
powershell -Command "$zcu111_com = \"COM\";$zcu111_comb = Get-WMIObject Win32_PnPEntity | where {$_.DeviceID -match \"FTDIBUS\\VID_[0-9][0-9][0-9][0-9]\+PID_[0-9][0-9][0-9][0-9]\+.*[B].[0][0][0][0]\"} | select Caption | select-string -pattern \"USB Serial Port\" | ForEach-Object {$_ -match \"COM[0-9]+\" > $null; $matches[0]} | ForEach-Object {$_ -match \"[0-9]+\" > $null; $matches[0]} | Select-Object -First 1;$zcu111_comb = $zcu111_com + $zcu111_comb;echo $zcu111_comb;(get-content defaults.json) | foreach-object {$_ -replace \"COMB\", $zcu111_comb} | set-content defaults.json"

powershell -Command "$zcu111_com = \"COM\";$zcu111_comc = Get-WMIObject Win32_PnPEntity | where {$_.DeviceID -match \"FTDIBUS\\VID_[0-9][0-9][0-9][0-9]\+PID_[0-9][0-9][0-9][0-9]\+.*[C].[0][0][0][0]\"} | select Caption | select-string -pattern \"USB Serial Port\" | ForEach-Object {$_ -match \"COM[0-9]+\" > $null; $matches[0]} | ForEach-Object {$_ -match \"[0-9]+\" > $null; $matches[0]} | Select-Object -First 1;$zcu111_comc = $zcu111_com + $zcu111_comc;echo $zcu111_comc;(get-content defaults.json) | foreach-object {$_ -replace \"COMC\", $zcu111_comc} | set-content defaults.json"

powershell -Command "$zcu111_com = \"COM\";$zcu111_comd = Get-WMIObject Win32_PnPEntity | where {$_.DeviceID -match \"FTDIBUS\\VID_[0-9][0-9][0-9][0-9]\+PID_[0-9][0-9][0-9][0-9]\+.*[D].[0][0][0][0]\"} | select Caption | select-string -pattern \"USB Serial Port\" | ForEach-Object {$_ -match \"COM[0-9]+\" > $null; $matches[0]} | ForEach-Object {$_ -match \"[0-9]+\" > $null; $matches[0]} | Select-Object -First 1;$zcu111_comd = $zcu111_com + $zcu111_comd;echo $zcu111_comd;(get-content defaults.json) | foreach-object {$_ -replace \"COMD\", $zcu111_comd} | set-content defaults.json"

cd bat\msp_flash
copy /Y Firmware_flash_gui.bat.bak Firmware_flash_gui.bat
powershell -Command "$zcu111_com = \"COM\";$zcu111_comb = Get-WMIObject Win32_PnPEntity | where {$_.DeviceID -match \"FTDIBUS\\VID_[0-9][0-9][0-9][0-9]\+PID_[0-9][0-9][0-9][0-9]\+.*[B].[0][0][0][0]\"} | select Caption | select-string -pattern \"USB Serial Port\" | ForEach-Object {$_ -match \"COM[0-9]+\" > $null; $matches[0]} | ForEach-Object {$_ -match \"[0-9]+\" > $null; $matches[0]} | Select-Object -First 1;$zcu111_comb = $zcu111_com + $zcu111_comb;echo $zcu111_comb;(get-content Firmware_flash_gui.bat) | foreach-object {$_ -replace \"COMB\", $zcu111_comb} | set-content Firmware_flash_gui.bat"

pause