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
include test/CMakeFiles/tiled_image.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/tiled_image.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/tiled_image.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/tiled_image.dir/flags.make

test/CMakeFiles/tiled_image.dir/tiled_image.cxx.o: test/CMakeFiles/tiled_image.dir/flags.make
test/CMakeFiles/tiled_image.dir/tiled_image.cxx.o: /Users/evakato/desktop/fltk-master/test/tiled_image.cxx
test/CMakeFiles/tiled_image.dir/tiled_image.cxx.o: test/CMakeFiles/tiled_image.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/tiled_image.dir/tiled_image.cxx.o"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/tiled_image.dir/tiled_image.cxx.o -MF CMakeFiles/tiled_image.dir/tiled_image.cxx.o.d -o CMakeFiles/tiled_image.dir/tiled_image.cxx.o -c /Users/evakato/desktop/fltk-master/test/tiled_image.cxx

test/CMakeFiles/tiled_image.dir/tiled_image.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tiled_image.dir/tiled_image.cxx.i"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/evakato/desktop/fltk-master/test/tiled_image.cxx > CMakeFiles/tiled_image.dir/tiled_image.cxx.i

test/CMakeFiles/tiled_image.dir/tiled_image.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tiled_image.dir/tiled_image.cxx.s"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/evakato/desktop/fltk-master/test/tiled_image.cxx -o CMakeFiles/tiled_image.dir/tiled_image.cxx.s

# Object files for target tiled_image
tiled_image_OBJECTS = \
"CMakeFiles/tiled_image.dir/tiled_image.cxx.o"

# External object files for target tiled_image
tiled_image_EXTERNAL_OBJECTS =

bin/test/tiled_image.app/Contents/MacOS/tiled_image: test/CMakeFiles/tiled_image.dir/tiled_image.cxx.o
bin/test/tiled_image.app/Contents/MacOS/tiled_image: test/CMakeFiles/tiled_image.dir/build.make
bin/test/tiled_image.app/Contents/MacOS/tiled_image: lib/libfltk.a
bin/test/tiled_image.app/Contents/MacOS/tiled_image: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libdl.tbd
bin/test/tiled_image.app/Contents/MacOS/tiled_image: test/CMakeFiles/tiled_image.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/test/tiled_image.app/Contents/MacOS/tiled_image"
	cd /Users/evakato/desktop/fltk-master/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tiled_image.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/evakato/desktop/fltk-master/build/test && cp /Users/evakato/desktop/fltk-master/CMake/macOS-bundle-wrapper.in /Users/evakato/desktop/fltk-master/build/test/../bin/test/./tiled_image
	cd /Users/evakato/desktop/fltk-master/build/test && chmod u+x,g+x,o+x /Users/evakato/desktop/fltk-master/build/test/../bin/test/./tiled_image

# Rule to build all files generated by this target.
test/CMakeFiles/tiled_image.dir/build: bin/test/tiled_image.app/Contents/MacOS/tiled_image
.PHONY : test/CMakeFiles/tiled_image.dir/build

test/CMakeFiles/tiled_image.dir/clean:
	cd /Users/evakato/desktop/fltk-master/build/test && $(CMAKE_COMMAND) -P CMakeFiles/tiled_image.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/tiled_image.dir/clean

test/CMakeFiles/tiled_image.dir/depend:
	cd /Users/evakato/desktop/fltk-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/evakato/desktop/fltk-master /Users/evakato/desktop/fltk-master/test /Users/evakato/desktop/fltk-master/build /Users/evakato/desktop/fltk-master/build/test /Users/evakato/desktop/fltk-master/build/test/CMakeFiles/tiled_image.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/tiled_image.dir/depend

