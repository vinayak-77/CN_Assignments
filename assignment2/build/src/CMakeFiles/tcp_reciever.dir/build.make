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
CMAKE_COMMAND = /snap/cmake/1329/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1329/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vboxuser/Downloads/assignment2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vboxuser/Downloads/assignment2/build

# Include any dependencies generated for this target.
include src/CMakeFiles/tcp_reciever.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/tcp_reciever.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/tcp_reciever.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/tcp_reciever.dir/flags.make

src/CMakeFiles/tcp_reciever.dir/byte_stream.cc.o: src/CMakeFiles/tcp_reciever.dir/flags.make
src/CMakeFiles/tcp_reciever.dir/byte_stream.cc.o: /home/vboxuser/Downloads/assignment2/src/byte_stream.cc
src/CMakeFiles/tcp_reciever.dir/byte_stream.cc.o: src/CMakeFiles/tcp_reciever.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/vboxuser/Downloads/assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/tcp_reciever.dir/byte_stream.cc.o"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/tcp_reciever.dir/byte_stream.cc.o -MF CMakeFiles/tcp_reciever.dir/byte_stream.cc.o.d -o CMakeFiles/tcp_reciever.dir/byte_stream.cc.o -c /home/vboxuser/Downloads/assignment2/src/byte_stream.cc

src/CMakeFiles/tcp_reciever.dir/byte_stream.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcp_reciever.dir/byte_stream.cc.i"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vboxuser/Downloads/assignment2/src/byte_stream.cc > CMakeFiles/tcp_reciever.dir/byte_stream.cc.i

src/CMakeFiles/tcp_reciever.dir/byte_stream.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcp_reciever.dir/byte_stream.cc.s"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vboxuser/Downloads/assignment2/src/byte_stream.cc -o CMakeFiles/tcp_reciever.dir/byte_stream.cc.s

src/CMakeFiles/tcp_reciever.dir/stream_reassembler.cc.o: src/CMakeFiles/tcp_reciever.dir/flags.make
src/CMakeFiles/tcp_reciever.dir/stream_reassembler.cc.o: /home/vboxuser/Downloads/assignment2/src/stream_reassembler.cc
src/CMakeFiles/tcp_reciever.dir/stream_reassembler.cc.o: src/CMakeFiles/tcp_reciever.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/vboxuser/Downloads/assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/tcp_reciever.dir/stream_reassembler.cc.o"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/tcp_reciever.dir/stream_reassembler.cc.o -MF CMakeFiles/tcp_reciever.dir/stream_reassembler.cc.o.d -o CMakeFiles/tcp_reciever.dir/stream_reassembler.cc.o -c /home/vboxuser/Downloads/assignment2/src/stream_reassembler.cc

src/CMakeFiles/tcp_reciever.dir/stream_reassembler.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcp_reciever.dir/stream_reassembler.cc.i"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vboxuser/Downloads/assignment2/src/stream_reassembler.cc > CMakeFiles/tcp_reciever.dir/stream_reassembler.cc.i

src/CMakeFiles/tcp_reciever.dir/stream_reassembler.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcp_reciever.dir/stream_reassembler.cc.s"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vboxuser/Downloads/assignment2/src/stream_reassembler.cc -o CMakeFiles/tcp_reciever.dir/stream_reassembler.cc.s

src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_header.cc.o: src/CMakeFiles/tcp_reciever.dir/flags.make
src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_header.cc.o: /home/vboxuser/Downloads/assignment2/src/tcp_helpers/tcp_header.cc
src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_header.cc.o: src/CMakeFiles/tcp_reciever.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/vboxuser/Downloads/assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_header.cc.o"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_header.cc.o -MF CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_header.cc.o.d -o CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_header.cc.o -c /home/vboxuser/Downloads/assignment2/src/tcp_helpers/tcp_header.cc

src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_header.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_header.cc.i"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vboxuser/Downloads/assignment2/src/tcp_helpers/tcp_header.cc > CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_header.cc.i

src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_header.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_header.cc.s"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vboxuser/Downloads/assignment2/src/tcp_helpers/tcp_header.cc -o CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_header.cc.s

src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_segment.cc.o: src/CMakeFiles/tcp_reciever.dir/flags.make
src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_segment.cc.o: /home/vboxuser/Downloads/assignment2/src/tcp_helpers/tcp_segment.cc
src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_segment.cc.o: src/CMakeFiles/tcp_reciever.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/vboxuser/Downloads/assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_segment.cc.o"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_segment.cc.o -MF CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_segment.cc.o.d -o CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_segment.cc.o -c /home/vboxuser/Downloads/assignment2/src/tcp_helpers/tcp_segment.cc

src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_segment.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_segment.cc.i"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vboxuser/Downloads/assignment2/src/tcp_helpers/tcp_segment.cc > CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_segment.cc.i

src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_segment.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_segment.cc.s"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vboxuser/Downloads/assignment2/src/tcp_helpers/tcp_segment.cc -o CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_segment.cc.s

src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_state.cc.o: src/CMakeFiles/tcp_reciever.dir/flags.make
src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_state.cc.o: /home/vboxuser/Downloads/assignment2/src/tcp_helpers/tcp_state.cc
src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_state.cc.o: src/CMakeFiles/tcp_reciever.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/vboxuser/Downloads/assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_state.cc.o"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_state.cc.o -MF CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_state.cc.o.d -o CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_state.cc.o -c /home/vboxuser/Downloads/assignment2/src/tcp_helpers/tcp_state.cc

src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_state.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_state.cc.i"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vboxuser/Downloads/assignment2/src/tcp_helpers/tcp_state.cc > CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_state.cc.i

src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_state.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_state.cc.s"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vboxuser/Downloads/assignment2/src/tcp_helpers/tcp_state.cc -o CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_state.cc.s

src/CMakeFiles/tcp_reciever.dir/tcp_receiver.cc.o: src/CMakeFiles/tcp_reciever.dir/flags.make
src/CMakeFiles/tcp_reciever.dir/tcp_receiver.cc.o: /home/vboxuser/Downloads/assignment2/src/tcp_receiver.cc
src/CMakeFiles/tcp_reciever.dir/tcp_receiver.cc.o: src/CMakeFiles/tcp_reciever.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/vboxuser/Downloads/assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/tcp_reciever.dir/tcp_receiver.cc.o"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/tcp_reciever.dir/tcp_receiver.cc.o -MF CMakeFiles/tcp_reciever.dir/tcp_receiver.cc.o.d -o CMakeFiles/tcp_reciever.dir/tcp_receiver.cc.o -c /home/vboxuser/Downloads/assignment2/src/tcp_receiver.cc

src/CMakeFiles/tcp_reciever.dir/tcp_receiver.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcp_reciever.dir/tcp_receiver.cc.i"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vboxuser/Downloads/assignment2/src/tcp_receiver.cc > CMakeFiles/tcp_reciever.dir/tcp_receiver.cc.i

src/CMakeFiles/tcp_reciever.dir/tcp_receiver.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcp_reciever.dir/tcp_receiver.cc.s"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vboxuser/Downloads/assignment2/src/tcp_receiver.cc -o CMakeFiles/tcp_reciever.dir/tcp_receiver.cc.s

src/CMakeFiles/tcp_reciever.dir/util/address.cc.o: src/CMakeFiles/tcp_reciever.dir/flags.make
src/CMakeFiles/tcp_reciever.dir/util/address.cc.o: /home/vboxuser/Downloads/assignment2/src/util/address.cc
src/CMakeFiles/tcp_reciever.dir/util/address.cc.o: src/CMakeFiles/tcp_reciever.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/vboxuser/Downloads/assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/tcp_reciever.dir/util/address.cc.o"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/tcp_reciever.dir/util/address.cc.o -MF CMakeFiles/tcp_reciever.dir/util/address.cc.o.d -o CMakeFiles/tcp_reciever.dir/util/address.cc.o -c /home/vboxuser/Downloads/assignment2/src/util/address.cc

src/CMakeFiles/tcp_reciever.dir/util/address.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcp_reciever.dir/util/address.cc.i"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vboxuser/Downloads/assignment2/src/util/address.cc > CMakeFiles/tcp_reciever.dir/util/address.cc.i

src/CMakeFiles/tcp_reciever.dir/util/address.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcp_reciever.dir/util/address.cc.s"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vboxuser/Downloads/assignment2/src/util/address.cc -o CMakeFiles/tcp_reciever.dir/util/address.cc.s

src/CMakeFiles/tcp_reciever.dir/util/buffer.cc.o: src/CMakeFiles/tcp_reciever.dir/flags.make
src/CMakeFiles/tcp_reciever.dir/util/buffer.cc.o: /home/vboxuser/Downloads/assignment2/src/util/buffer.cc
src/CMakeFiles/tcp_reciever.dir/util/buffer.cc.o: src/CMakeFiles/tcp_reciever.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/vboxuser/Downloads/assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/CMakeFiles/tcp_reciever.dir/util/buffer.cc.o"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/tcp_reciever.dir/util/buffer.cc.o -MF CMakeFiles/tcp_reciever.dir/util/buffer.cc.o.d -o CMakeFiles/tcp_reciever.dir/util/buffer.cc.o -c /home/vboxuser/Downloads/assignment2/src/util/buffer.cc

src/CMakeFiles/tcp_reciever.dir/util/buffer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcp_reciever.dir/util/buffer.cc.i"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vboxuser/Downloads/assignment2/src/util/buffer.cc > CMakeFiles/tcp_reciever.dir/util/buffer.cc.i

src/CMakeFiles/tcp_reciever.dir/util/buffer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcp_reciever.dir/util/buffer.cc.s"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vboxuser/Downloads/assignment2/src/util/buffer.cc -o CMakeFiles/tcp_reciever.dir/util/buffer.cc.s

src/CMakeFiles/tcp_reciever.dir/util/eventloop.cc.o: src/CMakeFiles/tcp_reciever.dir/flags.make
src/CMakeFiles/tcp_reciever.dir/util/eventloop.cc.o: /home/vboxuser/Downloads/assignment2/src/util/eventloop.cc
src/CMakeFiles/tcp_reciever.dir/util/eventloop.cc.o: src/CMakeFiles/tcp_reciever.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/vboxuser/Downloads/assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/CMakeFiles/tcp_reciever.dir/util/eventloop.cc.o"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/tcp_reciever.dir/util/eventloop.cc.o -MF CMakeFiles/tcp_reciever.dir/util/eventloop.cc.o.d -o CMakeFiles/tcp_reciever.dir/util/eventloop.cc.o -c /home/vboxuser/Downloads/assignment2/src/util/eventloop.cc

src/CMakeFiles/tcp_reciever.dir/util/eventloop.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcp_reciever.dir/util/eventloop.cc.i"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vboxuser/Downloads/assignment2/src/util/eventloop.cc > CMakeFiles/tcp_reciever.dir/util/eventloop.cc.i

src/CMakeFiles/tcp_reciever.dir/util/eventloop.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcp_reciever.dir/util/eventloop.cc.s"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vboxuser/Downloads/assignment2/src/util/eventloop.cc -o CMakeFiles/tcp_reciever.dir/util/eventloop.cc.s

src/CMakeFiles/tcp_reciever.dir/util/file_descriptor.cc.o: src/CMakeFiles/tcp_reciever.dir/flags.make
src/CMakeFiles/tcp_reciever.dir/util/file_descriptor.cc.o: /home/vboxuser/Downloads/assignment2/src/util/file_descriptor.cc
src/CMakeFiles/tcp_reciever.dir/util/file_descriptor.cc.o: src/CMakeFiles/tcp_reciever.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/vboxuser/Downloads/assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/CMakeFiles/tcp_reciever.dir/util/file_descriptor.cc.o"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/tcp_reciever.dir/util/file_descriptor.cc.o -MF CMakeFiles/tcp_reciever.dir/util/file_descriptor.cc.o.d -o CMakeFiles/tcp_reciever.dir/util/file_descriptor.cc.o -c /home/vboxuser/Downloads/assignment2/src/util/file_descriptor.cc

src/CMakeFiles/tcp_reciever.dir/util/file_descriptor.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcp_reciever.dir/util/file_descriptor.cc.i"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vboxuser/Downloads/assignment2/src/util/file_descriptor.cc > CMakeFiles/tcp_reciever.dir/util/file_descriptor.cc.i

src/CMakeFiles/tcp_reciever.dir/util/file_descriptor.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcp_reciever.dir/util/file_descriptor.cc.s"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vboxuser/Downloads/assignment2/src/util/file_descriptor.cc -o CMakeFiles/tcp_reciever.dir/util/file_descriptor.cc.s

src/CMakeFiles/tcp_reciever.dir/util/parser.cc.o: src/CMakeFiles/tcp_reciever.dir/flags.make
src/CMakeFiles/tcp_reciever.dir/util/parser.cc.o: /home/vboxuser/Downloads/assignment2/src/util/parser.cc
src/CMakeFiles/tcp_reciever.dir/util/parser.cc.o: src/CMakeFiles/tcp_reciever.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/vboxuser/Downloads/assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/CMakeFiles/tcp_reciever.dir/util/parser.cc.o"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/tcp_reciever.dir/util/parser.cc.o -MF CMakeFiles/tcp_reciever.dir/util/parser.cc.o.d -o CMakeFiles/tcp_reciever.dir/util/parser.cc.o -c /home/vboxuser/Downloads/assignment2/src/util/parser.cc

src/CMakeFiles/tcp_reciever.dir/util/parser.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcp_reciever.dir/util/parser.cc.i"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vboxuser/Downloads/assignment2/src/util/parser.cc > CMakeFiles/tcp_reciever.dir/util/parser.cc.i

src/CMakeFiles/tcp_reciever.dir/util/parser.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcp_reciever.dir/util/parser.cc.s"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vboxuser/Downloads/assignment2/src/util/parser.cc -o CMakeFiles/tcp_reciever.dir/util/parser.cc.s

src/CMakeFiles/tcp_reciever.dir/util/socket.cc.o: src/CMakeFiles/tcp_reciever.dir/flags.make
src/CMakeFiles/tcp_reciever.dir/util/socket.cc.o: /home/vboxuser/Downloads/assignment2/src/util/socket.cc
src/CMakeFiles/tcp_reciever.dir/util/socket.cc.o: src/CMakeFiles/tcp_reciever.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/vboxuser/Downloads/assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object src/CMakeFiles/tcp_reciever.dir/util/socket.cc.o"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/tcp_reciever.dir/util/socket.cc.o -MF CMakeFiles/tcp_reciever.dir/util/socket.cc.o.d -o CMakeFiles/tcp_reciever.dir/util/socket.cc.o -c /home/vboxuser/Downloads/assignment2/src/util/socket.cc

src/CMakeFiles/tcp_reciever.dir/util/socket.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcp_reciever.dir/util/socket.cc.i"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vboxuser/Downloads/assignment2/src/util/socket.cc > CMakeFiles/tcp_reciever.dir/util/socket.cc.i

src/CMakeFiles/tcp_reciever.dir/util/socket.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcp_reciever.dir/util/socket.cc.s"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vboxuser/Downloads/assignment2/src/util/socket.cc -o CMakeFiles/tcp_reciever.dir/util/socket.cc.s

src/CMakeFiles/tcp_reciever.dir/util/util.cc.o: src/CMakeFiles/tcp_reciever.dir/flags.make
src/CMakeFiles/tcp_reciever.dir/util/util.cc.o: /home/vboxuser/Downloads/assignment2/src/util/util.cc
src/CMakeFiles/tcp_reciever.dir/util/util.cc.o: src/CMakeFiles/tcp_reciever.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/vboxuser/Downloads/assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object src/CMakeFiles/tcp_reciever.dir/util/util.cc.o"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/tcp_reciever.dir/util/util.cc.o -MF CMakeFiles/tcp_reciever.dir/util/util.cc.o.d -o CMakeFiles/tcp_reciever.dir/util/util.cc.o -c /home/vboxuser/Downloads/assignment2/src/util/util.cc

src/CMakeFiles/tcp_reciever.dir/util/util.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcp_reciever.dir/util/util.cc.i"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vboxuser/Downloads/assignment2/src/util/util.cc > CMakeFiles/tcp_reciever.dir/util/util.cc.i

src/CMakeFiles/tcp_reciever.dir/util/util.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcp_reciever.dir/util/util.cc.s"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vboxuser/Downloads/assignment2/src/util/util.cc -o CMakeFiles/tcp_reciever.dir/util/util.cc.s

src/CMakeFiles/tcp_reciever.dir/wrapping_integers.cc.o: src/CMakeFiles/tcp_reciever.dir/flags.make
src/CMakeFiles/tcp_reciever.dir/wrapping_integers.cc.o: /home/vboxuser/Downloads/assignment2/src/wrapping_integers.cc
src/CMakeFiles/tcp_reciever.dir/wrapping_integers.cc.o: src/CMakeFiles/tcp_reciever.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/vboxuser/Downloads/assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object src/CMakeFiles/tcp_reciever.dir/wrapping_integers.cc.o"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/tcp_reciever.dir/wrapping_integers.cc.o -MF CMakeFiles/tcp_reciever.dir/wrapping_integers.cc.o.d -o CMakeFiles/tcp_reciever.dir/wrapping_integers.cc.o -c /home/vboxuser/Downloads/assignment2/src/wrapping_integers.cc

src/CMakeFiles/tcp_reciever.dir/wrapping_integers.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcp_reciever.dir/wrapping_integers.cc.i"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vboxuser/Downloads/assignment2/src/wrapping_integers.cc > CMakeFiles/tcp_reciever.dir/wrapping_integers.cc.i

src/CMakeFiles/tcp_reciever.dir/wrapping_integers.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcp_reciever.dir/wrapping_integers.cc.s"
	cd /home/vboxuser/Downloads/assignment2/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vboxuser/Downloads/assignment2/src/wrapping_integers.cc -o CMakeFiles/tcp_reciever.dir/wrapping_integers.cc.s

# Object files for target tcp_reciever
tcp_reciever_OBJECTS = \
"CMakeFiles/tcp_reciever.dir/byte_stream.cc.o" \
"CMakeFiles/tcp_reciever.dir/stream_reassembler.cc.o" \
"CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_header.cc.o" \
"CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_segment.cc.o" \
"CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_state.cc.o" \
"CMakeFiles/tcp_reciever.dir/tcp_receiver.cc.o" \
"CMakeFiles/tcp_reciever.dir/util/address.cc.o" \
"CMakeFiles/tcp_reciever.dir/util/buffer.cc.o" \
"CMakeFiles/tcp_reciever.dir/util/eventloop.cc.o" \
"CMakeFiles/tcp_reciever.dir/util/file_descriptor.cc.o" \
"CMakeFiles/tcp_reciever.dir/util/parser.cc.o" \
"CMakeFiles/tcp_reciever.dir/util/socket.cc.o" \
"CMakeFiles/tcp_reciever.dir/util/util.cc.o" \
"CMakeFiles/tcp_reciever.dir/wrapping_integers.cc.o"

# External object files for target tcp_reciever
tcp_reciever_EXTERNAL_OBJECTS =

src/libtcp_reciever.a: src/CMakeFiles/tcp_reciever.dir/byte_stream.cc.o
src/libtcp_reciever.a: src/CMakeFiles/tcp_reciever.dir/stream_reassembler.cc.o
src/libtcp_reciever.a: src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_header.cc.o
src/libtcp_reciever.a: src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_segment.cc.o
src/libtcp_reciever.a: src/CMakeFiles/tcp_reciever.dir/tcp_helpers/tcp_state.cc.o
src/libtcp_reciever.a: src/CMakeFiles/tcp_reciever.dir/tcp_receiver.cc.o
src/libtcp_reciever.a: src/CMakeFiles/tcp_reciever.dir/util/address.cc.o
src/libtcp_reciever.a: src/CMakeFiles/tcp_reciever.dir/util/buffer.cc.o
src/libtcp_reciever.a: src/CMakeFiles/tcp_reciever.dir/util/eventloop.cc.o
src/libtcp_reciever.a: src/CMakeFiles/tcp_reciever.dir/util/file_descriptor.cc.o
src/libtcp_reciever.a: src/CMakeFiles/tcp_reciever.dir/util/parser.cc.o
src/libtcp_reciever.a: src/CMakeFiles/tcp_reciever.dir/util/socket.cc.o
src/libtcp_reciever.a: src/CMakeFiles/tcp_reciever.dir/util/util.cc.o
src/libtcp_reciever.a: src/CMakeFiles/tcp_reciever.dir/wrapping_integers.cc.o
src/libtcp_reciever.a: src/CMakeFiles/tcp_reciever.dir/build.make
src/libtcp_reciever.a: src/CMakeFiles/tcp_reciever.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/vboxuser/Downloads/assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX static library libtcp_reciever.a"
	cd /home/vboxuser/Downloads/assignment2/build/src && $(CMAKE_COMMAND) -P CMakeFiles/tcp_reciever.dir/cmake_clean_target.cmake
	cd /home/vboxuser/Downloads/assignment2/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tcp_reciever.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/tcp_reciever.dir/build: src/libtcp_reciever.a
.PHONY : src/CMakeFiles/tcp_reciever.dir/build

src/CMakeFiles/tcp_reciever.dir/clean:
	cd /home/vboxuser/Downloads/assignment2/build/src && $(CMAKE_COMMAND) -P CMakeFiles/tcp_reciever.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/tcp_reciever.dir/clean

src/CMakeFiles/tcp_reciever.dir/depend:
	cd /home/vboxuser/Downloads/assignment2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vboxuser/Downloads/assignment2 /home/vboxuser/Downloads/assignment2/src /home/vboxuser/Downloads/assignment2/build /home/vboxuser/Downloads/assignment2/build/src /home/vboxuser/Downloads/assignment2/build/src/CMakeFiles/tcp_reciever.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/CMakeFiles/tcp_reciever.dir/depend

