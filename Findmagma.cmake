# A module to find MAGMA library

include(FindPackageHandleStandardArgs)

#MESSAGE("? MAGMA = $ENV{MAGMA}")
set(magma_path "$ENV{MAGMA}")
find_library(magma_libraries NAMES libmagma.so libmagma.a PATHS "${magma_path}/lib64" "${magma_path}/lib")
find_path(magma_include_dirs magma.h PATHS "${magma_path}/include")

find_package_handle_standard_args(magma  DEFAULT_MSG
                                  magma_libraries magma_include_dirs)
mark_as_advanced(magma_include_dirs magma_libraries)

if(NOT MAGMA_FOUND)
  MESSAGE ("-- In order to find MAGMA, please define MAGMA environment variable.")
endif()
