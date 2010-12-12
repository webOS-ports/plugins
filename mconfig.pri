# Linker optimization for release build
QMAKE_LFLAGS_RELEASE+=-Wl,--as-needed
# Compiler warnings are error if the build type is debug
QMAKE_CXXFLAGS_DEBUG+=-Werror

contains( DEFINES, RELEASE_BUILD ) {
    CONFIG += release
} else {
    CONFIG += debug
}

