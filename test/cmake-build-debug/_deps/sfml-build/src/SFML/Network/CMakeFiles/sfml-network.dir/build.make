# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/elionkaraboja/CLionProjects/a_star/test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug

# Include any dependencies generated for this target.
include _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/flags.make

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Ftp.cpp.o: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/flags.make
_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Ftp.cpp.o: _deps/sfml-src/src/SFML/Network/Ftp.cpp
_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Ftp.cpp.o: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Ftp.cpp.o"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -MD -MT _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Ftp.cpp.o -MF CMakeFiles/sfml-network.dir/Ftp.cpp.o.d -o CMakeFiles/sfml-network.dir/Ftp.cpp.o -c /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/Ftp.cpp

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Ftp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml-network.dir/Ftp.cpp.i"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -E /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/Ftp.cpp > CMakeFiles/sfml-network.dir/Ftp.cpp.i

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Ftp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml-network.dir/Ftp.cpp.s"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -S /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/Ftp.cpp -o CMakeFiles/sfml-network.dir/Ftp.cpp.s

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Http.cpp.o: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/flags.make
_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Http.cpp.o: _deps/sfml-src/src/SFML/Network/Http.cpp
_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Http.cpp.o: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Http.cpp.o"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -MD -MT _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Http.cpp.o -MF CMakeFiles/sfml-network.dir/Http.cpp.o.d -o CMakeFiles/sfml-network.dir/Http.cpp.o -c /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/Http.cpp

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Http.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml-network.dir/Http.cpp.i"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -E /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/Http.cpp > CMakeFiles/sfml-network.dir/Http.cpp.i

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Http.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml-network.dir/Http.cpp.s"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -S /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/Http.cpp -o CMakeFiles/sfml-network.dir/Http.cpp.s

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/IpAddress.cpp.o: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/flags.make
_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/IpAddress.cpp.o: _deps/sfml-src/src/SFML/Network/IpAddress.cpp
_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/IpAddress.cpp.o: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/IpAddress.cpp.o"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -MD -MT _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/IpAddress.cpp.o -MF CMakeFiles/sfml-network.dir/IpAddress.cpp.o.d -o CMakeFiles/sfml-network.dir/IpAddress.cpp.o -c /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/IpAddress.cpp

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/IpAddress.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml-network.dir/IpAddress.cpp.i"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -E /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/IpAddress.cpp > CMakeFiles/sfml-network.dir/IpAddress.cpp.i

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/IpAddress.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml-network.dir/IpAddress.cpp.s"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -S /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/IpAddress.cpp -o CMakeFiles/sfml-network.dir/IpAddress.cpp.s

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Packet.cpp.o: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/flags.make
_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Packet.cpp.o: _deps/sfml-src/src/SFML/Network/Packet.cpp
_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Packet.cpp.o: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Packet.cpp.o"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -MD -MT _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Packet.cpp.o -MF CMakeFiles/sfml-network.dir/Packet.cpp.o.d -o CMakeFiles/sfml-network.dir/Packet.cpp.o -c /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/Packet.cpp

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Packet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml-network.dir/Packet.cpp.i"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -E /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/Packet.cpp > CMakeFiles/sfml-network.dir/Packet.cpp.i

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Packet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml-network.dir/Packet.cpp.s"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -S /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/Packet.cpp -o CMakeFiles/sfml-network.dir/Packet.cpp.s

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Socket.cpp.o: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/flags.make
_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Socket.cpp.o: _deps/sfml-src/src/SFML/Network/Socket.cpp
_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Socket.cpp.o: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Socket.cpp.o"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -MD -MT _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Socket.cpp.o -MF CMakeFiles/sfml-network.dir/Socket.cpp.o.d -o CMakeFiles/sfml-network.dir/Socket.cpp.o -c /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/Socket.cpp

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Socket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml-network.dir/Socket.cpp.i"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -E /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/Socket.cpp > CMakeFiles/sfml-network.dir/Socket.cpp.i

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Socket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml-network.dir/Socket.cpp.s"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -S /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/Socket.cpp -o CMakeFiles/sfml-network.dir/Socket.cpp.s

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/SocketSelector.cpp.o: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/flags.make
_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/SocketSelector.cpp.o: _deps/sfml-src/src/SFML/Network/SocketSelector.cpp
_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/SocketSelector.cpp.o: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/SocketSelector.cpp.o"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -MD -MT _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/SocketSelector.cpp.o -MF CMakeFiles/sfml-network.dir/SocketSelector.cpp.o.d -o CMakeFiles/sfml-network.dir/SocketSelector.cpp.o -c /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/SocketSelector.cpp

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/SocketSelector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml-network.dir/SocketSelector.cpp.i"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -E /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/SocketSelector.cpp > CMakeFiles/sfml-network.dir/SocketSelector.cpp.i

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/SocketSelector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml-network.dir/SocketSelector.cpp.s"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -S /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/SocketSelector.cpp -o CMakeFiles/sfml-network.dir/SocketSelector.cpp.s

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/TcpListener.cpp.o: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/flags.make
_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/TcpListener.cpp.o: _deps/sfml-src/src/SFML/Network/TcpListener.cpp
_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/TcpListener.cpp.o: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/TcpListener.cpp.o"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -MD -MT _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/TcpListener.cpp.o -MF CMakeFiles/sfml-network.dir/TcpListener.cpp.o.d -o CMakeFiles/sfml-network.dir/TcpListener.cpp.o -c /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/TcpListener.cpp

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/TcpListener.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml-network.dir/TcpListener.cpp.i"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -E /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/TcpListener.cpp > CMakeFiles/sfml-network.dir/TcpListener.cpp.i

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/TcpListener.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml-network.dir/TcpListener.cpp.s"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -S /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/TcpListener.cpp -o CMakeFiles/sfml-network.dir/TcpListener.cpp.s

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/TcpSocket.cpp.o: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/flags.make
_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/TcpSocket.cpp.o: _deps/sfml-src/src/SFML/Network/TcpSocket.cpp
_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/TcpSocket.cpp.o: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/TcpSocket.cpp.o"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -MD -MT _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/TcpSocket.cpp.o -MF CMakeFiles/sfml-network.dir/TcpSocket.cpp.o.d -o CMakeFiles/sfml-network.dir/TcpSocket.cpp.o -c /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/TcpSocket.cpp

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/TcpSocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml-network.dir/TcpSocket.cpp.i"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -E /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/TcpSocket.cpp > CMakeFiles/sfml-network.dir/TcpSocket.cpp.i

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/TcpSocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml-network.dir/TcpSocket.cpp.s"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -S /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/TcpSocket.cpp -o CMakeFiles/sfml-network.dir/TcpSocket.cpp.s

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/UdpSocket.cpp.o: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/flags.make
_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/UdpSocket.cpp.o: _deps/sfml-src/src/SFML/Network/UdpSocket.cpp
_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/UdpSocket.cpp.o: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/UdpSocket.cpp.o"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -MD -MT _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/UdpSocket.cpp.o -MF CMakeFiles/sfml-network.dir/UdpSocket.cpp.o.d -o CMakeFiles/sfml-network.dir/UdpSocket.cpp.o -c /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/UdpSocket.cpp

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/UdpSocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml-network.dir/UdpSocket.cpp.i"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -E /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/UdpSocket.cpp > CMakeFiles/sfml-network.dir/UdpSocket.cpp.i

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/UdpSocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml-network.dir/UdpSocket.cpp.s"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -S /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/UdpSocket.cpp -o CMakeFiles/sfml-network.dir/UdpSocket.cpp.s

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Unix/SocketImpl.cpp.o: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/flags.make
_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Unix/SocketImpl.cpp.o: _deps/sfml-src/src/SFML/Network/Unix/SocketImpl.cpp
_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Unix/SocketImpl.cpp.o: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Unix/SocketImpl.cpp.o"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -MD -MT _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Unix/SocketImpl.cpp.o -MF CMakeFiles/sfml-network.dir/Unix/SocketImpl.cpp.o.d -o CMakeFiles/sfml-network.dir/Unix/SocketImpl.cpp.o -c /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/Unix/SocketImpl.cpp

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Unix/SocketImpl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml-network.dir/Unix/SocketImpl.cpp.i"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -E /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/Unix/SocketImpl.cpp > CMakeFiles/sfml-network.dir/Unix/SocketImpl.cpp.i

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Unix/SocketImpl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml-network.dir/Unix/SocketImpl.cpp.s"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wcast-align -Wunused -Woverloaded-virtual -Wconversion -Wsign-conversion -Wdouble-promotion -Wformat=2 -Wnull-dereference -Wold-style-cast -Wpedantic -Wno-unknown-warning-option -S /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network/Unix/SocketImpl.cpp -o CMakeFiles/sfml-network.dir/Unix/SocketImpl.cpp.s

# Object files for target sfml-network
sfml__network_OBJECTS = \
"CMakeFiles/sfml-network.dir/Ftp.cpp.o" \
"CMakeFiles/sfml-network.dir/Http.cpp.o" \
"CMakeFiles/sfml-network.dir/IpAddress.cpp.o" \
"CMakeFiles/sfml-network.dir/Packet.cpp.o" \
"CMakeFiles/sfml-network.dir/Socket.cpp.o" \
"CMakeFiles/sfml-network.dir/SocketSelector.cpp.o" \
"CMakeFiles/sfml-network.dir/TcpListener.cpp.o" \
"CMakeFiles/sfml-network.dir/TcpSocket.cpp.o" \
"CMakeFiles/sfml-network.dir/UdpSocket.cpp.o" \
"CMakeFiles/sfml-network.dir/Unix/SocketImpl.cpp.o"

# External object files for target sfml-network
sfml__network_EXTERNAL_OBJECTS =

_deps/sfml-build/lib/libsfml-network-d.2.6.1.dylib: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Ftp.cpp.o
_deps/sfml-build/lib/libsfml-network-d.2.6.1.dylib: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Http.cpp.o
_deps/sfml-build/lib/libsfml-network-d.2.6.1.dylib: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/IpAddress.cpp.o
_deps/sfml-build/lib/libsfml-network-d.2.6.1.dylib: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Packet.cpp.o
_deps/sfml-build/lib/libsfml-network-d.2.6.1.dylib: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Socket.cpp.o
_deps/sfml-build/lib/libsfml-network-d.2.6.1.dylib: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/SocketSelector.cpp.o
_deps/sfml-build/lib/libsfml-network-d.2.6.1.dylib: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/TcpListener.cpp.o
_deps/sfml-build/lib/libsfml-network-d.2.6.1.dylib: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/TcpSocket.cpp.o
_deps/sfml-build/lib/libsfml-network-d.2.6.1.dylib: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/UdpSocket.cpp.o
_deps/sfml-build/lib/libsfml-network-d.2.6.1.dylib: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/Unix/SocketImpl.cpp.o
_deps/sfml-build/lib/libsfml-network-d.2.6.1.dylib: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/build.make
_deps/sfml-build/lib/libsfml-network-d.2.6.1.dylib: _deps/sfml-build/lib/libsfml-system-d.2.6.1.dylib
_deps/sfml-build/lib/libsfml-network-d.2.6.1.dylib: _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX shared library ../../../lib/libsfml-network-d.dylib"
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sfml-network.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && $(CMAKE_COMMAND) -E cmake_symlink_library ../../../lib/libsfml-network-d.2.6.1.dylib ../../../lib/libsfml-network-d.2.6.dylib ../../../lib/libsfml-network-d.dylib

_deps/sfml-build/lib/libsfml-network-d.2.6.dylib: _deps/sfml-build/lib/libsfml-network-d.2.6.1.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate _deps/sfml-build/lib/libsfml-network-d.2.6.dylib

_deps/sfml-build/lib/libsfml-network-d.dylib: _deps/sfml-build/lib/libsfml-network-d.2.6.1.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate _deps/sfml-build/lib/libsfml-network-d.dylib

# Rule to build all files generated by this target.
_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/build: _deps/sfml-build/lib/libsfml-network-d.dylib
.PHONY : _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/build

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/clean:
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network && $(CMAKE_COMMAND) -P CMakeFiles/sfml-network.dir/cmake_clean.cmake
.PHONY : _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/clean

_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/depend:
	cd /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/elionkaraboja/CLionProjects/a_star/test /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-src/src/SFML/Network /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network /Users/elionkaraboja/CLionProjects/a_star/test/cmake-build-debug/_deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/sfml-build/src/SFML/Network/CMakeFiles/sfml-network.dir/depend
