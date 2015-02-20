#Try to find acml
set(acml_path "$ENV{ACML}")
find_library(acml_libraries NAMES libacml.a PATHS "${acml_path}/lib")
find_path(acml_include_dirs acml.h PATHS "${acml_path}/include")

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(acml  DEFAULT_MSG
                                  acml_libraries acml_include_dirs)
mark_as_advanced(acml_include_dirs acml_libraries)
