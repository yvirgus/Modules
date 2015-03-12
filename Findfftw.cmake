#Try to find fftw
set(fftw_path "$ENV{FFTW}")
find_library(fftw_libraries NAMES libfftw3.a PATHS "${fftw_path}/lib")
find_path(fftw_include_dirs fftw3.h PATHS "${fftw_path}/include")

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(fftw  DEFAULT_MSG
                                  fftw_libraries fftw_include_dirs)
mark_as_advanced(fftw_include_dirs fftw_libraries)

if(NOT FFTW_FOUND)
  MESSAGE ("-- In order to find fftw, please define FFTW='/path/to/fftw' ")
endif()
