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
include tools/CMakeFiles/fax2ps.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tools/CMakeFiles/fax2ps.dir/compiler_depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/fax2ps.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/fax2ps.dir/flags.make

tools/CMakeFiles/fax2ps.dir/fax2ps.c.o: tools/CMakeFiles/fax2ps.dir/flags.make
tools/CMakeFiles/fax2ps.dir/fax2ps.c.o: /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/tools/fax2ps.c
tools/CMakeFiles/fax2ps.dir/fax2ps.c.o: tools/CMakeFiles/fax2ps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tools/CMakeFiles/fax2ps.dir/fax2ps.c.o"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/tools && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tools/CMakeFiles/fax2ps.dir/fax2ps.c.o -MF CMakeFiles/fax2ps.dir/fax2ps.c.o.d -o CMakeFiles/fax2ps.dir/fax2ps.c.o -c /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/tools/fax2ps.c

tools/CMakeFiles/fax2ps.dir/fax2ps.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fax2ps.dir/fax2ps.c.i"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/tools && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/tools/fax2ps.c > CMakeFiles/fax2ps.dir/fax2ps.c.i

tools/CMakeFiles/fax2ps.dir/fax2ps.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fax2ps.dir/fax2ps.c.s"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/tools && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/tools/fax2ps.c -o CMakeFiles/fax2ps.dir/fax2ps.c.s

# Object files for target fax2ps
fax2ps_OBJECTS = \
"CMakeFiles/fax2ps.dir/fax2ps.c.o"

# External object files for target fax2ps
fax2ps_EXTERNAL_OBJECTS =

tools/fax2ps: tools/CMakeFiles/fax2ps.dir/fax2ps.c.o
tools/fax2ps: tools/CMakeFiles/fax2ps.dir/build.make
tools/fax2ps: libtiff/libtiff.5.3.0.dylib
tools/fax2ps: port/libport.a
tools/fax2ps: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libm.tbd
tools/fax2ps: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libz.tbd
tools/fax2ps: /opt/homebrew/lib/libjpeg.dylib
tools/fax2ps: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/liblzma.tbd
tools/fax2ps: tools/CMakeFiles/fax2ps.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable fax2ps"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fax2ps.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/fax2ps.dir/build: tools/fax2ps
.PHONY : tools/CMakeFiles/fax2ps.dir/build

tools/CMakeFiles/fax2ps.dir/clean:
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/tools && $(CMAKE_COMMAND) -P CMakeFiles/fax2ps.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/fax2ps.dir/clean

tools/CMakeFiles/fax2ps.dir/depend:
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/tools /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/tools /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/tools/CMakeFiles/fax2ps.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/fax2ps.dir/depend

