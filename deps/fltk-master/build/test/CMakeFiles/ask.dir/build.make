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
include test/CMakeFiles/ask.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/ask.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/ask.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/ask.dir/flags.make

test/CMakeFiles/ask.dir/ask.cxx.o: test/CMakeFiles/ask.dir/flags.make
test/CMakeFiles/ask.dir/ask.cxx.o: /Users/evakato/desktop/fltk-master/test/ask.cxx
test/CMakeFiles/ask.dir/ask.cxx.o: test/CMakeFiles/ask.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/ask.dir/ask.cxx.o"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/ask.dir/ask.cxx.o -MF CMakeFiles/ask.dir/ask.cxx.o.d -o CMakeFiles/ask.dir/ask.cxx.o -c /Users/evakato/desktop/fltk-master/test/ask.cxx

test/CMakeFiles/ask.dir/ask.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ask.dir/ask.cxx.i"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/evakato/desktop/fltk-master/test/ask.cxx > CMakeFiles/ask.dir/ask.cxx.i

test/CMakeFiles/ask.dir/ask.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ask.dir/ask.cxx.s"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/evakato/desktop/fltk-master/test/ask.cxx -o CMakeFiles/ask.dir/ask.cxx.s

# Object files for target ask
ask_OBJECTS = \
"CMakeFiles/ask.dir/ask.cxx.o"

# External object files for target ask
ask_EXTERNAL_OBJECTS =

bin/test/ask.app/Contents/MacOS/ask: test/CMakeFiles/ask.dir/ask.cxx.o
bin/test/ask.app/Contents/MacOS/ask: test/CMakeFiles/ask.dir/build.make
bin/test/ask.app/Contents/MacOS/ask: lib/libfltk.a
bin/test/ask.app/Contents/MacOS/ask: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libdl.tbd
bin/test/ask.app/Contents/MacOS/ask: test/CMakeFiles/ask.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/test/ask.app/Contents/MacOS/ask"
	cd /Users/evakato/desktop/fltk-master/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ask.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/evakato/desktop/fltk-master/build/test && cp /Users/evakato/desktop/fltk-master/CMake/macOS-bundle-wrapper.in /Users/evakato/desktop/fltk-master/build/test/../bin/test/./ask
	cd /Users/evakato/desktop/fltk-master/build/test && chmod u+x,g+x,o+x /Users/evakato/desktop/fltk-master/build/test/../bin/test/./ask

# Rule to build all files generated by this target.
test/CMakeFiles/ask.dir/build: bin/test/ask.app/Contents/MacOS/ask
.PHONY : test/CMakeFiles/ask.dir/build

test/CMakeFiles/ask.dir/clean:
	cd /Users/evakato/desktop/fltk-master/build/test && $(CMAKE_COMMAND) -P CMakeFiles/ask.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/ask.dir/clean

test/CMakeFiles/ask.dir/depend:
	cd /Users/evakato/desktop/fltk-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/evakato/desktop/fltk-master /Users/evakato/desktop/fltk-master/test /Users/evakato/desktop/fltk-master/build /Users/evakato/desktop/fltk-master/build/test /Users/evakato/desktop/fltk-master/build/test/CMakeFiles/ask.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/ask.dir/depend

