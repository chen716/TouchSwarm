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
CMAKE_SOURCE_DIR = /home/harvilab/Desktop/crazyswarm/ros_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/harvilab/Desktop/crazyswarm/ros_ws/build

# Include any dependencies generated for this target.
include crazyflie_tools/CMakeFiles/reboot.dir/depend.make

# Include the progress variables for this target.
include crazyflie_tools/CMakeFiles/reboot.dir/progress.make

# Include the compile flags for this target's objects.
include crazyflie_tools/CMakeFiles/reboot.dir/flags.make

crazyflie_tools/CMakeFiles/reboot.dir/src/reboot.cpp.o: crazyflie_tools/CMakeFiles/reboot.dir/flags.make
crazyflie_tools/CMakeFiles/reboot.dir/src/reboot.cpp.o: /home/harvilab/Desktop/crazyswarm/ros_ws/src/crazyflie_tools/src/reboot.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/harvilab/Desktop/crazyswarm/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object crazyflie_tools/CMakeFiles/reboot.dir/src/reboot.cpp.o"
	cd /home/harvilab/Desktop/crazyswarm/ros_ws/build/crazyflie_tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/reboot.dir/src/reboot.cpp.o -c /home/harvilab/Desktop/crazyswarm/ros_ws/src/crazyflie_tools/src/reboot.cpp

crazyflie_tools/CMakeFiles/reboot.dir/src/reboot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/reboot.dir/src/reboot.cpp.i"
	cd /home/harvilab/Desktop/crazyswarm/ros_ws/build/crazyflie_tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/harvilab/Desktop/crazyswarm/ros_ws/src/crazyflie_tools/src/reboot.cpp > CMakeFiles/reboot.dir/src/reboot.cpp.i

crazyflie_tools/CMakeFiles/reboot.dir/src/reboot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/reboot.dir/src/reboot.cpp.s"
	cd /home/harvilab/Desktop/crazyswarm/ros_ws/build/crazyflie_tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/harvilab/Desktop/crazyswarm/ros_ws/src/crazyflie_tools/src/reboot.cpp -o CMakeFiles/reboot.dir/src/reboot.cpp.s

# Object files for target reboot
reboot_OBJECTS = \
"CMakeFiles/reboot.dir/src/reboot.cpp.o"

# External object files for target reboot
reboot_EXTERNAL_OBJECTS =

/home/harvilab/Desktop/crazyswarm/ros_ws/devel/lib/crazyflie_tools/reboot: crazyflie_tools/CMakeFiles/reboot.dir/src/reboot.cpp.o
/home/harvilab/Desktop/crazyswarm/ros_ws/devel/lib/crazyflie_tools/reboot: crazyflie_tools/CMakeFiles/reboot.dir/build.make
/home/harvilab/Desktop/crazyswarm/ros_ws/devel/lib/crazyflie_tools/reboot: /home/harvilab/Desktop/crazyswarm/ros_ws/devel/lib/libcrazyflie_cpp.so
/home/harvilab/Desktop/crazyswarm/ros_ws/devel/lib/crazyflie_tools/reboot: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
/home/harvilab/Desktop/crazyswarm/ros_ws/devel/lib/crazyflie_tools/reboot: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
/home/harvilab/Desktop/crazyswarm/ros_ws/devel/lib/crazyflie_tools/reboot: crazyflie_tools/CMakeFiles/reboot.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/harvilab/Desktop/crazyswarm/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/harvilab/Desktop/crazyswarm/ros_ws/devel/lib/crazyflie_tools/reboot"
	cd /home/harvilab/Desktop/crazyswarm/ros_ws/build/crazyflie_tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/reboot.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
crazyflie_tools/CMakeFiles/reboot.dir/build: /home/harvilab/Desktop/crazyswarm/ros_ws/devel/lib/crazyflie_tools/reboot

.PHONY : crazyflie_tools/CMakeFiles/reboot.dir/build

crazyflie_tools/CMakeFiles/reboot.dir/clean:
	cd /home/harvilab/Desktop/crazyswarm/ros_ws/build/crazyflie_tools && $(CMAKE_COMMAND) -P CMakeFiles/reboot.dir/cmake_clean.cmake
.PHONY : crazyflie_tools/CMakeFiles/reboot.dir/clean

crazyflie_tools/CMakeFiles/reboot.dir/depend:
	cd /home/harvilab/Desktop/crazyswarm/ros_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/harvilab/Desktop/crazyswarm/ros_ws/src /home/harvilab/Desktop/crazyswarm/ros_ws/src/crazyflie_tools /home/harvilab/Desktop/crazyswarm/ros_ws/build /home/harvilab/Desktop/crazyswarm/ros_ws/build/crazyflie_tools /home/harvilab/Desktop/crazyswarm/ros_ws/build/crazyflie_tools/CMakeFiles/reboot.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : crazyflie_tools/CMakeFiles/reboot.dir/depend

