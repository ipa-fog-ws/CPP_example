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
CMAKE_SOURCE_DIR = /home/fog-ws/Dropbox/Code/04-CPP/02-cmake/ex3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fog-ws/Dropbox/Code/04-CPP/02-cmake/ex3/build

# Include any dependencies generated for this target.
include CMakeFiles/toDo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/toDo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/toDo.dir/flags.make

CMakeFiles/toDo.dir/main.cc.o: CMakeFiles/toDo.dir/flags.make
CMakeFiles/toDo.dir/main.cc.o: ../main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fog-ws/Dropbox/Code/04-CPP/02-cmake/ex3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/toDo.dir/main.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/toDo.dir/main.cc.o -c /home/fog-ws/Dropbox/Code/04-CPP/02-cmake/ex3/main.cc

CMakeFiles/toDo.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/toDo.dir/main.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fog-ws/Dropbox/Code/04-CPP/02-cmake/ex3/main.cc > CMakeFiles/toDo.dir/main.cc.i

CMakeFiles/toDo.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/toDo.dir/main.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fog-ws/Dropbox/Code/04-CPP/02-cmake/ex3/main.cc -o CMakeFiles/toDo.dir/main.cc.s

CMakeFiles/toDo.dir/main.cc.o.requires:

.PHONY : CMakeFiles/toDo.dir/main.cc.o.requires

CMakeFiles/toDo.dir/main.cc.o.provides: CMakeFiles/toDo.dir/main.cc.o.requires
	$(MAKE) -f CMakeFiles/toDo.dir/build.make CMakeFiles/toDo.dir/main.cc.o.provides.build
.PHONY : CMakeFiles/toDo.dir/main.cc.o.provides

CMakeFiles/toDo.dir/main.cc.o.provides.build: CMakeFiles/toDo.dir/main.cc.o


CMakeFiles/toDo.dir/ToDo.cc.o: CMakeFiles/toDo.dir/flags.make
CMakeFiles/toDo.dir/ToDo.cc.o: ../ToDo.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fog-ws/Dropbox/Code/04-CPP/02-cmake/ex3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/toDo.dir/ToDo.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/toDo.dir/ToDo.cc.o -c /home/fog-ws/Dropbox/Code/04-CPP/02-cmake/ex3/ToDo.cc

CMakeFiles/toDo.dir/ToDo.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/toDo.dir/ToDo.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fog-ws/Dropbox/Code/04-CPP/02-cmake/ex3/ToDo.cc > CMakeFiles/toDo.dir/ToDo.cc.i

CMakeFiles/toDo.dir/ToDo.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/toDo.dir/ToDo.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fog-ws/Dropbox/Code/04-CPP/02-cmake/ex3/ToDo.cc -o CMakeFiles/toDo.dir/ToDo.cc.s

CMakeFiles/toDo.dir/ToDo.cc.o.requires:

.PHONY : CMakeFiles/toDo.dir/ToDo.cc.o.requires

CMakeFiles/toDo.dir/ToDo.cc.o.provides: CMakeFiles/toDo.dir/ToDo.cc.o.requires
	$(MAKE) -f CMakeFiles/toDo.dir/build.make CMakeFiles/toDo.dir/ToDo.cc.o.provides.build
.PHONY : CMakeFiles/toDo.dir/ToDo.cc.o.provides

CMakeFiles/toDo.dir/ToDo.cc.o.provides.build: CMakeFiles/toDo.dir/ToDo.cc.o


# Object files for target toDo
toDo_OBJECTS = \
"CMakeFiles/toDo.dir/main.cc.o" \
"CMakeFiles/toDo.dir/ToDo.cc.o"

# External object files for target toDo
toDo_EXTERNAL_OBJECTS =

toDo: CMakeFiles/toDo.dir/main.cc.o
toDo: CMakeFiles/toDo.dir/ToDo.cc.o
toDo: CMakeFiles/toDo.dir/build.make
toDo: CMakeFiles/toDo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fog-ws/Dropbox/Code/04-CPP/02-cmake/ex3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable toDo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/toDo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/toDo.dir/build: toDo

.PHONY : CMakeFiles/toDo.dir/build

CMakeFiles/toDo.dir/requires: CMakeFiles/toDo.dir/main.cc.o.requires
CMakeFiles/toDo.dir/requires: CMakeFiles/toDo.dir/ToDo.cc.o.requires

.PHONY : CMakeFiles/toDo.dir/requires

CMakeFiles/toDo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/toDo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/toDo.dir/clean

CMakeFiles/toDo.dir/depend:
	cd /home/fog-ws/Dropbox/Code/04-CPP/02-cmake/ex3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fog-ws/Dropbox/Code/04-CPP/02-cmake/ex3 /home/fog-ws/Dropbox/Code/04-CPP/02-cmake/ex3 /home/fog-ws/Dropbox/Code/04-CPP/02-cmake/ex3/build /home/fog-ws/Dropbox/Code/04-CPP/02-cmake/ex3/build /home/fog-ws/Dropbox/Code/04-CPP/02-cmake/ex3/build/CMakeFiles/toDo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/toDo.dir/depend

