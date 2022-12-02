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
include test/CMakeFiles/checkers.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/checkers.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/checkers.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/checkers.dir/flags.make

test/checkers_pieces.cxx: /Users/evakato/desktop/fltk-master/test/checkers_pieces.fl
test/checkers_pieces.cxx: /Users/evakato/desktop/fltk-master/test/checkers_pieces.fl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating checkers_pieces.cxx, checkers_pieces.h"
	cd /Users/evakato/desktop/fltk-master/build/test && ../bin/fluid.app/Contents/MacOS/fluid -c /Users/evakato/desktop/fltk-master/test/checkers_pieces.fl

test/checkers_pieces.h: test/checkers_pieces.cxx
	@$(CMAKE_COMMAND) -E touch_nocreate test/checkers_pieces.h

bin/test/checkers.app/Contents/Resources/checkers.icns: /Users/evakato/desktop/fltk-master/test/mac-resources/checkers.icns
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content bin/test/checkers.app/Contents/Resources/checkers.icns"
	$(CMAKE_COMMAND) -E copy /Users/evakato/desktop/fltk-master/test/mac-resources/checkers.icns bin/test/checkers.app/Contents/Resources/checkers.icns

test/CMakeFiles/checkers.dir/checkers.cxx.o: test/CMakeFiles/checkers.dir/flags.make
test/CMakeFiles/checkers.dir/checkers.cxx.o: /Users/evakato/desktop/fltk-master/test/checkers.cxx
test/CMakeFiles/checkers.dir/checkers.cxx.o: test/CMakeFiles/checkers.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/checkers.dir/checkers.cxx.o"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/checkers.dir/checkers.cxx.o -MF CMakeFiles/checkers.dir/checkers.cxx.o.d -o CMakeFiles/checkers.dir/checkers.cxx.o -c /Users/evakato/desktop/fltk-master/test/checkers.cxx

test/CMakeFiles/checkers.dir/checkers.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/checkers.dir/checkers.cxx.i"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/evakato/desktop/fltk-master/test/checkers.cxx > CMakeFiles/checkers.dir/checkers.cxx.i

test/CMakeFiles/checkers.dir/checkers.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/checkers.dir/checkers.cxx.s"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/evakato/desktop/fltk-master/test/checkers.cxx -o CMakeFiles/checkers.dir/checkers.cxx.s

test/CMakeFiles/checkers.dir/checkers_pieces.cxx.o: test/CMakeFiles/checkers.dir/flags.make
test/CMakeFiles/checkers.dir/checkers_pieces.cxx.o: test/checkers_pieces.cxx
test/CMakeFiles/checkers.dir/checkers_pieces.cxx.o: test/CMakeFiles/checkers.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object test/CMakeFiles/checkers.dir/checkers_pieces.cxx.o"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/checkers.dir/checkers_pieces.cxx.o -MF CMakeFiles/checkers.dir/checkers_pieces.cxx.o.d -o CMakeFiles/checkers.dir/checkers_pieces.cxx.o -c /Users/evakato/desktop/fltk-master/build/test/checkers_pieces.cxx

test/CMakeFiles/checkers.dir/checkers_pieces.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/checkers.dir/checkers_pieces.cxx.i"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/evakato/desktop/fltk-master/build/test/checkers_pieces.cxx > CMakeFiles/checkers.dir/checkers_pieces.cxx.i

test/CMakeFiles/checkers.dir/checkers_pieces.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/checkers.dir/checkers_pieces.cxx.s"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/evakato/desktop/fltk-master/build/test/checkers_pieces.cxx -o CMakeFiles/checkers.dir/checkers_pieces.cxx.s

# Object files for target checkers
checkers_OBJECTS = \
"CMakeFiles/checkers.dir/checkers.cxx.o" \
"CMakeFiles/checkers.dir/checkers_pieces.cxx.o"

# External object files for target checkers
checkers_EXTERNAL_OBJECTS =

bin/test/checkers.app/Contents/MacOS/checkers: test/CMakeFiles/checkers.dir/checkers.cxx.o
bin/test/checkers.app/Contents/MacOS/checkers: test/CMakeFiles/checkers.dir/checkers_pieces.cxx.o
bin/test/checkers.app/Contents/MacOS/checkers: test/CMakeFiles/checkers.dir/build.make
bin/test/checkers.app/Contents/MacOS/checkers: lib/libfltk_images.a
bin/test/checkers.app/Contents/MacOS/checkers: lib/libfltk.a
bin/test/checkers.app/Contents/MacOS/checkers: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libdl.tbd
bin/test/checkers.app/Contents/MacOS/checkers: lib/libfltk_jpeg.a
bin/test/checkers.app/Contents/MacOS/checkers: lib/libfltk_png.a
bin/test/checkers.app/Contents/MacOS/checkers: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libz.tbd
bin/test/checkers.app/Contents/MacOS/checkers: test/CMakeFiles/checkers.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../bin/test/checkers.app/Contents/MacOS/checkers"
	cd /Users/evakato/desktop/fltk-master/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/checkers.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/evakato/desktop/fltk-master/build/test && cp /Users/evakato/desktop/fltk-master/CMake/macOS-bundle-wrapper.in /Users/evakato/desktop/fltk-master/build/test/../bin/test/./checkers
	cd /Users/evakato/desktop/fltk-master/build/test && chmod u+x,g+x,o+x /Users/evakato/desktop/fltk-master/build/test/../bin/test/./checkers

# Rule to build all files generated by this target.
test/CMakeFiles/checkers.dir/build: bin/test/checkers.app/Contents/MacOS/checkers
test/CMakeFiles/checkers.dir/build: bin/test/checkers.app/Contents/Resources/checkers.icns
.PHONY : test/CMakeFiles/checkers.dir/build

test/CMakeFiles/checkers.dir/clean:
	cd /Users/evakato/desktop/fltk-master/build/test && $(CMAKE_COMMAND) -P CMakeFiles/checkers.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/checkers.dir/clean

test/CMakeFiles/checkers.dir/depend: test/checkers_pieces.cxx
test/CMakeFiles/checkers.dir/depend: test/checkers_pieces.h
	cd /Users/evakato/desktop/fltk-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/evakato/desktop/fltk-master /Users/evakato/desktop/fltk-master/test /Users/evakato/desktop/fltk-master/build /Users/evakato/desktop/fltk-master/build/test /Users/evakato/desktop/fltk-master/build/test/CMakeFiles/checkers.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/checkers.dir/depend

