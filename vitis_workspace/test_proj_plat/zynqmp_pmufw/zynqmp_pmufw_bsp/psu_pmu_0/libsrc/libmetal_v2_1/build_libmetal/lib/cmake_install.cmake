# Install script for directory: C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/src/libmetal/lib

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/alloc.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/alloc.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/assert.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/assert.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/atomic.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/atomic.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/cache.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/cache.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/compiler.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/compiler.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/condition.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/condition.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/config.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/config.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/cpu.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/cpu.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/device.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/device.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/dma.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/dma.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/io.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/io.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/irq.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/irq.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/irq_controller.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/irq_controller.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/list.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/list.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/log.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/log.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/mutex.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/mutex.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/scatterlist.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/scatterlist.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/shmem.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/shmem.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/shmem-provider.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/shmem-provider.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/sleep.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/sleep.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/softirq.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/softirq.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/spinlock.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/spinlock.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/sys.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/sys.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/time.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/time.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/utilities.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/utilities.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/version.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/version.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/compiler/gcc/atomic.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/compiler/gcc/atomic.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/compiler/gcc/compiler.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/compiler/gcc/compiler.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/compiler/iar/compiler.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/compiler/iar/compiler.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/processor/microblaze/atomic.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/processor/microblaze/atomic.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/processor/microblaze/cpu.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/processor/microblaze/cpu.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/alloc.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/system/generic/alloc.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/assert.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/system/generic/assert.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/cache.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/system/generic/cache.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/condition.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/system/generic/condition.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/io.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/system/generic/io.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/irq.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/system/generic/irq.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/log.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/system/generic/log.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/mutex.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/system/generic/mutex.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/sleep.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/system/generic/sleep.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/sys.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/system/generic/sys.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/microblaze_generic/sys.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/system/generic/microblaze_generic/sys.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/xlnx_common/sys.h" FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/include/metal/system/generic/xlnx_common/sys.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/libmetal.a")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/compiler/cmake_install.cmake")
  include("C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/processor/cmake_install.cmake")
  include("C:/James/vitis_workspace/test_proj_plat/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/system/cmake_install.cmake")

endif()

