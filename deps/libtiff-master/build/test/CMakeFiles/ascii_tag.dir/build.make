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
include test/CMakeFiles/ascii_tag.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/ascii_tag.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/ascii_tag.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/ascii_tag.dir/flags.make

test/CMakeFiles/ascii_tag.dir/ascii_tag.c.o: test/CMakeFiles/ascii_tag.dir/flags.make
test/CMakeFiles/ascii_tag.dir/ascii_tag.c.o: /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/test/ascii_tag.c
test/CMakeFiles/ascii_tag.dir/ascii_tag.c.o: test/CMakeFiles/ascii_tag.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/ascii_tag.dir/ascii_tag.c.o"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/test && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/ascii_tag.dir/ascii_tag.c.o -MF CMakeFiles/ascii_tag.dir/ascii_tag.c.o.d -o CMakeFiles/ascii_tag.dir/ascii_tag.c.o -c /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/test/ascii_tag.c

test/CMakeFiles/ascii_tag.dir/ascii_tag.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ascii_tag.dir/ascii_tag.c.i"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/test && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/test/ascii_tag.c > CMakeFiles/ascii_tag.dir/ascii_tag.c.i

test/CMakeFiles/ascii_tag.dir/ascii_tag.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ascii_tag.dir/ascii_tag.c.s"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/test && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/test/ascii_tag.c -o CMakeFiles/ascii_tag.dir/ascii_tag.c.s

# Object files for target ascii_tag
ascii_tag_OBJECTS = \
"CMakeFiles/ascii_tag.dir/ascii_tag.c.o"

# External object files for target ascii_tag
ascii_tag_EXTERNAL_OBJECTS =

test/ascii_tag: test/CMakeFiles/ascii_tag.dir/ascii_tag.c.o
test/ascii_tag: test/CMakeFiles/ascii_tag.dir/build.make
test/ascii_tag: libtiff/libtiff.5.3.0.dylib
test/ascii_tag: port/libport.a
test/ascii_tag: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libm.tbd
test/ascii_tag: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libz.tbd
test/ascii_tag: /opt/homebrew/lib/libjpeg.dylib
test/ascii_tag: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/liblzma.tbd
test/ascii_tag: test/CMakeFiles/ascii_tag.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ascii_tag"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ascii_tag.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/ascii_tag.dir/build: test/ascii_tag
.PHONY : test/CMakeFiles/ascii_tag.dir/build

test/CMakeFiles/ascii_tag.dir/clean:
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/test && $(CMAKE_COMMAND) -P CMakeFiles/ascii_tag.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/ascii_tag.dir/clean

test/CMakeFiles/ascii_tag.dir/depend:
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/test /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/test /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/test/CMakeFiles/ascii_tag.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/ascii_tag.dir/depend

