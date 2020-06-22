#
# This file was created by Xilinx Vitis tool.
#


#
# tools
#

RM = rm -f
RMDIR = rm -rf



#
# variables
#

SDCARD_GEN = sdcard_gen
GENERATE_BIF = ::scw::generate_bif

XPFM_PATH = C:/James/vitis_workspace/test_proj_plat/export/test_proj_plat/test_proj_plat.xpfm
SYS_CONFIG = test_proj_plat
DOMAINS = standalone_domain
BIF_PATH = C:/James/vitis_workspace/test_proj_tcp_server_system/Debug/system.bif

BITSTREAM_PATH = C:/James/vitis_workspace/test_proj_tcp_server/_ide/bitstream/top_level_block_design_wrapper.bit
SD_FILES = --elf C:/James/vitis_workspace/test_proj_tcp_server/Debug/test_proj_tcp_server.elf,psu_cortexa53_0

#
# primary build targets
#

all: package

package:
	-@echo Generating bif file for the system project
	generate_system_bif.bat 52346 ${XPFM_PATH} ${DOMAINS} ${BIF_PATH}
	${SDCARD_GEN} --xpfm ${XPFM_PATH} --sys_config ${SYS_CONFIG} --bif ${BIF_PATH} --bitstream ${BITSTREAM_PATH} ${SD_FILES}

clean:
	$(RMDIR) ./_sds
	${RMDIR} package
	${RM} system.bif

.PHONY: all package clean


