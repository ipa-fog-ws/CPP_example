# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fog-ws/Dropbox/Code/04-CPP/03-eigen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fog-ws/Dropbox/Code/04-CPP/03-eigen/build

# Include any dependencies generated for this target.
include CMakeFiles/01-eigen-example.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/01-eigen-example.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/01-eigen-example.dir/flags.make

CMakeFiles/01-eigen-example.dir/src/01-eigen-example.cpp.o: CMakeFiles/01-eigen-example.dir/flags.make
CMakeFiles/01-eigen-example.dir/src/01-eigen-example.cpp.o: ../src/01-eigen-example.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fog-ws/Dropbox/Code/04-CPP/03-eigen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/01-eigen-example.dir/src/01-eigen-example.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/01-eigen-example.dir/src/01-eigen-example.cpp.o -c /home/fog-ws/Dropbox/Code/04-CPP/03-eigen/src/01-eigen-example.cpp

CMakeFiles/01-eigen-example.dir/src/01-eigen-example.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/01-eigen-example.dir/src/01-eigen-example.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fog-ws/Dropbox/Code/04-CPP/03-eigen/src/01-eigen-example.cpp > CMakeFiles/01-eigen-example.dir/src/01-eigen-example.cpp.i

CMakeFiles/01-eigen-example.dir/src/01-eigen-example.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/01-eigen-example.dir/src/01-eigen-example.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fog-ws/Dropbox/Code/04-CPP/03-eigen/src/01-eigen-example.cpp -o CMakeFiles/01-eigen-example.dir/src/01-eigen-example.cpp.s

CMakeFiles/01-eigen-example.dir/src/01-eigen-example.cpp.o.requires:

.PHONY : CMakeFiles/01-eigen-example.dir/src/01-eigen-example.cpp.o.requires

CMakeFiles/01-eigen-example.dir/src/01-eigen-example.cpp.o.provides: CMakeFiles/01-eigen-example.dir/src/01-eigen-example.cpp.o.requires
	$(MAKE) -f CMakeFiles/01-eigen-example.dir/build.make CMakeFiles/01-eigen-example.dir/src/01-eigen-example.cpp.o.provides.build
.PHONY : CMakeFiles/01-eigen-example.dir/src/01-eigen-example.cpp.o.provides

CMakeFiles/01-eigen-example.dir/src/01-eigen-example.cpp.o.provides.build: CMakeFiles/01-eigen-example.dir/src/01-eigen-example.cpp.o


# Object files for target 01-eigen-example
01__eigen__example_OBJECTS = \
"CMakeFiles/01-eigen-example.dir/src/01-eigen-example.cpp.o"

# External object files for target 01-eigen-example
01__eigen__example_EXTERNAL_OBJECTS =

01-eigen-example: CMakeFiles/01-eigen-example.dir/src/01-eigen-example.cpp.o
01-eigen-example: CMakeFiles/01-eigen-example.dir/build.make
01-eigen-example: CMakeFiles/01-eigen-example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fog-ws/Dropbox/Code/04-CPP/03-eigen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 01-eigen-example"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/01-eigen-example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/01-eigen-example.dir/build: 01-eigen-example

.PHONY : CMakeFiles/01-eigen-example.dir/build

CMakeFiles/01-eigen-example.dir/requires: CMakeFiles/01-eigen-example.dir/src/01-eigen-example.cpp.o.requires

.PHONY : CMakeFiles/01-eigen-example.dir/requires

CMakeFiles/01-eigen-example.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/01-eigen-example.dir/cmake_clean.cmake
.PHONY : CMakeFiles/01-eigen-example.dir/clean

CMakeFiles/01-eigen-example.dir/depend:
	cd /home/fog-ws/Dropbox/Code/04-CPP/03-eigen/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fog-ws/Dropbox/Code/04-CPP/03-eigen /home/fog-ws/Dropbox/Code/04-CPP/03-eigen /home/fog-ws/Dropbox/Code/04-CPP/03-eigen/build /home/fog-ws/Dropbox/Code/04-CPP/03-eigen/build /home/fog-ws/Dropbox/Code/04-CPP/03-eigen/build/CMakeFiles/01-eigen-example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/01-eigen-example.dir/depend

