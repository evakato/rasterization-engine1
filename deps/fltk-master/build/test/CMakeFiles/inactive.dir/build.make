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
include test/CMakeFiles/inactive.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/inactive.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/inactive.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/inactive.dir/flags.make

test/inactive.cxx: /Users/evakato/desktop/fltk-master/test/inactive.fl
test/inactive.cxx: /Users/evakato/desktop/fltk-master/test/inactive.fl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating inactive.cxx, inactive.h"
	cd /Users/evakato/desktop/fltk-master/build/test && ../bin/fluid.app/Contents/MacOS/fluid -c /Users/evakato/desktop/fltk-master/test/inactive.fl

test/inactive.h: test/inactive.cxx
	@$(CMAKE_COMMAND) -E touch_nocreate test/inactive.h

test/CMakeFiles/inactive.dir/inactive.cxx.o: test/CMakeFiles/inactive.dir/flags.make
test/CMakeFiles/inactive.dir/inactive.cxx.o: test/inactive.cxx
test/CMakeFiles/inactive.dir/inactive.cxx.o: test/CMakeFiles/inactive.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/inactive.dir/inactive.cxx.o"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/inactive.dir/inactive.cxx.o -MF CMakeFiles/inactive.dir/inactive.cxx.o.d -o CMakeFiles/inactive.dir/inactive.cxx.o -c /Users/evakato/desktop/fltk-master/build/test/inactive.cxx

test/CMakeFiles/inactive.dir/inactive.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/inactive.dir/inactive.cxx.i"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/evakato/desktop/fltk-master/build/test/inactive.cxx > CMakeFiles/inactive.dir/inactive.cxx.i

test/CMakeFiles/inactive.dir/inactive.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/inactive.dir/inactive.cxx.s"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/evakato/desktop/fltk-master/build/test/inactive.cxx -o CMakeFiles/inactive.dir/inactive.cxx.s

# Object files for target inactive
inactive_OBJECTS = \
"CMakeFiles/inactive.dir/inactive.cxx.o"

# External object files for target inactive
inactive_EXTERNAL_OBJECTS =

bin/test/inactive.app/Contents/MacOS/inactive: test/CMakeFiles/inactive.dir/inactive.cxx.o
bin/test/inactive.app/Contents/MacOS/inactive: test/CMakeFiles/inactive.dir/build.make
bin/test/inactive.app/Contents/MacOS/inactive: lib/libfltk.a
bin/test/inactive.app/Contents/MacOS/inactive: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libdl.tbd
bin/test/inactive.app/Contents/MacOS/inactive: test/CMakeFiles/inactive.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../bin/test/inactive.app/Contents/MacOS/inactive"
	cd /Users/evakato/desktop/fltk-master/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/inactive.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/evakato/desktop/fltk-master/build/test && cp /Users/evakato/desktop/fltk-master/CMake/macOS-bundle-wrapper.in /Users/evakato/desktop/fltk-master/build/test/../bin/test/./inactive
	cd /Users/evakato/desktop/fltk-master/build/test && chmod u+x,g+x,o+x /Users/evakato/desktop/fltk-master/build/test/../bin/test/./inactive

# Rule to build all files generated by this target.
test/CMakeFiles/inactive.dir/build: bin/test/inactive.app/Contents/MacOS/inactive
.PHONY : test/CMakeFiles/inactive.dir/build

test/CMakeFiles/inactive.dir/clean:
	cd /Users/evakato/desktop/fltk-master/build/test && $(CMAKE_COMMAND) -P CMakeFiles/inactive.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/inactive.dir/clean

test/CMakeFiles/inactive.dir/depend: test/inactive.cxx
test/CMakeFiles/inactive.dir/depend: test/inactive.h
	cd /Users/evakato/desktop/fltk-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/evakato/desktop/fltk-master /Users/evakato/desktop/fltk-master/test /Users/evakato/desktop/fltk-master/build /Users/evakato/desktop/fltk-master/build/test /Users/evakato/desktop/fltk-master/build/test/CMakeFiles/inactive.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/inactive.dir/depend
