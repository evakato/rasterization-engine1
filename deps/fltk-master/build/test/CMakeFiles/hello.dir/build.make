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
include test/CMakeFiles/hello.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/hello.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/hello.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/hello.dir/flags.make

test/CMakeFiles/hello.dir/hello.cxx.o: test/CMakeFiles/hello.dir/flags.make
test/CMakeFiles/hello.dir/hello.cxx.o: /Users/evakato/desktop/fltk-master/test/hello.cxx
test/CMakeFiles/hello.dir/hello.cxx.o: test/CMakeFiles/hello.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/hello.dir/hello.cxx.o"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/hello.dir/hello.cxx.o -MF CMakeFiles/hello.dir/hello.cxx.o.d -o CMakeFiles/hello.dir/hello.cxx.o -c /Users/evakato/desktop/fltk-master/test/hello.cxx

test/CMakeFiles/hello.dir/hello.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello.dir/hello.cxx.i"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/evakato/desktop/fltk-master/test/hello.cxx > CMakeFiles/hello.dir/hello.cxx.i

test/CMakeFiles/hello.dir/hello.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello.dir/hello.cxx.s"
	cd /Users/evakato/desktop/fltk-master/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/evakato/desktop/fltk-master/test/hello.cxx -o CMakeFiles/hello.dir/hello.cxx.s

# Object files for target hello
hello_OBJECTS = \
"CMakeFiles/hello.dir/hello.cxx.o"

# External object files for target hello
hello_EXTERNAL_OBJECTS =

bin/test/hello.app/Contents/MacOS/hello: test/CMakeFiles/hello.dir/hello.cxx.o
bin/test/hello.app/Contents/MacOS/hello: test/CMakeFiles/hello.dir/build.make
bin/test/hello.app/Contents/MacOS/hello: lib/libfltk.a
bin/test/hello.app/Contents/MacOS/hello: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libdl.tbd
bin/test/hello.app/Contents/MacOS/hello: test/CMakeFiles/hello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/test/hello.app/Contents/MacOS/hello"
	cd /Users/evakato/desktop/fltk-master/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/evakato/desktop/fltk-master/build/test && cp /Users/evakato/desktop/fltk-master/CMake/macOS-bundle-wrapper.in /Users/evakato/desktop/fltk-master/build/test/../bin/test/./hello
	cd /Users/evakato/desktop/fltk-master/build/test && chmod u+x,g+x,o+x /Users/evakato/desktop/fltk-master/build/test/../bin/test/./hello

# Rule to build all files generated by this target.
test/CMakeFiles/hello.dir/build: bin/test/hello.app/Contents/MacOS/hello
.PHONY : test/CMakeFiles/hello.dir/build

test/CMakeFiles/hello.dir/clean:
	cd /Users/evakato/desktop/fltk-master/build/test && $(CMAKE_COMMAND) -P CMakeFiles/hello.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/hello.dir/clean

test/CMakeFiles/hello.dir/depend:
	cd /Users/evakato/desktop/fltk-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/evakato/desktop/fltk-master /Users/evakato/desktop/fltk-master/test /Users/evakato/desktop/fltk-master/build /Users/evakato/desktop/fltk-master/build/test /Users/evakato/desktop/fltk-master/build/test/CMakeFiles/hello.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/hello.dir/depend
