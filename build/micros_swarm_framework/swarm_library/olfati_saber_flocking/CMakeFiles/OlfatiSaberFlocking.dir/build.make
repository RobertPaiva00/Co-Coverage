# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/roberto/COverage_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/roberto/COverage_ws/build

# Include any dependencies generated for this target.
include micros_swarm_framework/swarm_library/olfati_saber_flocking/CMakeFiles/OlfatiSaberFlocking.dir/depend.make

# Include the progress variables for this target.
include micros_swarm_framework/swarm_library/olfati_saber_flocking/CMakeFiles/OlfatiSaberFlocking.dir/progress.make

# Include the compile flags for this target's objects.
include micros_swarm_framework/swarm_library/olfati_saber_flocking/CMakeFiles/OlfatiSaberFlocking.dir/flags.make

micros_swarm_framework/swarm_library/olfati_saber_flocking/CMakeFiles/OlfatiSaberFlocking.dir/src/olfati_saber_flocking.cpp.o: micros_swarm_framework/swarm_library/olfati_saber_flocking/CMakeFiles/OlfatiSaberFlocking.dir/flags.make
micros_swarm_framework/swarm_library/olfati_saber_flocking/CMakeFiles/OlfatiSaberFlocking.dir/src/olfati_saber_flocking.cpp.o: /home/roberto/COverage_ws/src/micros_swarm_framework/swarm_library/olfati_saber_flocking/src/olfati_saber_flocking.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/roberto/COverage_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object micros_swarm_framework/swarm_library/olfati_saber_flocking/CMakeFiles/OlfatiSaberFlocking.dir/src/olfati_saber_flocking.cpp.o"
	cd /home/roberto/COverage_ws/build/micros_swarm_framework/swarm_library/olfati_saber_flocking && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OlfatiSaberFlocking.dir/src/olfati_saber_flocking.cpp.o -c /home/roberto/COverage_ws/src/micros_swarm_framework/swarm_library/olfati_saber_flocking/src/olfati_saber_flocking.cpp

micros_swarm_framework/swarm_library/olfati_saber_flocking/CMakeFiles/OlfatiSaberFlocking.dir/src/olfati_saber_flocking.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OlfatiSaberFlocking.dir/src/olfati_saber_flocking.cpp.i"
	cd /home/roberto/COverage_ws/build/micros_swarm_framework/swarm_library/olfati_saber_flocking && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/roberto/COverage_ws/src/micros_swarm_framework/swarm_library/olfati_saber_flocking/src/olfati_saber_flocking.cpp > CMakeFiles/OlfatiSaberFlocking.dir/src/olfati_saber_flocking.cpp.i

micros_swarm_framework/swarm_library/olfati_saber_flocking/CMakeFiles/OlfatiSaberFlocking.dir/src/olfati_saber_flocking.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OlfatiSaberFlocking.dir/src/olfati_saber_flocking.cpp.s"
	cd /home/roberto/COverage_ws/build/micros_swarm_framework/swarm_library/olfati_saber_flocking && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/roberto/COverage_ws/src/micros_swarm_framework/swarm_library/olfati_saber_flocking/src/olfati_saber_flocking.cpp -o CMakeFiles/OlfatiSaberFlocking.dir/src/olfati_saber_flocking.cpp.s

# Object files for target OlfatiSaberFlocking
OlfatiSaberFlocking_OBJECTS = \
"CMakeFiles/OlfatiSaberFlocking.dir/src/olfati_saber_flocking.cpp.o"

# External object files for target OlfatiSaberFlocking
OlfatiSaberFlocking_EXTERNAL_OBJECTS =

/home/roberto/COverage_ws/devel/lib/libOlfatiSaberFlocking.so: micros_swarm_framework/swarm_library/olfati_saber_flocking/CMakeFiles/OlfatiSaberFlocking.dir/src/olfati_saber_flocking.cpp.o
/home/roberto/COverage_ws/devel/lib/libOlfatiSaberFlocking.so: micros_swarm_framework/swarm_library/olfati_saber_flocking/CMakeFiles/OlfatiSaberFlocking.dir/build.make
/home/roberto/COverage_ws/devel/lib/libOlfatiSaberFlocking.so: micros_swarm_framework/swarm_library/olfati_saber_flocking/CMakeFiles/OlfatiSaberFlocking.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/roberto/COverage_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/roberto/COverage_ws/devel/lib/libOlfatiSaberFlocking.so"
	cd /home/roberto/COverage_ws/build/micros_swarm_framework/swarm_library/olfati_saber_flocking && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OlfatiSaberFlocking.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
micros_swarm_framework/swarm_library/olfati_saber_flocking/CMakeFiles/OlfatiSaberFlocking.dir/build: /home/roberto/COverage_ws/devel/lib/libOlfatiSaberFlocking.so

.PHONY : micros_swarm_framework/swarm_library/olfati_saber_flocking/CMakeFiles/OlfatiSaberFlocking.dir/build

micros_swarm_framework/swarm_library/olfati_saber_flocking/CMakeFiles/OlfatiSaberFlocking.dir/clean:
	cd /home/roberto/COverage_ws/build/micros_swarm_framework/swarm_library/olfati_saber_flocking && $(CMAKE_COMMAND) -P CMakeFiles/OlfatiSaberFlocking.dir/cmake_clean.cmake
.PHONY : micros_swarm_framework/swarm_library/olfati_saber_flocking/CMakeFiles/OlfatiSaberFlocking.dir/clean

micros_swarm_framework/swarm_library/olfati_saber_flocking/CMakeFiles/OlfatiSaberFlocking.dir/depend:
	cd /home/roberto/COverage_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/roberto/COverage_ws/src /home/roberto/COverage_ws/src/micros_swarm_framework/swarm_library/olfati_saber_flocking /home/roberto/COverage_ws/build /home/roberto/COverage_ws/build/micros_swarm_framework/swarm_library/olfati_saber_flocking /home/roberto/COverage_ws/build/micros_swarm_framework/swarm_library/olfati_saber_flocking/CMakeFiles/OlfatiSaberFlocking.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : micros_swarm_framework/swarm_library/olfati_saber_flocking/CMakeFiles/OlfatiSaberFlocking.dir/depend

