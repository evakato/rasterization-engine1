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
include contrib/addtiffo/CMakeFiles/addtiffo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include contrib/addtiffo/CMakeFiles/addtiffo.dir/compiler_depend.make

# Include the progress variables for this target.
include contrib/addtiffo/CMakeFiles/addtiffo.dir/progress.make

# Include the compile flags for this target's objects.
include contrib/addtiffo/CMakeFiles/addtiffo.dir/flags.make

contrib/addtiffo/CMakeFiles/addtiffo.dir/addtiffo.c.o: contrib/addtiffo/CMakeFiles/addtiffo.dir/flags.make
contrib/addtiffo/CMakeFiles/addtiffo.dir/addtiffo.c.o: /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/addtiffo/addtiffo.c
contrib/addtiffo/CMakeFiles/addtiffo.dir/addtiffo.c.o: contrib/addtiffo/CMakeFiles/addtiffo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object contrib/addtiffo/CMakeFiles/addtiffo.dir/addtiffo.c.o"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/addtiffo && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT contrib/addtiffo/CMakeFiles/addtiffo.dir/addtiffo.c.o -MF CMakeFiles/addtiffo.dir/addtiffo.c.o.d -o CMakeFiles/addtiffo.dir/addtiffo.c.o -c /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/addtiffo/addtiffo.c

contrib/addtiffo/CMakeFiles/addtiffo.dir/addtiffo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/addtiffo.dir/addtiffo.c.i"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/addtiffo && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/addtiffo/addtiffo.c > CMakeFiles/addtiffo.dir/addtiffo.c.i

contrib/addtiffo/CMakeFiles/addtiffo.dir/addtiffo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/addtiffo.dir/addtiffo.c.s"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/addtiffo && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/addtiffo/addtiffo.c -o CMakeFiles/addtiffo.dir/addtiffo.c.s

contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_overview.c.o: contrib/addtiffo/CMakeFiles/addtiffo.dir/flags.make
contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_overview.c.o: /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/addtiffo/tif_overview.c
contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_overview.c.o: contrib/addtiffo/CMakeFiles/addtiffo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_overview.c.o"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/addtiffo && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_overview.c.o -MF CMakeFiles/addtiffo.dir/tif_overview.c.o.d -o CMakeFiles/addtiffo.dir/tif_overview.c.o -c /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/addtiffo/tif_overview.c

contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_overview.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/addtiffo.dir/tif_overview.c.i"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/addtiffo && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/addtiffo/tif_overview.c > CMakeFiles/addtiffo.dir/tif_overview.c.i

contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_overview.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/addtiffo.dir/tif_overview.c.s"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/addtiffo && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/addtiffo/tif_overview.c -o CMakeFiles/addtiffo.dir/tif_overview.c.s

contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_ovrcache.c.o: contrib/addtiffo/CMakeFiles/addtiffo.dir/flags.make
contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_ovrcache.c.o: /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/addtiffo/tif_ovrcache.c
contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_ovrcache.c.o: contrib/addtiffo/CMakeFiles/addtiffo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_ovrcache.c.o"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/addtiffo && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_ovrcache.c.o -MF CMakeFiles/addtiffo.dir/tif_ovrcache.c.o.d -o CMakeFiles/addtiffo.dir/tif_ovrcache.c.o -c /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/addtiffo/tif_ovrcache.c

contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_ovrcache.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/addtiffo.dir/tif_ovrcache.c.i"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/addtiffo && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/addtiffo/tif_ovrcache.c > CMakeFiles/addtiffo.dir/tif_ovrcache.c.i

contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_ovrcache.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/addtiffo.dir/tif_ovrcache.c.s"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/addtiffo && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/addtiffo/tif_ovrcache.c -o CMakeFiles/addtiffo.dir/tif_ovrcache.c.s

# Object files for target addtiffo
addtiffo_OBJECTS = \
"CMakeFiles/addtiffo.dir/addtiffo.c.o" \
"CMakeFiles/addtiffo.dir/tif_overview.c.o" \
"CMakeFiles/addtiffo.dir/tif_ovrcache.c.o"

# External object files for target addtiffo
addtiffo_EXTERNAL_OBJECTS =

contrib/addtiffo/addtiffo: contrib/addtiffo/CMakeFiles/addtiffo.dir/addtiffo.c.o
contrib/addtiffo/addtiffo: contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_overview.c.o
contrib/addtiffo/addtiffo: contrib/addtiffo/CMakeFiles/addtiffo.dir/tif_ovrcache.c.o
contrib/addtiffo/addtiffo: contrib/addtiffo/CMakeFiles/addtiffo.dir/build.make
contrib/addtiffo/addtiffo: libtiff/libtiff.5.3.0.dylib
contrib/addtiffo/addtiffo: port/libport.a
contrib/addtiffo/addtiffo: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libm.tbd
contrib/addtiffo/addtiffo: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libz.tbd
contrib/addtiffo/addtiffo: /opt/homebrew/lib/libjpeg.dylib
contrib/addtiffo/addtiffo: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/liblzma.tbd
contrib/addtiffo/addtiffo: contrib/addtiffo/CMakeFiles/addtiffo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable addtiffo"
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/addtiffo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/addtiffo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contrib/addtiffo/CMakeFiles/addtiffo.dir/build: contrib/addtiffo/addtiffo
.PHONY : contrib/addtiffo/CMakeFiles/addtiffo.dir/build

contrib/addtiffo/CMakeFiles/addtiffo.dir/clean:
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/addtiffo && $(CMAKE_COMMAND) -P CMakeFiles/addtiffo.dir/cmake_clean.cmake
.PHONY : contrib/addtiffo/CMakeFiles/addtiffo.dir/clean

contrib/addtiffo/CMakeFiles/addtiffo.dir/depend:
	cd /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/contrib/addtiffo /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/addtiffo /Users/evakato/CLionProjects/CS334_beginner/deps/libtiff-master/build/contrib/addtiffo/CMakeFiles/addtiffo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contrib/addtiffo/CMakeFiles/addtiffo.dir/depend

