# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /snap/clion/139/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/139/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/eujin/CLionProjects/CNNfromScratch

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/eujin/CLionProjects/CNNfromScratch/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CNNfromScratch.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CNNfromScratch.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CNNfromScratch.dir/flags.make

CMakeFiles/CNNfromScratch.dir/main.cpp.o: CMakeFiles/CNNfromScratch.dir/flags.make
CMakeFiles/CNNfromScratch.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eujin/CLionProjects/CNNfromScratch/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CNNfromScratch.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CNNfromScratch.dir/main.cpp.o -c /home/eujin/CLionProjects/CNNfromScratch/main.cpp

CMakeFiles/CNNfromScratch.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CNNfromScratch.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eujin/CLionProjects/CNNfromScratch/main.cpp > CMakeFiles/CNNfromScratch.dir/main.cpp.i

CMakeFiles/CNNfromScratch.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CNNfromScratch.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eujin/CLionProjects/CNNfromScratch/main.cpp -o CMakeFiles/CNNfromScratch.dir/main.cpp.s

# Object files for target CNNfromScratch
CNNfromScratch_OBJECTS = \
"CMakeFiles/CNNfromScratch.dir/main.cpp.o"

# External object files for target CNNfromScratch
CNNfromScratch_EXTERNAL_OBJECTS =

CNNfromScratch: CMakeFiles/CNNfromScratch.dir/main.cpp.o
CNNfromScratch: CMakeFiles/CNNfromScratch.dir/build.make
CNNfromScratch: CMakeFiles/CNNfromScratch.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/eujin/CLionProjects/CNNfromScratch/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CNNfromScratch"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CNNfromScratch.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CNNfromScratch.dir/build: CNNfromScratch

.PHONY : CMakeFiles/CNNfromScratch.dir/build

CMakeFiles/CNNfromScratch.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CNNfromScratch.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CNNfromScratch.dir/clean

CMakeFiles/CNNfromScratch.dir/depend:
	cd /home/eujin/CLionProjects/CNNfromScratch/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eujin/CLionProjects/CNNfromScratch /home/eujin/CLionProjects/CNNfromScratch /home/eujin/CLionProjects/CNNfromScratch/cmake-build-debug /home/eujin/CLionProjects/CNNfromScratch/cmake-build-debug /home/eujin/CLionProjects/CNNfromScratch/cmake-build-debug/CMakeFiles/CNNfromScratch.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CNNfromScratch.dir/depend
