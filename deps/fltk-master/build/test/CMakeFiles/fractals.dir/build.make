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
include test/CMakeFiles/fractals.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/fractals.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/fractals.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/fractals.dir/flags.make

test/CMakeFiles/fractals.dir/fractals.cxx.o: test/CMakeFiles/fractals.dir/flags.make
test/CMakeFiles/fractals.dir/fractals.cxx.o: /Users/evakato/desktop/fltk-master/test/fractals.cxx
test/CMakeFiles/fractals.dir/fractals.cxx.o: test/CMakeFiles/fractals.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/fractals.dir/fractals.cxx.o"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/fractals.dir/fractals.cxx.o -MF CMakeFiles/fractals.dir/fractals.cxx.o.d -o CMakeFiles/fractals.dir/fractals.cxx.o -c /Users/evakato/desktop/fltk-master/test/fractals.cxx

test/CMakeFiles/fractals.dir/fractals.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fractals.dir/fractals.cxx.i"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/evakato/desktop/fltk-master/test/fractals.cxx > CMakeFiles/fractals.dir/fractals.cxx.i

test/CMakeFiles/fractals.dir/fractals.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fractals.dir/fractals.cxx.s"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/evakato/desktop/fltk-master/test/fractals.cxx -o CMakeFiles/fractals.dir/fractals.cxx.s

test/CMakeFiles/fractals.dir/fracviewer.cxx.o: test/CMakeFiles/fractals.dir/flags.make
test/CMakeFiles/fractals.dir/fracviewer.cxx.o: /Users/evakato/desktop/fltk-master/test/fracviewer.cxx
test/CMakeFiles/fractals.dir/fracviewer.cxx.o: test/CMakeFiles/fractals.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/fractals.dir/fracviewer.cxx.o"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/fractals.dir/fracviewer.cxx.o -MF CMakeFiles/fractals.dir/fracviewer.cxx.o.d -o CMakeFiles/fractals.dir/fracviewer.cxx.o -c /Users/evakato/desktop/fltk-master/test/fracviewer.cxx

test/CMakeFiles/fractals.dir/fracviewer.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fractals.dir/fracviewer.cxx.i"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/evakato/desktop/fltk-master/test/fracviewer.cxx > CMakeFiles/fractals.dir/fracviewer.cxx.i

test/CMakeFiles/fractals.dir/fracviewer.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fractals.dir/fracviewer.cxx.s"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/evakato/desktop/fltk-master/test/fracviewer.cxx -o CMakeFiles/fractals.dir/fracviewer.cxx.s

# Object files for target fractals
fractals_OBJECTS = \
"CMakeFiles/fractals.dir/fractals.cxx.o" \
"CMakeFiles/fractals.dir/fracviewer.cxx.o"

# External object files for target fractals
fractals_EXTERNAL_OBJECTS =

bin/test/fractals.app/Contents/MacOS/fractals: test/CMakeFiles/fractals.dir/fractals.cxx.o
bin/test/fractals.app/Contents/MacOS/fractals: test/CMakeFiles/fractals.dir/fracviewer.cxx.o
bin/test/fractals.app/Contents/MacOS/fractals: test/CMakeFiles/fractals.dir/build.make
bin/test/fractals.app/Contents/MacOS/fractals: lib/libfltk_gl.a
bin/test/fractals.app/Contents/MacOS/fractals: lib/libfltk.a
bin/test/fractals.app/Contents/MacOS/fractals: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libdl.tbd
bin/test/fractals.app/Contents/MacOS/fractals: test/CMakeFiles/fractals.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../bin/test/fractals.app/Contents/MacOS/fractals"
	cd /Users/evakato/desktop/fltk-master/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fractals.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/evakato/desktop/fltk-master/build/test && cp /Users/evakato/desktop/fltk-master/CMake/macOS-bundle-wrapper.in /Users/evakato/desktop/fltk-master/build/test/../bin/test/./fractals
	cd /Users/evakato/desktop/fltk-master/build/test && chmod u+x,g+x,o+x /Users/evakato/desktop/fltk-master/build/test/../bin/test/./fractals

# Rule to build all files generated by this target.
test/CMakeFiles/fractals.dir/build: bin/test/fractals.app/Contents/MacOS/fractals
.PHONY : test/CMakeFiles/fractals.dir/build

test/CMakeFiles/fractals.dir/clean:
	cd /Users/evakato/desktop/fltk-master/build/test && $(CMAKE_COMMAND) -P CMakeFiles/fractals.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/fractals.dir/clean

test/CMakeFiles/fractals.dir/depend:
	cd /Users/evakato/desktop/fltk-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/evakato/desktop/fltk-master /Users/evakato/desktop/fltk-master/test /Users/evakato/desktop/fltk-master/build /Users/evakato/desktop/fltk-master/build/test /Users/evakato/desktop/fltk-master/build/test/CMakeFiles/fractals.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/fractals.dir/depend

