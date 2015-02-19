#Try to find fftw
set(fftw_path "/opt/fftw")
find_library(fftw_libraries NAMES libfftw3.a PATHS "${fftw_path}/lib" NO_DEFAULT_PATH)
find_path(fftw_include_dirs fftw3.h PATHS "${fftw_path}/include" NO_DEFAULT_PATH)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(fftw  DEFAULT_MSG
                                  fftw_libraries fftw_include_dirs)
mark_as_advanced(fftw_include_dirs fftw_libraries)
