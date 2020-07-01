@ECHO OFF
cd bat\msp_flash\
:: Set COM Port to number of COM B
MSP_BSL_Flasher.exe -f ".\MSP_code.txt" -c "COM4" -v -p