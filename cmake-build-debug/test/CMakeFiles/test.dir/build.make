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
CMAKE_SOURCE_DIR = /Users/elionkaraboja/CLionProjects/a_star

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/elionkaraboja/CLionProjects/a_star/cmake-build-debug

# Include any dependencies generated for this target.
include test/CMakeFiles/test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/test.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test.dir/flags.make

test/CMakeFiles/test.dir/GridTest.cpp.o: test/CMakeFiles/test.dir/flags.make
test/CMakeFiles/test.dir/GridTest.cpp.o: /Users/elionkaraboja/CLionProjects/a_star/test/GridTest.cpp
test/CMakeFiles/test.dir/GridTest.cpp.o: test/CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/elionkaraboja/CLionProjects/a_star/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/test.dir/GridTest.cpp.o"
	cd /Users/elionkaraboja/CLionProjects/a_star/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/test.dir/GridTest.cpp.o -MF CMakeFiles/test.dir/GridTest.cpp.o.d -o CMakeFiles/test.dir/GridTest.cpp.o -c /Users/elionkaraboja/CLionProjects/a_star/test/GridTest.cpp

test/CMakeFiles/test.dir/GridTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/GridTest.cpp.i"
	cd /Users/elionkaraboja/CLionProjects/a_star/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/elionkaraboja/CLionProjects/a_star/test/GridTest.cpp > CMakeFiles/test.dir/GridTest.cpp.i

test/CMakeFiles/test.dir/GridTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/GridTest.cpp.s"
	cd /Users/elionkaraboja/CLionProjects/a_star/cmake-build-debug/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/elionkaraboja/CLionProjects/a_star/test/GridTest.cpp -o CMakeFiles/test.dir/GridTest.cpp.s

# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/GridTest.cpp.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

test/test: test/CMakeFiles/test.dir/GridTest.cpp.o
test/test: test/CMakeFiles/test.dir/build.make
test/test: lib/libgtest_main.1.14.0.dylib
test/test: _deps/sfml-build/lib/libsfml-graphics-d.2.6.1.dylib
test/test: lib/libgtest.1.14.0.dylib
test/test: _deps/sfml-build/lib/libsfml-window-d.2.6.1.dylib
test/test: _deps/sfml-build/lib/libsfml-system-d.2.6.1.dylib
test/test: test/CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/elionkaraboja/CLionProjects/a_star/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test"
	cd /Users/elionkaraboja/CLionProjects/a_star/cmake-build-debug/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test.dir/build: test/test
.PHONY : test/CMakeFiles/test.dir/build

test/CMakeFiles/test.dir/clean:
	cd /Users/elionkaraboja/CLionProjects/a_star/cmake-build-debug/test && $(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test.dir/clean

test/CMakeFiles/test.dir/depend:
	cd /Users/elionkaraboja/CLionProjects/a_star/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/elionkaraboja/CLionProjects/a_star /Users/elionkaraboja/CLionProjects/a_star/test /Users/elionkaraboja/CLionProjects/a_star/cmake-build-debug /Users/elionkaraboja/CLionProjects/a_star/cmake-build-debug/test /Users/elionkaraboja/CLionProjects/a_star/cmake-build-debug/test/CMakeFiles/test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/test.dir/depend

