include(FindPackageHandleStandardArgs)
find_package(PkgConfig REQUIRED)
pkg_check_modules(Botan QUIET
  IMPORTED_TARGET
  botan-2>=${Botan_FIND_VERSION}
)
find_package_handle_standard_args(Botan
  REQUIRED_VARS Botan_LIBRARY_DIRS
  VERSION_VAR Botan_VERSION
)
add_library(botan ALIAS PkgConfig::Botan)
