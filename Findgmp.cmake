#Try to find gmp
set(gmp_path "$ENV{GMP}")
find_library(gmp_libraries NAMES libgmp.a PATHS "${gmp_path}/lib")
find_path(gmp_include_dirs gmp.h PATHS "${gmp_path}/include")

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(gmp  DEFAULT_MSG
                                  gmp_libraries gmp_include_dirs)
mark_as_advanced(gmp_include_dirs gmp_libraries)
