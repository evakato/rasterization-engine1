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
include test/CMakeFiles/color_chooser.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/color_chooser.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/color_chooser.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/color_chooser.dir/flags.make

test/CMakeFiles/color_chooser.dir/color_chooser.cxx.o: test/CMakeFiles/color_chooser.dir/flags.make
test/CMakeFiles/color_chooser.dir/color_chooser.cxx.o: /Users/evakato/desktop/fltk-master/test/color_chooser.cxx
test/CMakeFiles/color_chooser.dir/color_chooser.cxx.o: test/CMakeFiles/color_chooser.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/color_chooser.dir/color_chooser.cxx.o"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/color_chooser.dir/color_chooser.cxx.o -MF CMakeFiles/color_chooser.dir/color_chooser.cxx.o.d -o CMakeFiles/color_chooser.dir/color_chooser.cxx.o -c /Users/evakato/desktop/fltk-master/test/color_chooser.cxx

test/CMakeFiles/color_chooser.dir/color_chooser.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/color_chooser.dir/color_chooser.cxx.i"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/evakato/desktop/fltk-master/test/color_chooser.cxx > CMakeFiles/color_chooser.dir/color_chooser.cxx.i

test/CMakeFiles/color_chooser.dir/color_chooser.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/color_chooser.dir/color_chooser.cxx.s"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/evakato/desktop/fltk-master/test/color_chooser.cxx -o CMakeFiles/color_chooser.dir/color_chooser.cxx.s

# Object files for target color_chooser
color_chooser_OBJECTS = \
"CMakeFiles/color_chooser.dir/color_chooser.cxx.o"

# External object files for target color_chooser
color_chooser_EXTERNAL_OBJECTS =

bin/test/color_chooser.app/Contents/MacOS/color_chooser: test/CMakeFiles/color_chooser.dir/color_chooser.cxx.o
bin/test/color_chooser.app/Contents/MacOS/color_chooser: test/CMakeFiles/color_chooser.dir/build.make
bin/test/color_chooser.app/Contents/MacOS/color_chooser: lib/libfltk.a
bin/test/color_chooser.app/Contents/MacOS/color_chooser: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libdl.tbd
bin/test/color_chooser.app/Contents/MacOS/color_chooser: test/CMakeFiles/color_chooser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/test/color_chooser.app/Contents/MacOS/color_chooser"
	cd /Users/evakato/desktop/fltk-master/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/color_chooser.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/evakato/desktop/fltk-master/build/test && cp /Users/evakato/desktop/fltk-master/CMake/macOS-bundle-wrapper.in /Users/evakato/desktop/fltk-master/build/test/../bin/test/./color_chooser
	cd /Users/evakato/desktop/fltk-master/build/test && chmod u+x,g+x,o+x /Users/evakato/desktop/fltk-master/build/test/../bin/test/./color_chooser

# Rule to build all files generated by this target.
test/CMakeFiles/color_chooser.dir/build: bin/test/color_chooser.app/Contents/MacOS/color_chooser
.PHONY : test/CMakeFiles/color_chooser.dir/build

test/CMakeFiles/color_chooser.dir/clean:
	cd /Users/evakato/desktop/fltk-master/build/test && $(CMAKE_COMMAND) -P CMakeFiles/color_chooser.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/color_chooser.dir/clean

test/CMakeFiles/color_chooser.dir/depend:
	cd /Users/evakato/desktop/fltk-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/evakato/desktop/fltk-master /Users/evakato/desktop/fltk-master/test /Users/evakato/desktop/fltk-master/build /Users/evakato/desktop/fltk-master/build/test /Users/evakato/desktop/fltk-master/build/test/CMakeFiles/color_chooser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/color_chooser.dir/depend

