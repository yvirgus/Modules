#Try to find sprng
set(sprng_path "/home/boruoshihao/sprng/sprng2.0")
find_library(sprng_libraries NAMES libsprng.a PATHS "${sprng_path}/lib" NO_DEFAULT_PATH)
find_path(sprng_include_dirs sprng.h PATHS "${sprng_path}/include" NO_DEFAULT_PATH)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(sprng  DEFAULT_MSG
                                  sprng_libraries sprng_include_dirs)
mark_as_advanced(sprng_include_dirs sprng_libraries)
