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
include tools/CMakeFiles/tiff2rgba.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tools/CMakeFiles/tiff2rgba.dir/compiler_depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/tiff2rgba.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/tiff2rgba.dir/flags.make

tools/CMakeFiles/tiff2rgba.dir/tiff2rgba.c.o: tools/CMakeFiles/tiff2rgba.dir/flags.make
tools/CMakeFiles/tiff2rgba.dir/tiff2rgba.c.o: /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/tools/tiff2rgba.c
tools/CMakeFiles/tiff2rgba.dir/tiff2rgba.c.o: tools/CMakeFiles/tiff2rgba.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tools/CMakeFiles/tiff2rgba.dir/tiff2rgba.c.o"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/tools && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tools/CMakeFiles/tiff2rgba.dir/tiff2rgba.c.o -MF CMakeFiles/tiff2rgba.dir/tiff2rgba.c.o.d -o CMakeFiles/tiff2rgba.dir/tiff2rgba.c.o -c /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/tools/tiff2rgba.c

tools/CMakeFiles/tiff2rgba.dir/tiff2rgba.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tiff2rgba.dir/tiff2rgba.c.i"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/tools && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/tools/tiff2rgba.c > CMakeFiles/tiff2rgba.dir/tiff2rgba.c.i

tools/CMakeFiles/tiff2rgba.dir/tiff2rgba.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tiff2rgba.dir/tiff2rgba.c.s"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/tools && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/tools/tiff2rgba.c -o CMakeFiles/tiff2rgba.dir/tiff2rgba.c.s

# Object files for target tiff2rgba
tiff2rgba_OBJECTS = \
"CMakeFiles/tiff2rgba.dir/tiff2rgba.c.o"

# External object files for target tiff2rgba
tiff2rgba_EXTERNAL_OBJECTS =

tools/tiff2rgba: tools/CMakeFiles/tiff2rgba.dir/tiff2rgba.c.o
tools/tiff2rgba: tools/CMakeFiles/tiff2rgba.dir/build.make
tools/tiff2rgba: libtiff/libtiff.5.3.0.dylib
tools/tiff2rgba: port/libport.a
tools/tiff2rgba: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libm.tbd
tools/tiff2rgba: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libz.tbd
tools/tiff2rgba: /opt/homebrew/lib/libjpeg.dylib
tools/tiff2rgba: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/liblzma.tbd
tools/tiff2rgba: tools/CMakeFiles/tiff2rgba.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable tiff2rgba"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tiff2rgba.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/tiff2rgba.dir/build: tools/tiff2rgba
.PHONY : tools/CMakeFiles/tiff2rgba.dir/build

tools/CMakeFiles/tiff2rgba.dir/clean:
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/tools && $(CMAKE_COMMAND) -P CMakeFiles/tiff2rgba.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/tiff2rgba.dir/clean

tools/CMakeFiles/tiff2rgba.dir/depend:
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/tools /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/tools /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/tools/CMakeFiles/tiff2rgba.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/tiff2rgba.dir/depend

