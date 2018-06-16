# Sets the following variables:
#
# LUAJIT_FOUND
# LUAJIT_INCLUDE_DIR
# LUAJIT_LIBRARY

set(LUAJIT_SEARCH_PATHS
    /usr/local
    /usr
    c:/projects/LuaJIT-2.0.5
    c:/projects/LuaJIT-2.0.5/src
    c:/usr/local/lib
    c:/usr/local
    c:/usr/lib
    c:/usr
    $ENV{LUAJIT_DIR}
    )

find_path(LUAJIT_INCLUDE_DIR
    NAMES luajit.h
    PATH_SUFFIXES include include/luajit-2.0 src
    PATHS ${LUAJIT_SEARCH_PATHS})

find_library(LUAJIT_LIBRARY
    NAMES luajit-5.1 lua51
    PATH_SUFFIXES lib
    PATHS ${LUAJIT_SEARCH_PATHS})

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(LuaJIT DEFAULT_MSG LUAJIT_LIBRARY LUAJIT_INCLUDE_DIR)

mark_as_advanced(LUAJIT_INCLUDE_DIR LUAJIT_LIBRARY)
