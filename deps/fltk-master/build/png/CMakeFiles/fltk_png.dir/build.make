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
include png/CMakeFiles/fltk_png.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include png/CMakeFiles/fltk_png.dir/compiler_depend.make

# Include the progress variables for this target.
include png/CMakeFiles/fltk_png.dir/progress.make

# Include the compile flags for this target's objects.
include png/CMakeFiles/fltk_png.dir/flags.make

png/CMakeFiles/fltk_png.dir/png.c.o: png/CMakeFiles/fltk_png.dir/flags.make
png/CMakeFiles/fltk_png.dir/png.c.o: /Users/evakato/desktop/fltk-master/png/png.c
png/CMakeFiles/fltk_png.dir/png.c.o: png/CMakeFiles/fltk_png.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object png/CMakeFiles/fltk_png.dir/png.c.o"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT png/CMakeFiles/fltk_png.dir/png.c.o -MF CMakeFiles/fltk_png.dir/png.c.o.d -o CMakeFiles/fltk_png.dir/png.c.o -c /Users/evakato/desktop/fltk-master/png/png.c

png/CMakeFiles/fltk_png.dir/png.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fltk_png.dir/png.c.i"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/desktop/fltk-master/png/png.c > CMakeFiles/fltk_png.dir/png.c.i

png/CMakeFiles/fltk_png.dir/png.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fltk_png.dir/png.c.s"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/desktop/fltk-master/png/png.c -o CMakeFiles/fltk_png.dir/png.c.s

png/CMakeFiles/fltk_png.dir/pngerror.c.o: png/CMakeFiles/fltk_png.dir/flags.make
png/CMakeFiles/fltk_png.dir/pngerror.c.o: /Users/evakato/desktop/fltk-master/png/pngerror.c
png/CMakeFiles/fltk_png.dir/pngerror.c.o: png/CMakeFiles/fltk_png.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object png/CMakeFiles/fltk_png.dir/pngerror.c.o"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT png/CMakeFiles/fltk_png.dir/pngerror.c.o -MF CMakeFiles/fltk_png.dir/pngerror.c.o.d -o CMakeFiles/fltk_png.dir/pngerror.c.o -c /Users/evakato/desktop/fltk-master/png/pngerror.c

png/CMakeFiles/fltk_png.dir/pngerror.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fltk_png.dir/pngerror.c.i"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/desktop/fltk-master/png/pngerror.c > CMakeFiles/fltk_png.dir/pngerror.c.i

png/CMakeFiles/fltk_png.dir/pngerror.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fltk_png.dir/pngerror.c.s"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/desktop/fltk-master/png/pngerror.c -o CMakeFiles/fltk_png.dir/pngerror.c.s

png/CMakeFiles/fltk_png.dir/pngget.c.o: png/CMakeFiles/fltk_png.dir/flags.make
png/CMakeFiles/fltk_png.dir/pngget.c.o: /Users/evakato/desktop/fltk-master/png/pngget.c
png/CMakeFiles/fltk_png.dir/pngget.c.o: png/CMakeFiles/fltk_png.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object png/CMakeFiles/fltk_png.dir/pngget.c.o"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT png/CMakeFiles/fltk_png.dir/pngget.c.o -MF CMakeFiles/fltk_png.dir/pngget.c.o.d -o CMakeFiles/fltk_png.dir/pngget.c.o -c /Users/evakato/desktop/fltk-master/png/pngget.c

png/CMakeFiles/fltk_png.dir/pngget.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fltk_png.dir/pngget.c.i"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/desktop/fltk-master/png/pngget.c > CMakeFiles/fltk_png.dir/pngget.c.i

png/CMakeFiles/fltk_png.dir/pngget.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fltk_png.dir/pngget.c.s"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/desktop/fltk-master/png/pngget.c -o CMakeFiles/fltk_png.dir/pngget.c.s

png/CMakeFiles/fltk_png.dir/pngmem.c.o: png/CMakeFiles/fltk_png.dir/flags.make
png/CMakeFiles/fltk_png.dir/pngmem.c.o: /Users/evakato/desktop/fltk-master/png/pngmem.c
png/CMakeFiles/fltk_png.dir/pngmem.c.o: png/CMakeFiles/fltk_png.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object png/CMakeFiles/fltk_png.dir/pngmem.c.o"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT png/CMakeFiles/fltk_png.dir/pngmem.c.o -MF CMakeFiles/fltk_png.dir/pngmem.c.o.d -o CMakeFiles/fltk_png.dir/pngmem.c.o -c /Users/evakato/desktop/fltk-master/png/pngmem.c

png/CMakeFiles/fltk_png.dir/pngmem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fltk_png.dir/pngmem.c.i"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/desktop/fltk-master/png/pngmem.c > CMakeFiles/fltk_png.dir/pngmem.c.i

png/CMakeFiles/fltk_png.dir/pngmem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fltk_png.dir/pngmem.c.s"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/desktop/fltk-master/png/pngmem.c -o CMakeFiles/fltk_png.dir/pngmem.c.s

png/CMakeFiles/fltk_png.dir/pngpread.c.o: png/CMakeFiles/fltk_png.dir/flags.make
png/CMakeFiles/fltk_png.dir/pngpread.c.o: /Users/evakato/desktop/fltk-master/png/pngpread.c
png/CMakeFiles/fltk_png.dir/pngpread.c.o: png/CMakeFiles/fltk_png.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object png/CMakeFiles/fltk_png.dir/pngpread.c.o"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT png/CMakeFiles/fltk_png.dir/pngpread.c.o -MF CMakeFiles/fltk_png.dir/pngpread.c.o.d -o CMakeFiles/fltk_png.dir/pngpread.c.o -c /Users/evakato/desktop/fltk-master/png/pngpread.c

png/CMakeFiles/fltk_png.dir/pngpread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fltk_png.dir/pngpread.c.i"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/desktop/fltk-master/png/pngpread.c > CMakeFiles/fltk_png.dir/pngpread.c.i

png/CMakeFiles/fltk_png.dir/pngpread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fltk_png.dir/pngpread.c.s"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/desktop/fltk-master/png/pngpread.c -o CMakeFiles/fltk_png.dir/pngpread.c.s

png/CMakeFiles/fltk_png.dir/pngread.c.o: png/CMakeFiles/fltk_png.dir/flags.make
png/CMakeFiles/fltk_png.dir/pngread.c.o: /Users/evakato/desktop/fltk-master/png/pngread.c
png/CMakeFiles/fltk_png.dir/pngread.c.o: png/CMakeFiles/fltk_png.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object png/CMakeFiles/fltk_png.dir/pngread.c.o"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT png/CMakeFiles/fltk_png.dir/pngread.c.o -MF CMakeFiles/fltk_png.dir/pngread.c.o.d -o CMakeFiles/fltk_png.dir/pngread.c.o -c /Users/evakato/desktop/fltk-master/png/pngread.c

png/CMakeFiles/fltk_png.dir/pngread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fltk_png.dir/pngread.c.i"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/desktop/fltk-master/png/pngread.c > CMakeFiles/fltk_png.dir/pngread.c.i

png/CMakeFiles/fltk_png.dir/pngread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fltk_png.dir/pngread.c.s"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/desktop/fltk-master/png/pngread.c -o CMakeFiles/fltk_png.dir/pngread.c.s

png/CMakeFiles/fltk_png.dir/pngrio.c.o: png/CMakeFiles/fltk_png.dir/flags.make
png/CMakeFiles/fltk_png.dir/pngrio.c.o: /Users/evakato/desktop/fltk-master/png/pngrio.c
png/CMakeFiles/fltk_png.dir/pngrio.c.o: png/CMakeFiles/fltk_png.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object png/CMakeFiles/fltk_png.dir/pngrio.c.o"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT png/CMakeFiles/fltk_png.dir/pngrio.c.o -MF CMakeFiles/fltk_png.dir/pngrio.c.o.d -o CMakeFiles/fltk_png.dir/pngrio.c.o -c /Users/evakato/desktop/fltk-master/png/pngrio.c

png/CMakeFiles/fltk_png.dir/pngrio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fltk_png.dir/pngrio.c.i"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/desktop/fltk-master/png/pngrio.c > CMakeFiles/fltk_png.dir/pngrio.c.i

png/CMakeFiles/fltk_png.dir/pngrio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fltk_png.dir/pngrio.c.s"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/desktop/fltk-master/png/pngrio.c -o CMakeFiles/fltk_png.dir/pngrio.c.s

png/CMakeFiles/fltk_png.dir/pngrtran.c.o: png/CMakeFiles/fltk_png.dir/flags.make
png/CMakeFiles/fltk_png.dir/pngrtran.c.o: /Users/evakato/desktop/fltk-master/png/pngrtran.c
png/CMakeFiles/fltk_png.dir/pngrtran.c.o: png/CMakeFiles/fltk_png.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object png/CMakeFiles/fltk_png.dir/pngrtran.c.o"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT png/CMakeFiles/fltk_png.dir/pngrtran.c.o -MF CMakeFiles/fltk_png.dir/pngrtran.c.o.d -o CMakeFiles/fltk_png.dir/pngrtran.c.o -c /Users/evakato/desktop/fltk-master/png/pngrtran.c

png/CMakeFiles/fltk_png.dir/pngrtran.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fltk_png.dir/pngrtran.c.i"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/desktop/fltk-master/png/pngrtran.c > CMakeFiles/fltk_png.dir/pngrtran.c.i

png/CMakeFiles/fltk_png.dir/pngrtran.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fltk_png.dir/pngrtran.c.s"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/desktop/fltk-master/png/pngrtran.c -o CMakeFiles/fltk_png.dir/pngrtran.c.s

png/CMakeFiles/fltk_png.dir/pngrutil.c.o: png/CMakeFiles/fltk_png.dir/flags.make
png/CMakeFiles/fltk_png.dir/pngrutil.c.o: /Users/evakato/desktop/fltk-master/png/pngrutil.c
png/CMakeFiles/fltk_png.dir/pngrutil.c.o: png/CMakeFiles/fltk_png.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object png/CMakeFiles/fltk_png.dir/pngrutil.c.o"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT png/CMakeFiles/fltk_png.dir/pngrutil.c.o -MF CMakeFiles/fltk_png.dir/pngrutil.c.o.d -o CMakeFiles/fltk_png.dir/pngrutil.c.o -c /Users/evakato/desktop/fltk-master/png/pngrutil.c

png/CMakeFiles/fltk_png.dir/pngrutil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fltk_png.dir/pngrutil.c.i"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/desktop/fltk-master/png/pngrutil.c > CMakeFiles/fltk_png.dir/pngrutil.c.i

png/CMakeFiles/fltk_png.dir/pngrutil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fltk_png.dir/pngrutil.c.s"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/desktop/fltk-master/png/pngrutil.c -o CMakeFiles/fltk_png.dir/pngrutil.c.s

png/CMakeFiles/fltk_png.dir/pngset.c.o: png/CMakeFiles/fltk_png.dir/flags.make
png/CMakeFiles/fltk_png.dir/pngset.c.o: /Users/evakato/desktop/fltk-master/png/pngset.c
png/CMakeFiles/fltk_png.dir/pngset.c.o: png/CMakeFiles/fltk_png.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object png/CMakeFiles/fltk_png.dir/pngset.c.o"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT png/CMakeFiles/fltk_png.dir/pngset.c.o -MF CMakeFiles/fltk_png.dir/pngset.c.o.d -o CMakeFiles/fltk_png.dir/pngset.c.o -c /Users/evakato/desktop/fltk-master/png/pngset.c

png/CMakeFiles/fltk_png.dir/pngset.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fltk_png.dir/pngset.c.i"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/desktop/fltk-master/png/pngset.c > CMakeFiles/fltk_png.dir/pngset.c.i

png/CMakeFiles/fltk_png.dir/pngset.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fltk_png.dir/pngset.c.s"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/desktop/fltk-master/png/pngset.c -o CMakeFiles/fltk_png.dir/pngset.c.s

png/CMakeFiles/fltk_png.dir/pngtrans.c.o: png/CMakeFiles/fltk_png.dir/flags.make
png/CMakeFiles/fltk_png.dir/pngtrans.c.o: /Users/evakato/desktop/fltk-master/png/pngtrans.c
png/CMakeFiles/fltk_png.dir/pngtrans.c.o: png/CMakeFiles/fltk_png.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object png/CMakeFiles/fltk_png.dir/pngtrans.c.o"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT png/CMakeFiles/fltk_png.dir/pngtrans.c.o -MF CMakeFiles/fltk_png.dir/pngtrans.c.o.d -o CMakeFiles/fltk_png.dir/pngtrans.c.o -c /Users/evakato/desktop/fltk-master/png/pngtrans.c

png/CMakeFiles/fltk_png.dir/pngtrans.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fltk_png.dir/pngtrans.c.i"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/desktop/fltk-master/png/pngtrans.c > CMakeFiles/fltk_png.dir/pngtrans.c.i

png/CMakeFiles/fltk_png.dir/pngtrans.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fltk_png.dir/pngtrans.c.s"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/desktop/fltk-master/png/pngtrans.c -o CMakeFiles/fltk_png.dir/pngtrans.c.s

png/CMakeFiles/fltk_png.dir/pngwio.c.o: png/CMakeFiles/fltk_png.dir/flags.make
png/CMakeFiles/fltk_png.dir/pngwio.c.o: /Users/evakato/desktop/fltk-master/png/pngwio.c
png/CMakeFiles/fltk_png.dir/pngwio.c.o: png/CMakeFiles/fltk_png.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object png/CMakeFiles/fltk_png.dir/pngwio.c.o"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT png/CMakeFiles/fltk_png.dir/pngwio.c.o -MF CMakeFiles/fltk_png.dir/pngwio.c.o.d -o CMakeFiles/fltk_png.dir/pngwio.c.o -c /Users/evakato/desktop/fltk-master/png/pngwio.c

png/CMakeFiles/fltk_png.dir/pngwio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fltk_png.dir/pngwio.c.i"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/desktop/fltk-master/png/pngwio.c > CMakeFiles/fltk_png.dir/pngwio.c.i

png/CMakeFiles/fltk_png.dir/pngwio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fltk_png.dir/pngwio.c.s"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/desktop/fltk-master/png/pngwio.c -o CMakeFiles/fltk_png.dir/pngwio.c.s

png/CMakeFiles/fltk_png.dir/pngwrite.c.o: png/CMakeFiles/fltk_png.dir/flags.make
png/CMakeFiles/fltk_png.dir/pngwrite.c.o: /Users/evakato/desktop/fltk-master/png/pngwrite.c
png/CMakeFiles/fltk_png.dir/pngwrite.c.o: png/CMakeFiles/fltk_png.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object png/CMakeFiles/fltk_png.dir/pngwrite.c.o"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT png/CMakeFiles/fltk_png.dir/pngwrite.c.o -MF CMakeFiles/fltk_png.dir/pngwrite.c.o.d -o CMakeFiles/fltk_png.dir/pngwrite.c.o -c /Users/evakato/desktop/fltk-master/png/pngwrite.c

png/CMakeFiles/fltk_png.dir/pngwrite.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fltk_png.dir/pngwrite.c.i"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/desktop/fltk-master/png/pngwrite.c > CMakeFiles/fltk_png.dir/pngwrite.c.i

png/CMakeFiles/fltk_png.dir/pngwrite.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fltk_png.dir/pngwrite.c.s"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/desktop/fltk-master/png/pngwrite.c -o CMakeFiles/fltk_png.dir/pngwrite.c.s

png/CMakeFiles/fltk_png.dir/pngwtran.c.o: png/CMakeFiles/fltk_png.dir/flags.make
png/CMakeFiles/fltk_png.dir/pngwtran.c.o: /Users/evakato/desktop/fltk-master/png/pngwtran.c
png/CMakeFiles/fltk_png.dir/pngwtran.c.o: png/CMakeFiles/fltk_png.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object png/CMakeFiles/fltk_png.dir/pngwtran.c.o"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT png/CMakeFiles/fltk_png.dir/pngwtran.c.o -MF CMakeFiles/fltk_png.dir/pngwtran.c.o.d -o CMakeFiles/fltk_png.dir/pngwtran.c.o -c /Users/evakato/desktop/fltk-master/png/pngwtran.c

png/CMakeFiles/fltk_png.dir/pngwtran.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fltk_png.dir/pngwtran.c.i"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/desktop/fltk-master/png/pngwtran.c > CMakeFiles/fltk_png.dir/pngwtran.c.i

png/CMakeFiles/fltk_png.dir/pngwtran.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fltk_png.dir/pngwtran.c.s"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/desktop/fltk-master/png/pngwtran.c -o CMakeFiles/fltk_png.dir/pngwtran.c.s

png/CMakeFiles/fltk_png.dir/pngwutil.c.o: png/CMakeFiles/fltk_png.dir/flags.make
png/CMakeFiles/fltk_png.dir/pngwutil.c.o: /Users/evakato/desktop/fltk-master/png/pngwutil.c
png/CMakeFiles/fltk_png.dir/pngwutil.c.o: png/CMakeFiles/fltk_png.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object png/CMakeFiles/fltk_png.dir/pngwutil.c.o"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT png/CMakeFiles/fltk_png.dir/pngwutil.c.o -MF CMakeFiles/fltk_png.dir/pngwutil.c.o.d -o CMakeFiles/fltk_png.dir/pngwutil.c.o -c /Users/evakato/desktop/fltk-master/png/pngwutil.c

png/CMakeFiles/fltk_png.dir/pngwutil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fltk_png.dir/pngwutil.c.i"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/desktop/fltk-master/png/pngwutil.c > CMakeFiles/fltk_png.dir/pngwutil.c.i

png/CMakeFiles/fltk_png.dir/pngwutil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fltk_png.dir/pngwutil.c.s"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/desktop/fltk-master/png/pngwutil.c -o CMakeFiles/fltk_png.dir/pngwutil.c.s

png/CMakeFiles/fltk_png.dir/arm/arm_init.c.o: png/CMakeFiles/fltk_png.dir/flags.make
png/CMakeFiles/fltk_png.dir/arm/arm_init.c.o: /Users/evakato/desktop/fltk-master/png/arm/arm_init.c
png/CMakeFiles/fltk_png.dir/arm/arm_init.c.o: png/CMakeFiles/fltk_png.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object png/CMakeFiles/fltk_png.dir/arm/arm_init.c.o"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT png/CMakeFiles/fltk_png.dir/arm/arm_init.c.o -MF CMakeFiles/fltk_png.dir/arm/arm_init.c.o.d -o CMakeFiles/fltk_png.dir/arm/arm_init.c.o -c /Users/evakato/desktop/fltk-master/png/arm/arm_init.c

png/CMakeFiles/fltk_png.dir/arm/arm_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fltk_png.dir/arm/arm_init.c.i"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/desktop/fltk-master/png/arm/arm_init.c > CMakeFiles/fltk_png.dir/arm/arm_init.c.i

png/CMakeFiles/fltk_png.dir/arm/arm_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fltk_png.dir/arm/arm_init.c.s"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/desktop/fltk-master/png/arm/arm_init.c -o CMakeFiles/fltk_png.dir/arm/arm_init.c.s

png/CMakeFiles/fltk_png.dir/arm/filter_neon_intrinsics.c.o: png/CMakeFiles/fltk_png.dir/flags.make
png/CMakeFiles/fltk_png.dir/arm/filter_neon_intrinsics.c.o: /Users/evakato/desktop/fltk-master/png/arm/filter_neon_intrinsics.c
png/CMakeFiles/fltk_png.dir/arm/filter_neon_intrinsics.c.o: png/CMakeFiles/fltk_png.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building C object png/CMakeFiles/fltk_png.dir/arm/filter_neon_intrinsics.c.o"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT png/CMakeFiles/fltk_png.dir/arm/filter_neon_intrinsics.c.o -MF CMakeFiles/fltk_png.dir/arm/filter_neon_intrinsics.c.o.d -o CMakeFiles/fltk_png.dir/arm/filter_neon_intrinsics.c.o -c /Users/evakato/desktop/fltk-master/png/arm/filter_neon_intrinsics.c

png/CMakeFiles/fltk_png.dir/arm/filter_neon_intrinsics.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fltk_png.dir/arm/filter_neon_intrinsics.c.i"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/desktop/fltk-master/png/arm/filter_neon_intrinsics.c > CMakeFiles/fltk_png.dir/arm/filter_neon_intrinsics.c.i

png/CMakeFiles/fltk_png.dir/arm/filter_neon_intrinsics.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fltk_png.dir/arm/filter_neon_intrinsics.c.s"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/desktop/fltk-master/png/arm/filter_neon_intrinsics.c -o CMakeFiles/fltk_png.dir/arm/filter_neon_intrinsics.c.s

png/CMakeFiles/fltk_png.dir/arm/palette_neon_intrinsics.c.o: png/CMakeFiles/fltk_png.dir/flags.make
png/CMakeFiles/fltk_png.dir/arm/palette_neon_intrinsics.c.o: /Users/evakato/desktop/fltk-master/png/arm/palette_neon_intrinsics.c
png/CMakeFiles/fltk_png.dir/arm/palette_neon_intrinsics.c.o: png/CMakeFiles/fltk_png.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building C object png/CMakeFiles/fltk_png.dir/arm/palette_neon_intrinsics.c.o"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT png/CMakeFiles/fltk_png.dir/arm/palette_neon_intrinsics.c.o -MF CMakeFiles/fltk_png.dir/arm/palette_neon_intrinsics.c.o.d -o CMakeFiles/fltk_png.dir/arm/palette_neon_intrinsics.c.o -c /Users/evakato/desktop/fltk-master/png/arm/palette_neon_intrinsics.c

png/CMakeFiles/fltk_png.dir/arm/palette_neon_intrinsics.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fltk_png.dir/arm/palette_neon_intrinsics.c.i"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/evakato/desktop/fltk-master/png/arm/palette_neon_intrinsics.c > CMakeFiles/fltk_png.dir/arm/palette_neon_intrinsics.c.i

png/CMakeFiles/fltk_png.dir/arm/palette_neon_intrinsics.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fltk_png.dir/arm/palette_neon_intrinsics.c.s"
	cd /Users/evakato/desktop/fltk-master/build/png && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/evakato/desktop/fltk-master/png/arm/palette_neon_intrinsics.c -o CMakeFiles/fltk_png.dir/arm/palette_neon_intrinsics.c.s

# Object files for target fltk_png
fltk_png_OBJECTS = \
"CMakeFiles/fltk_png.dir/png.c.o" \
"CMakeFiles/fltk_png.dir/pngerror.c.o" \
"CMakeFiles/fltk_png.dir/pngget.c.o" \
"CMakeFiles/fltk_png.dir/pngmem.c.o" \
"CMakeFiles/fltk_png.dir/pngpread.c.o" \
"CMakeFiles/fltk_png.dir/pngread.c.o" \
"CMakeFiles/fltk_png.dir/pngrio.c.o" \
"CMakeFiles/fltk_png.dir/pngrtran.c.o" \
"CMakeFiles/fltk_png.dir/pngrutil.c.o" \
"CMakeFiles/fltk_png.dir/pngset.c.o" \
"CMakeFiles/fltk_png.dir/pngtrans.c.o" \
"CMakeFiles/fltk_png.dir/pngwio.c.o" \
"CMakeFiles/fltk_png.dir/pngwrite.c.o" \
"CMakeFiles/fltk_png.dir/pngwtran.c.o" \
"CMakeFiles/fltk_png.dir/pngwutil.c.o" \
"CMakeFiles/fltk_png.dir/arm/arm_init.c.o" \
"CMakeFiles/fltk_png.dir/arm/filter_neon_intrinsics.c.o" \
"CMakeFiles/fltk_png.dir/arm/palette_neon_intrinsics.c.o"

# External object files for target fltk_png
fltk_png_EXTERNAL_OBJECTS =

lib/libfltk_png.a: png/CMakeFiles/fltk_png.dir/png.c.o
lib/libfltk_png.a: png/CMakeFiles/fltk_png.dir/pngerror.c.o
lib/libfltk_png.a: png/CMakeFiles/fltk_png.dir/pngget.c.o
lib/libfltk_png.a: png/CMakeFiles/fltk_png.dir/pngmem.c.o
lib/libfltk_png.a: png/CMakeFiles/fltk_png.dir/pngpread.c.o
lib/libfltk_png.a: png/CMakeFiles/fltk_png.dir/pngread.c.o
lib/libfltk_png.a: png/CMakeFiles/fltk_png.dir/pngrio.c.o
lib/libfltk_png.a: png/CMakeFiles/fltk_png.dir/pngrtran.c.o
lib/libfltk_png.a: png/CMakeFiles/fltk_png.dir/pngrutil.c.o
lib/libfltk_png.a: png/CMakeFiles/fltk_png.dir/pngset.c.o
lib/libfltk_png.a: png/CMakeFiles/fltk_png.dir/pngtrans.c.o
lib/libfltk_png.a: png/CMakeFiles/fltk_png.dir/pngwio.c.o
lib/libfltk_png.a: png/CMakeFiles/fltk_png.dir/pngwrite.c.o
lib/libfltk_png.a: png/CMakeFiles/fltk_png.dir/pngwtran.c.o
lib/libfltk_png.a: png/CMakeFiles/fltk_png.dir/pngwutil.c.o
lib/libfltk_png.a: png/CMakeFiles/fltk_png.dir/arm/arm_init.c.o
lib/libfltk_png.a: png/CMakeFiles/fltk_png.dir/arm/filter_neon_intrinsics.c.o
lib/libfltk_png.a: png/CMakeFiles/fltk_png.dir/arm/palette_neon_intrinsics.c.o
lib/libfltk_png.a: png/CMakeFiles/fltk_png.dir/build.make
lib/libfltk_png.a: png/CMakeFiles/fltk_png.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/evakato/desktop/fltk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Linking C static library ../lib/libfltk_png.a"
	cd /Users/evakato/desktop/fltk-master/build/png && $(CMAKE_COMMAND) -P CMakeFiles/fltk_png.dir/cmake_clean_target.cmake
	cd /Users/evakato/desktop/fltk-master/build/png && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fltk_png.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
png/CMakeFiles/fltk_png.dir/build: lib/libfltk_png.a
.PHONY : png/CMakeFiles/fltk_png.dir/build

png/CMakeFiles/fltk_png.dir/clean:
	cd /Users/evakato/desktop/fltk-master/build/png && $(CMAKE_COMMAND) -P CMakeFiles/fltk_png.dir/cmake_clean.cmake
.PHONY : png/CMakeFiles/fltk_png.dir/clean

png/CMakeFiles/fltk_png.dir/depend:
	cd /Users/evakato/desktop/fltk-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/evakato/desktop/fltk-master /Users/evakato/desktop/fltk-master/png /Users/evakato/desktop/fltk-master/build /Users/evakato/desktop/fltk-master/build/png /Users/evakato/desktop/fltk-master/build/png/CMakeFiles/fltk_png.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : png/CMakeFiles/fltk_png.dir/depend
