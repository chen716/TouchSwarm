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
include crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/CMakeFiles/sampleClient.dir/depend.make

# Include the progress variables for this target.
include crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/CMakeFiles/sampleClient.dir/progress.make

# Include the compile flags for this target's objects.
include crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/CMakeFiles/sampleClient.dir/flags.make

crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/CMakeFiles/sampleClient.dir/samples/SampleClient/SampleClient.cpp.o: crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/CMakeFiles/sampleClient.dir/flags.make
crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/CMakeFiles/sampleClient.dir/samples/SampleClient/SampleClient.cpp.o: /home/harvilab/Desktop/crazyswarm/ros_ws/src/crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/samples/SampleClient/SampleClient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/harvilab/Desktop/crazyswarm/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/CMakeFiles/sampleClient.dir/samples/SampleClient/SampleClient.cpp.o"
	cd /home/harvilab/Desktop/crazyswarm/ros_ws/build/crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sampleClient.dir/samples/SampleClient/SampleClient.cpp.o -c /home/harvilab/Desktop/crazyswarm/ros_ws/src/crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/samples/SampleClient/SampleClient.cpp

crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/CMakeFiles/sampleClient.dir/samples/SampleClient/SampleClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sampleClient.dir/samples/SampleClient/SampleClient.cpp.i"
	cd /home/harvilab/Desktop/crazyswarm/ros_ws/build/crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/harvilab/Desktop/crazyswarm/ros_ws/src/crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/samples/SampleClient/SampleClient.cpp > CMakeFiles/sampleClient.dir/samples/SampleClient/SampleClient.cpp.i

crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/CMakeFiles/sampleClient.dir/samples/SampleClient/SampleClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sampleClient.dir/samples/SampleClient/SampleClient.cpp.s"
	cd /home/harvilab/Desktop/crazyswarm/ros_ws/build/crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/harvilab/Desktop/crazyswarm/ros_ws/src/crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/samples/SampleClient/SampleClient.cpp -o CMakeFiles/sampleClient.dir/samples/SampleClient/SampleClient.cpp.s

# Object files for target sampleClient
sampleClient_OBJECTS = \
"CMakeFiles/sampleClient.dir/samples/SampleClient/SampleClient.cpp.o"

# External object files for target sampleClient
sampleClient_EXTERNAL_OBJECTS =

crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/sampleClient: crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/CMakeFiles/sampleClient.dir/samples/SampleClient/SampleClient.cpp.o
crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/sampleClient: crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/CMakeFiles/sampleClient.dir/build.make
crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/sampleClient: crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/CMakeFiles/sampleClient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/harvilab/Desktop/crazyswarm/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sampleClient"
	cd /home/harvilab/Desktop/crazyswarm/ros_ws/build/crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sampleClient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/CMakeFiles/sampleClient.dir/build: crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/sampleClient

.PHONY : crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/CMakeFiles/sampleClient.dir/build

crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/CMakeFiles/sampleClient.dir/clean:
	cd /home/harvilab/Desktop/crazyswarm/ros_ws/build/crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform && $(CMAKE_COMMAND) -P CMakeFiles/sampleClient.dir/cmake_clean.cmake
.PHONY : crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/CMakeFiles/sampleClient.dir/clean

crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/CMakeFiles/sampleClient.dir/depend:
	cd /home/harvilab/Desktop/crazyswarm/ros_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/harvilab/Desktop/crazyswarm/ros_ws/src /home/harvilab/Desktop/crazyswarm/ros_ws/src/crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform /home/harvilab/Desktop/crazyswarm/ros_ws/build /home/harvilab/Desktop/crazyswarm/ros_ws/build/crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform /home/harvilab/Desktop/crazyswarm/ros_ws/build/crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/CMakeFiles/sampleClient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : crazyswarm/externalDependencies/libmotioncapture/deps/NatNetSDKCrossplatform/CMakeFiles/sampleClient.dir/depend

