@ECHO OFF
cd bat\msp_flash\
MSP_BSL_Flasher.exe -f ".\MSP_code.txt" -c "COM234" -v -p
