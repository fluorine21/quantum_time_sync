echo off

powershell -Command "$zcu111_com = \"COM Port B = COM\";$zcu111_comb = Get-WMIObject Win32_PnPEntity | where {$_.DeviceID -match \"FTDIBUS\\VID_[0-9][0-9][0-9][0-9]\+PID_[0-9][0-9][0-9][0-9]\+.*[B].[0][0][0][0]\"} | select Caption | select-string -pattern \"USB Serial Port\" | ForEach-Object {$_ -match \"COM[0-9]+\" > $null; $matches[0]} | ForEach-Object {$_ -match \"[0-9]+\" > $null; $matches[0]} | Select-Object -First 1;$zcu111_comb = $zcu111_com + $zcu111_comb;echo $zcu111_comb;"

powershell -Command "$zcu111_com = \"COM Port C = COM\";$zcu111_comc = Get-WMIObject Win32_PnPEntity | where {$_.DeviceID -match \"FTDIBUS\\VID_[0-9][0-9][0-9][0-9]\+PID_[0-9][0-9][0-9][0-9]\+.*[C].[0][0][0][0]\"} | select Caption | select-string -pattern \"USB Serial Port\" | ForEach-Object {$_ -match \"COM[0-9]+\" > $null; $matches[0]} | ForEach-Object {$_ -match \"[0-9]+\" > $null; $matches[0]} | Select-Object -First 1;$zcu111_comc = $zcu111_com + $zcu111_comc;echo $zcu111_comc;"

powershell -Command "$zcu111_com = \"COM Port D = COM\";$zcu111_comd = Get-WMIObject Win32_PnPEntity | where {$_.DeviceID -match \"FTDIBUS\\VID_[0-9][0-9][0-9][0-9]\+PID_[0-9][0-9][0-9][0-9]\+.*[D].[0][0][0][0]\"} | select Caption | select-string -pattern \"USB Serial Port\" | ForEach-Object {$_ -match \"COM[0-9]+\" > $null; $matches[0]} | ForEach-Object {$_ -match \"[0-9]+\" > $null; $matches[0]} | Select-Object -First 1;$zcu111_comd = $zcu111_com + $zcu111_comd;echo $zcu111_comd;"

pause

