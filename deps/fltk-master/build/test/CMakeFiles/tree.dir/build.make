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
CMAKE_SOURCE_DIR = /Users/evakato/desktop/fltk-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/evakato/desktop/fltk-master/build

# Include any dependencies generated for this target.
include test/CMakeFiles/tree.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/tree.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/tree.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/tree.dir/flags.make

test/tree.cxx: /Users/evakato/desktop/fltk-master/test/tree.fl
test/tree.cxx: /Users/evakato/desktop/fltk-master/test/tree.fl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating tree.cxx, tree.h"
	cd /Users/evakato/desktop/fltk-master/build/test && ../bin/fluid.app/Contents/MacOS/fluid -c /Users/evakato/desktop/fltk-master/test/tree.fl

test/tree.h: test/tree.cxx
	@$(CMAKE_COMMAND) -E touch_nocreate test/tree.h

test/CMakeFiles/tree.dir/tree.cxx.o: test/CMakeFiles/tree.dir/flags.make
test/CMakeFiles/tree.dir/tree.cxx.o: test/tree.cxx
test/CMakeFiles/tree.dir/tree.cxx.o: test/CMakeFiles/tree.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/tree.dir/tree.cxx.o"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/tree.dir/tree.cxx.o -MF CMakeFiles/tree.dir/tree.cxx.o.d -o CMakeFiles/tree.dir/tree.cxx.o -c /Users/evakato/desktop/fltk-master/build/test/tree.cxx

test/CMakeFiles/tree.dir/tree.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tree.dir/tree.cxx.i"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/evakato/desktop/fltk-master/build/test/tree.cxx > CMakeFiles/tree.dir/tree.cxx.i

test/CMakeFiles/tree.dir/tree.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tree.dir/tree.cxx.s"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/evakato/desktop/fltk-master/build/test/tree.cxx -o CMakeFiles/tree.dir/tree.cxx.s

# Object files for target tree
tree_OBJECTS = \
"CMakeFiles/tree.dir/tree.cxx.o"

# External object files for target tree
tree_EXTERNAL_OBJECTS =

bin/test/tree.app/Contents/MacOS/tree: test/CMakeFiles/tree.dir/tree.cxx.o
bin/test/tree.app/Contents/MacOS/tree: test/CMakeFiles/tree.dir/build.make
bin/test/tree.app/Contents/MacOS/tree: lib/libfltk.a
bin/test/tree.app/Contents/MacOS/tree: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libdl.tbd
bin/test/tree.app/Contents/MacOS/tree: test/CMakeFiles/tree.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../bin/test/tree.app/Contents/MacOS/tree"
	cd /Users/evakato/desktop/fltk-master/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tree.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/evakato/desktop/fltk-master/build/test && cp /Users/evakato/desktop/fltk-master/CMake/macOS-bundle-wrapper.in /Users/evakato/desktop/fltk-master/build/test/../bin/test/./tree
	cd /Users/evakato/desktop/fltk-master/build/test && chmod u+x,g+x,o+x /Users/evakato/desktop/fltk-master/build/test/../bin/test/./tree

# Rule to build all files generated by this target.
test/CMakeFiles/tree.dir/build: bin/test/tree.app/Contents/MacOS/tree
.PHONY : test/CMakeFiles/tree.dir/build

test/CMakeFiles/tree.dir/clean:
	cd /Users/evakato/desktop/fltk-master/build/test && $(CMAKE_COMMAND) -P CMakeFiles/tree.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/tree.dir/clean

test/CMakeFiles/tree.dir/depend: test/tree.cxx
test/CMakeFiles/tree.dir/depend: test/tree.h
	cd /Users/evakato/desktop/fltk-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/evakato/desktop/fltk-master /Users/evakato/desktop/fltk-master/test /Users/evakato/desktop/fltk-master/build /Users/evakato/desktop/fltk-master/build/test /Users/evakato/desktop/fltk-master/build/test/CMakeFiles/tree.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/tree.dir/depend

