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
include test/CMakeFiles/icon.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/icon.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/icon.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/icon.dir/flags.make

test/CMakeFiles/icon.dir/icon.cxx.o: test/CMakeFiles/icon.dir/flags.make
test/CMakeFiles/icon.dir/icon.cxx.o: /Users/evakato/desktop/fltk-master/test/icon.cxx
test/CMakeFiles/icon.dir/icon.cxx.o: test/CMakeFiles/icon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/icon.dir/icon.cxx.o"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/icon.dir/icon.cxx.o -MF CMakeFiles/icon.dir/icon.cxx.o.d -o CMakeFiles/icon.dir/icon.cxx.o -c /Users/evakato/desktop/fltk-master/test/icon.cxx

test/CMakeFiles/icon.dir/icon.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/icon.dir/icon.cxx.i"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/evakato/desktop/fltk-master/test/icon.cxx > CMakeFiles/icon.dir/icon.cxx.i

test/CMakeFiles/icon.dir/icon.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/icon.dir/icon.cxx.s"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/evakato/desktop/fltk-master/test/icon.cxx -o CMakeFiles/icon.dir/icon.cxx.s

# Object files for target icon
icon_OBJECTS = \
"CMakeFiles/icon.dir/icon.cxx.o"

# External object files for target icon
icon_EXTERNAL_OBJECTS =

bin/test/icon.app/Contents/MacOS/icon: test/CMakeFiles/icon.dir/icon.cxx.o
bin/test/icon.app/Contents/MacOS/icon: test/CMakeFiles/icon.dir/build.make
bin/test/icon.app/Contents/MacOS/icon: lib/libfltk.a
bin/test/icon.app/Contents/MacOS/icon: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libdl.tbd
bin/test/icon.app/Contents/MacOS/icon: test/CMakeFiles/icon.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/test/icon.app/Contents/MacOS/icon"
	cd /Users/evakato/desktop/fltk-master/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/icon.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/evakato/desktop/fltk-master/build/test && cp /Users/evakato/desktop/fltk-master/CMake/macOS-bundle-wrapper.in /Users/evakato/desktop/fltk-master/build/test/../bin/test/./icon
	cd /Users/evakato/desktop/fltk-master/build/test && chmod u+x,g+x,o+x /Users/evakato/desktop/fltk-master/build/test/../bin/test/./icon

# Rule to build all files generated by this target.
test/CMakeFiles/icon.dir/build: bin/test/icon.app/Contents/MacOS/icon
.PHONY : test/CMakeFiles/icon.dir/build

test/CMakeFiles/icon.dir/clean:
	cd /Users/evakato/desktop/fltk-master/build/test && $(CMAKE_COMMAND) -P CMakeFiles/icon.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/icon.dir/clean

test/CMakeFiles/icon.dir/depend:
	cd /Users/evakato/desktop/fltk-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/evakato/desktop/fltk-master /Users/evakato/desktop/fltk-master/test /Users/evakato/desktop/fltk-master/build /Users/evakato/desktop/fltk-master/build/test /Users/evakato/desktop/fltk-master/build/test/CMakeFiles/icon.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/icon.dir/depend

