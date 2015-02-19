#Try to find lapackblas
set(lapackblas_path "/opt/intel/mkl")
find_library(lp64_libraries NAMES mkl_intel_ilp64 PATHS "${lapackblas_path}/lib/intel64" NO_DEFAULT_PATH)
find_library(core_libraries NAMES mkl_core PATHS "${lapackblas_path}/lib/intel64" NO_DEFAULT_PATH)
find_library(gnu_thread_libraries NAMES mkl_gnu_thread PATHS "${lapackblas_path}/lib/intel64" NO_DEFAULT_PATH)
set(lapackblas_libraries ${lp64_libraries} ${core_libraries} ${gnu_thread_libraries})

find_path(lapackblas_include_dirs mkl.h PATHS "${lapackblas_path}/include" NO_DEFAULT_PATH)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(lapackblas  DEFAULT_MSG
                                  lapackblas_libraries lapackblas_include_dirs)
mark_as_advanced(lapackblas_include_dirs lapackblas_libraries)
