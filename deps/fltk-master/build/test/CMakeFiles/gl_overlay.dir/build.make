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
include test/CMakeFiles/gl_overlay.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/gl_overlay.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/gl_overlay.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/gl_overlay.dir/flags.make

test/CMakeFiles/gl_overlay.dir/gl_overlay.cxx.o: test/CMakeFiles/gl_overlay.dir/flags.make
test/CMakeFiles/gl_overlay.dir/gl_overlay.cxx.o: /Users/evakato/desktop/fltk-master/test/gl_overlay.cxx
test/CMakeFiles/gl_overlay.dir/gl_overlay.cxx.o: test/CMakeFiles/gl_overlay.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/gl_overlay.dir/gl_overlay.cxx.o"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/gl_overlay.dir/gl_overlay.cxx.o -MF CMakeFiles/gl_overlay.dir/gl_overlay.cxx.o.d -o CMakeFiles/gl_overlay.dir/gl_overlay.cxx.o -c /Users/evakato/desktop/fltk-master/test/gl_overlay.cxx

test/CMakeFiles/gl_overlay.dir/gl_overlay.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gl_overlay.dir/gl_overlay.cxx.i"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/evakato/desktop/fltk-master/test/gl_overlay.cxx > CMakeFiles/gl_overlay.dir/gl_overlay.cxx.i

test/CMakeFiles/gl_overlay.dir/gl_overlay.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gl_overlay.dir/gl_overlay.cxx.s"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/evakato/desktop/fltk-master/test/gl_overlay.cxx -o CMakeFiles/gl_overlay.dir/gl_overlay.cxx.s

# Object files for target gl_overlay
gl_overlay_OBJECTS = \
"CMakeFiles/gl_overlay.dir/gl_overlay.cxx.o"

# External object files for target gl_overlay
gl_overlay_EXTERNAL_OBJECTS =

bin/test/gl_overlay.app/Contents/MacOS/gl_overlay: test/CMakeFiles/gl_overlay.dir/gl_overlay.cxx.o
bin/test/gl_overlay.app/Contents/MacOS/gl_overlay: test/CMakeFiles/gl_overlay.dir/build.make
bin/test/gl_overlay.app/Contents/MacOS/gl_overlay: lib/libfltk_gl.a
bin/test/gl_overlay.app/Contents/MacOS/gl_overlay: lib/libfltk.a
bin/test/gl_overlay.app/Contents/MacOS/gl_overlay: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libdl.tbd
bin/test/gl_overlay.app/Contents/MacOS/gl_overlay: test/CMakeFiles/gl_overlay.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/test/gl_overlay.app/Contents/MacOS/gl_overlay"
	cd /Users/evakato/desktop/fltk-master/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gl_overlay.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/evakato/desktop/fltk-master/build/test && cp /Users/evakato/desktop/fltk-master/CMake/macOS-bundle-wrapper.in /Users/evakato/desktop/fltk-master/build/test/../bin/test/./gl_overlay
	cd /Users/evakato/desktop/fltk-master/build/test && chmod u+x,g+x,o+x /Users/evakato/desktop/fltk-master/build/test/../bin/test/./gl_overlay

# Rule to build all files generated by this target.
test/CMakeFiles/gl_overlay.dir/build: bin/test/gl_overlay.app/Contents/MacOS/gl_overlay
.PHONY : test/CMakeFiles/gl_overlay.dir/build

test/CMakeFiles/gl_overlay.dir/clean:
	cd /Users/evakato/desktop/fltk-master/build/test && $(CMAKE_COMMAND) -P CMakeFiles/gl_overlay.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/gl_overlay.dir/clean

test/CMakeFiles/gl_overlay.dir/depend:
	cd /Users/evakato/desktop/fltk-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/evakato/desktop/fltk-master /Users/evakato/desktop/fltk-master/test /Users/evakato/desktop/fltk-master/build /Users/evakato/desktop/fltk-master/build/test /Users/evakato/desktop/fltk-master/build/test/CMakeFiles/gl_overlay.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/gl_overlay.dir/depend

