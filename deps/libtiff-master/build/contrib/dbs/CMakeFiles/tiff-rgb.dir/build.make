# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.24.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.24.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build

# Include any dependencies generated for this target.
include contrib/dbs/CMakeFiles/tiff-rgb.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include contrib/dbs/CMakeFiles/tiff-rgb.dir/compiler_depend.make

# Include the progress variables for this target.
include contrib/dbs/CMakeFiles/tiff-rgb.dir/progress.make

# Include the compile flags for this target's objects.
include contrib/dbs/CMakeFiles/tiff-rgb.dir/flags.make

contrib/dbs/CMakeFiles/tiff-rgb.dir/tiff-rgb.c.o: contrib/dbs/CMakeFiles/tiff-rgb.dir/flags.make
contrib/dbs/CMakeFiles/tiff-rgb.dir/tiff-rgb.c.o: /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/dbs/tiff-rgb.c
contrib/dbs/CMakeFiles/tiff-rgb.dir/tiff-rgb.c.o: contrib/dbs/CMakeFiles/tiff-rgb.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object contrib/dbs/CMakeFiles/tiff-rgb.dir/tiff-rgb.c.o"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/dbs && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT contrib/dbs/CMakeFiles/tiff-rgb.dir/tiff-rgb.c.o -MF CMakeFiles/tiff-rgb.dir/tiff-rgb.c.o.d -o CMakeFiles/tiff-rgb.dir/tiff-rgb.c.o -c /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/dbs/tiff-rgb.c

contrib/dbs/CMakeFiles/tiff-rgb.dir/tiff-rgb.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tiff-rgb.dir/tiff-rgb.c.i"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/dbs && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/dbs/tiff-rgb.c > CMakeFiles/tiff-rgb.dir/tiff-rgb.c.i

contrib/dbs/CMakeFiles/tiff-rgb.dir/tiff-rgb.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tiff-rgb.dir/tiff-rgb.c.s"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/dbs && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/dbs/tiff-rgb.c -o CMakeFiles/tiff-rgb.dir/tiff-rgb.c.s

# Object files for target tiff-rgb
tiff__rgb_OBJECTS = \
"CMakeFiles/tiff-rgb.dir/tiff-rgb.c.o"

# External object files for target tiff-rgb
tiff__rgb_EXTERNAL_OBJECTS =

contrib/dbs/tiff-rgb: contrib/dbs/CMakeFiles/tiff-rgb.dir/tiff-rgb.c.o
contrib/dbs/tiff-rgb: contrib/dbs/CMakeFiles/tiff-rgb.dir/build.make
contrib/dbs/tiff-rgb: libtiff/libtiff.5.3.0.dylib
contrib/dbs/tiff-rgb: port/libport.a
contrib/dbs/tiff-rgb: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libm.tbd
contrib/dbs/tiff-rgb: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libz.tbd
contrib/dbs/tiff-rgb: /opt/homebrew/lib/libjpeg.dylib
contrib/dbs/tiff-rgb: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/liblzma.tbd
contrib/dbs/tiff-rgb: contrib/dbs/CMakeFiles/tiff-rgb.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable tiff-rgb"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/dbs && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tiff-rgb.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contrib/dbs/CMakeFiles/tiff-rgb.dir/build: contrib/dbs/tiff-rgb
.PHONY : contrib/dbs/CMakeFiles/tiff-rgb.dir/build

contrib/dbs/CMakeFiles/tiff-rgb.dir/clean:
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/dbs && $(CMAKE_COMMAND) -P CMakeFiles/tiff-rgb.dir/cmake_clean.cmake
.PHONY : contrib/dbs/CMakeFiles/tiff-rgb.dir/clean

contrib/dbs/CMakeFiles/tiff-rgb.dir/depend:
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/dbs /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/dbs /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/dbs/CMakeFiles/tiff-rgb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contrib/dbs/CMakeFiles/tiff-rgb.dir/depend

