# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /home/vboxuser/.local/lib/python3.10/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/vboxuser/.local/lib/python3.10/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vboxuser/Downloads/CN_Assignments/CN_Assignment2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vboxuser/Downloads/CN_Assignments/CN_Assignment2/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/fsm_stream_reassembler_dup.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/fsm_stream_reassembler_dup.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/fsm_stream_reassembler_dup.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/fsm_stream_reassembler_dup.dir/flags.make

tests/CMakeFiles/fsm_stream_reassembler_dup.dir/fsm_stream_reassembler_dup.cc.o: tests/CMakeFiles/fsm_stream_reassembler_dup.dir/flags.make
tests/CMakeFiles/fsm_stream_reassembler_dup.dir/fsm_stream_reassembler_dup.cc.o: /home/vboxuser/Downloads/CN_Assignments/CN_Assignment2/tests/fsm_stream_reassembler_dup.cc
tests/CMakeFiles/fsm_stream_reassembler_dup.dir/fsm_stream_reassembler_dup.cc.o: tests/CMakeFiles/fsm_stream_reassembler_dup.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/vboxuser/Downloads/CN_Assignments/CN_Assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/fsm_stream_reassembler_dup.dir/fsm_stream_reassembler_dup.cc.o"
	cd /home/vboxuser/Downloads/CN_Assignments/CN_Assignment2/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/fsm_stream_reassembler_dup.dir/fsm_stream_reassembler_dup.cc.o -MF CMakeFiles/fsm_stream_reassembler_dup.dir/fsm_stream_reassembler_dup.cc.o.d -o CMakeFiles/fsm_stream_reassembler_dup.dir/fsm_stream_reassembler_dup.cc.o -c /home/vboxuser/Downloads/CN_Assignments/CN_Assignment2/tests/fsm_stream_reassembler_dup.cc

tests/CMakeFiles/fsm_stream_reassembler_dup.dir/fsm_stream_reassembler_dup.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/fsm_stream_reassembler_dup.dir/fsm_stream_reassembler_dup.cc.i"
	cd /home/vboxuser/Downloads/CN_Assignments/CN_Assignment2/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vboxuser/Downloads/CN_Assignments/CN_Assignment2/tests/fsm_stream_reassembler_dup.cc > CMakeFiles/fsm_stream_reassembler_dup.dir/fsm_stream_reassembler_dup.cc.i

tests/CMakeFiles/fsm_stream_reassembler_dup.dir/fsm_stream_reassembler_dup.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/fsm_stream_reassembler_dup.dir/fsm_stream_reassembler_dup.cc.s"
	cd /home/vboxuser/Downloads/CN_Assignments/CN_Assignment2/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vboxuser/Downloads/CN_Assignments/CN_Assignment2/tests/fsm_stream_reassembler_dup.cc -o CMakeFiles/fsm_stream_reassembler_dup.dir/fsm_stream_reassembler_dup.cc.s

# Object files for target fsm_stream_reassembler_dup
fsm_stream_reassembler_dup_OBJECTS = \
"CMakeFiles/fsm_stream_reassembler_dup.dir/fsm_stream_reassembler_dup.cc.o"

# External object files for target fsm_stream_reassembler_dup
fsm_stream_reassembler_dup_EXTERNAL_OBJECTS =

tests/fsm_stream_reassembler_dup: tests/CMakeFiles/fsm_stream_reassembler_dup.dir/fsm_stream_reassembler_dup.cc.o
tests/fsm_stream_reassembler_dup: tests/CMakeFiles/fsm_stream_reassembler_dup.dir/build.make
tests/fsm_stream_reassembler_dup: tests/libtcp_reciever_checks.a
tests/fsm_stream_reassembler_dup: src/libtcp_reciever.a
tests/fsm_stream_reassembler_dup: tests/CMakeFiles/fsm_stream_reassembler_dup.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/vboxuser/Downloads/CN_Assignments/CN_Assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable fsm_stream_reassembler_dup"
	cd /home/vboxuser/Downloads/CN_Assignments/CN_Assignment2/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fsm_stream_reassembler_dup.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/fsm_stream_reassembler_dup.dir/build: tests/fsm_stream_reassembler_dup
.PHONY : tests/CMakeFiles/fsm_stream_reassembler_dup.dir/build

tests/CMakeFiles/fsm_stream_reassembler_dup.dir/clean:
	cd /home/vboxuser/Downloads/CN_Assignments/CN_Assignment2/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/fsm_stream_reassembler_dup.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/fsm_stream_reassembler_dup.dir/clean

tests/CMakeFiles/fsm_stream_reassembler_dup.dir/depend:
	cd /home/vboxuser/Downloads/CN_Assignments/CN_Assignment2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vboxuser/Downloads/CN_Assignments/CN_Assignment2 /home/vboxuser/Downloads/CN_Assignments/CN_Assignment2/tests /home/vboxuser/Downloads/CN_Assignments/CN_Assignment2/build /home/vboxuser/Downloads/CN_Assignments/CN_Assignment2/build/tests /home/vboxuser/Downloads/CN_Assignments/CN_Assignment2/build/tests/CMakeFiles/fsm_stream_reassembler_dup.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests/CMakeFiles/fsm_stream_reassembler_dup.dir/depend

