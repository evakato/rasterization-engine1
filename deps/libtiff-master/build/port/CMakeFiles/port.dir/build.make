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
CMAKE_SOURCE_DIR = /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build

# Include any dependencies generated for this target.
include port/CMakeFiles/port.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include port/CMakeFiles/port.dir/compiler_depend.make

# Include the progress variables for this target.
include port/CMakeFiles/port.dir/progress.make

# Include the compile flags for this target's objects.
include port/CMakeFiles/port.dir/flags.make

port/CMakeFiles/port.dir/dummy.c.o: port/CMakeFiles/port.dir/flags.make
port/CMakeFiles/port.dir/dummy.c.o: /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/port/dummy.c
port/CMakeFiles/port.dir/dummy.c.o: port/CMakeFiles/port.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object port/CMakeFiles/port.dir/dummy.c.o"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/port && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT port/CMakeFiles/port.dir/dummy.c.o -MF CMakeFiles/port.dir/dummy.c.o.d -o CMakeFiles/port.dir/dummy.c.o -c /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/port/dummy.c

port/CMakeFiles/port.dir/dummy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/port.dir/dummy.c.i"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/port && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/port/dummy.c > CMakeFiles/port.dir/dummy.c.i

port/CMakeFiles/port.dir/dummy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/port.dir/dummy.c.s"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/port && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/port/dummy.c -o CMakeFiles/port.dir/dummy.c.s

# Object files for target port
port_OBJECTS = \
"CMakeFiles/port.dir/dummy.c.o"

# External object files for target port
port_EXTERNAL_OBJECTS =

port/libport.a: port/CMakeFiles/port.dir/dummy.c.o
port/libport.a: port/CMakeFiles/port.dir/build.make
port/libport.a: port/CMakeFiles/port.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libport.a"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/port && $(CMAKE_COMMAND) -P CMakeFiles/port.dir/cmake_clean_target.cmake
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/port && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/port.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
port/CMakeFiles/port.dir/build: port/libport.a
.PHONY : port/CMakeFiles/port.dir/build

port/CMakeFiles/port.dir/clean:
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/port && $(CMAKE_COMMAND) -P CMakeFiles/port.dir/cmake_clean.cmake
.PHONY : port/CMakeFiles/port.dir/clean

port/CMakeFiles/port.dir/depend:
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/port /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/port /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/port/CMakeFiles/port.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : port/CMakeFiles/port.dir/depend

