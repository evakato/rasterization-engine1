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
include contrib/iptcutil/CMakeFiles/iptcutil.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include contrib/iptcutil/CMakeFiles/iptcutil.dir/compiler_depend.make

# Include the progress variables for this target.
include contrib/iptcutil/CMakeFiles/iptcutil.dir/progress.make

# Include the compile flags for this target's objects.
include contrib/iptcutil/CMakeFiles/iptcutil.dir/flags.make

contrib/iptcutil/CMakeFiles/iptcutil.dir/iptcutil.c.o: contrib/iptcutil/CMakeFiles/iptcutil.dir/flags.make
contrib/iptcutil/CMakeFiles/iptcutil.dir/iptcutil.c.o: /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/iptcutil/iptcutil.c
contrib/iptcutil/CMakeFiles/iptcutil.dir/iptcutil.c.o: contrib/iptcutil/CMakeFiles/iptcutil.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object contrib/iptcutil/CMakeFiles/iptcutil.dir/iptcutil.c.o"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/iptcutil && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT contrib/iptcutil/CMakeFiles/iptcutil.dir/iptcutil.c.o -MF CMakeFiles/iptcutil.dir/iptcutil.c.o.d -o CMakeFiles/iptcutil.dir/iptcutil.c.o -c /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/iptcutil/iptcutil.c

contrib/iptcutil/CMakeFiles/iptcutil.dir/iptcutil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iptcutil.dir/iptcutil.c.i"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/iptcutil && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/iptcutil/iptcutil.c > CMakeFiles/iptcutil.dir/iptcutil.c.i

contrib/iptcutil/CMakeFiles/iptcutil.dir/iptcutil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iptcutil.dir/iptcutil.c.s"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/iptcutil && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/iptcutil/iptcutil.c -o CMakeFiles/iptcutil.dir/iptcutil.c.s

# Object files for target iptcutil
iptcutil_OBJECTS = \
"CMakeFiles/iptcutil.dir/iptcutil.c.o"

# External object files for target iptcutil
iptcutil_EXTERNAL_OBJECTS =

contrib/iptcutil/iptcutil: contrib/iptcutil/CMakeFiles/iptcutil.dir/iptcutil.c.o
contrib/iptcutil/iptcutil: contrib/iptcutil/CMakeFiles/iptcutil.dir/build.make
contrib/iptcutil/iptcutil: libtiff/libtiff.5.3.0.dylib
contrib/iptcutil/iptcutil: port/libport.a
contrib/iptcutil/iptcutil: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libm.tbd
contrib/iptcutil/iptcutil: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libz.tbd
contrib/iptcutil/iptcutil: /opt/homebrew/lib/libjpeg.dylib
contrib/iptcutil/iptcutil: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/liblzma.tbd
contrib/iptcutil/iptcutil: contrib/iptcutil/CMakeFiles/iptcutil.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable iptcutil"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/iptcutil && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/iptcutil.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contrib/iptcutil/CMakeFiles/iptcutil.dir/build: contrib/iptcutil/iptcutil
.PHONY : contrib/iptcutil/CMakeFiles/iptcutil.dir/build

contrib/iptcutil/CMakeFiles/iptcutil.dir/clean:
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/iptcutil && $(CMAKE_COMMAND) -P CMakeFiles/iptcutil.dir/cmake_clean.cmake
.PHONY : contrib/iptcutil/CMakeFiles/iptcutil.dir/clean

contrib/iptcutil/CMakeFiles/iptcutil.dir/depend:
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/iptcutil /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/iptcutil /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/iptcutil/CMakeFiles/iptcutil.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contrib/iptcutil/CMakeFiles/iptcutil.dir/depend

