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
CMAKE_SOURCE_DIR = /home/robbert/Documents/Robotica

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/robbert/Documents/Robotica

# Include any dependencies generated for this target.
include CMakeFiles/shapeFinder.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/shapeFinder.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/shapeFinder.dir/flags.make

CMakeFiles/shapeFinder.dir/tcp.cpp.o: CMakeFiles/shapeFinder.dir/flags.make
CMakeFiles/shapeFinder.dir/tcp.cpp.o: tcp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robbert/Documents/Robotica/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/shapeFinder.dir/tcp.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/shapeFinder.dir/tcp.cpp.o -c /home/robbert/Documents/Robotica/tcp.cpp

CMakeFiles/shapeFinder.dir/tcp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shapeFinder.dir/tcp.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/robbert/Documents/Robotica/tcp.cpp > CMakeFiles/shapeFinder.dir/tcp.cpp.i

CMakeFiles/shapeFinder.dir/tcp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shapeFinder.dir/tcp.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/robbert/Documents/Robotica/tcp.cpp -o CMakeFiles/shapeFinder.dir/tcp.cpp.s

CMakeFiles/shapeFinder.dir/tcp.cpp.o.requires:

.PHONY : CMakeFiles/shapeFinder.dir/tcp.cpp.o.requires

CMakeFiles/shapeFinder.dir/tcp.cpp.o.provides: CMakeFiles/shapeFinder.dir/tcp.cpp.o.requires
	$(MAKE) -f CMakeFiles/shapeFinder.dir/build.make CMakeFiles/shapeFinder.dir/tcp.cpp.o.provides.build
.PHONY : CMakeFiles/shapeFinder.dir/tcp.cpp.o.provides

CMakeFiles/shapeFinder.dir/tcp.cpp.o.provides.build: CMakeFiles/shapeFinder.dir/tcp.cpp.o


CMakeFiles/shapeFinder.dir/findShape.cpp.o: CMakeFiles/shapeFinder.dir/flags.make
CMakeFiles/shapeFinder.dir/findShape.cpp.o: findShape.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robbert/Documents/Robotica/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/shapeFinder.dir/findShape.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/shapeFinder.dir/findShape.cpp.o -c /home/robbert/Documents/Robotica/findShape.cpp

CMakeFiles/shapeFinder.dir/findShape.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shapeFinder.dir/findShape.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/robbert/Documents/Robotica/findShape.cpp > CMakeFiles/shapeFinder.dir/findShape.cpp.i

CMakeFiles/shapeFinder.dir/findShape.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shapeFinder.dir/findShape.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/robbert/Documents/Robotica/findShape.cpp -o CMakeFiles/shapeFinder.dir/findShape.cpp.s

CMakeFiles/shapeFinder.dir/findShape.cpp.o.requires:

.PHONY : CMakeFiles/shapeFinder.dir/findShape.cpp.o.requires

CMakeFiles/shapeFinder.dir/findShape.cpp.o.provides: CMakeFiles/shapeFinder.dir/findShape.cpp.o.requires
	$(MAKE) -f CMakeFiles/shapeFinder.dir/build.make CMakeFiles/shapeFinder.dir/findShape.cpp.o.provides.build
.PHONY : CMakeFiles/shapeFinder.dir/findShape.cpp.o.provides

CMakeFiles/shapeFinder.dir/findShape.cpp.o.provides.build: CMakeFiles/shapeFinder.dir/findShape.cpp.o


CMakeFiles/shapeFinder.dir/colorThreshold.cpp.o: CMakeFiles/shapeFinder.dir/flags.make
CMakeFiles/shapeFinder.dir/colorThreshold.cpp.o: colorThreshold.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robbert/Documents/Robotica/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/shapeFinder.dir/colorThreshold.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/shapeFinder.dir/colorThreshold.cpp.o -c /home/robbert/Documents/Robotica/colorThreshold.cpp

CMakeFiles/shapeFinder.dir/colorThreshold.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shapeFinder.dir/colorThreshold.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/robbert/Documents/Robotica/colorThreshold.cpp > CMakeFiles/shapeFinder.dir/colorThreshold.cpp.i

CMakeFiles/shapeFinder.dir/colorThreshold.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shapeFinder.dir/colorThreshold.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/robbert/Documents/Robotica/colorThreshold.cpp -o CMakeFiles/shapeFinder.dir/colorThreshold.cpp.s

CMakeFiles/shapeFinder.dir/colorThreshold.cpp.o.requires:

.PHONY : CMakeFiles/shapeFinder.dir/colorThreshold.cpp.o.requires

CMakeFiles/shapeFinder.dir/colorThreshold.cpp.o.provides: CMakeFiles/shapeFinder.dir/colorThreshold.cpp.o.requires
	$(MAKE) -f CMakeFiles/shapeFinder.dir/build.make CMakeFiles/shapeFinder.dir/colorThreshold.cpp.o.provides.build
.PHONY : CMakeFiles/shapeFinder.dir/colorThreshold.cpp.o.provides

CMakeFiles/shapeFinder.dir/colorThreshold.cpp.o.provides.build: CMakeFiles/shapeFinder.dir/colorThreshold.cpp.o


CMakeFiles/shapeFinder.dir/shape.cpp.o: CMakeFiles/shapeFinder.dir/flags.make
CMakeFiles/shapeFinder.dir/shape.cpp.o: shape.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robbert/Documents/Robotica/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/shapeFinder.dir/shape.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/shapeFinder.dir/shape.cpp.o -c /home/robbert/Documents/Robotica/shape.cpp

CMakeFiles/shapeFinder.dir/shape.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shapeFinder.dir/shape.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/robbert/Documents/Robotica/shape.cpp > CMakeFiles/shapeFinder.dir/shape.cpp.i

CMakeFiles/shapeFinder.dir/shape.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shapeFinder.dir/shape.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/robbert/Documents/Robotica/shape.cpp -o CMakeFiles/shapeFinder.dir/shape.cpp.s

CMakeFiles/shapeFinder.dir/shape.cpp.o.requires:

.PHONY : CMakeFiles/shapeFinder.dir/shape.cpp.o.requires

CMakeFiles/shapeFinder.dir/shape.cpp.o.provides: CMakeFiles/shapeFinder.dir/shape.cpp.o.requires
	$(MAKE) -f CMakeFiles/shapeFinder.dir/build.make CMakeFiles/shapeFinder.dir/shape.cpp.o.provides.build
.PHONY : CMakeFiles/shapeFinder.dir/shape.cpp.o.provides

CMakeFiles/shapeFinder.dir/shape.cpp.o.provides.build: CMakeFiles/shapeFinder.dir/shape.cpp.o


# Object files for target shapeFinder
shapeFinder_OBJECTS = \
"CMakeFiles/shapeFinder.dir/tcp.cpp.o" \
"CMakeFiles/shapeFinder.dir/findShape.cpp.o" \
"CMakeFiles/shapeFinder.dir/colorThreshold.cpp.o" \
"CMakeFiles/shapeFinder.dir/shape.cpp.o"

# External object files for target shapeFinder
shapeFinder_EXTERNAL_OBJECTS =

shapeFinder: CMakeFiles/shapeFinder.dir/tcp.cpp.o
shapeFinder: CMakeFiles/shapeFinder.dir/findShape.cpp.o
shapeFinder: CMakeFiles/shapeFinder.dir/colorThreshold.cpp.o
shapeFinder: CMakeFiles/shapeFinder.dir/shape.cpp.o
shapeFinder: CMakeFiles/shapeFinder.dir/build.make
shapeFinder: /usr/local/lib/libopencv_stitching.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_superres.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_videostab.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_aruco.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_bgsegm.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_bioinspired.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_ccalib.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_dpm.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_face.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_freetype.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_fuzzy.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_hdf.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_img_hash.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_line_descriptor.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_optflow.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_reg.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_rgbd.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_saliency.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_stereo.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_structured_light.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_surface_matching.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_tracking.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_xfeatures2d.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_ximgproc.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_xobjdetect.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_xphoto.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_shape.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_photo.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_datasets.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_plot.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_text.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_dnn.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_ml.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_video.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_calib3d.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_features2d.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_highgui.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_videoio.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_phase_unwrapping.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_flann.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_imgcodecs.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_objdetect.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_imgproc.so.3.4.0
shapeFinder: /usr/local/lib/libopencv_core.so.3.4.0
shapeFinder: CMakeFiles/shapeFinder.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/robbert/Documents/Robotica/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable shapeFinder"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/shapeFinder.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/shapeFinder.dir/build: shapeFinder

.PHONY : CMakeFiles/shapeFinder.dir/build

CMakeFiles/shapeFinder.dir/requires: CMakeFiles/shapeFinder.dir/tcp.cpp.o.requires
CMakeFiles/shapeFinder.dir/requires: CMakeFiles/shapeFinder.dir/findShape.cpp.o.requires
CMakeFiles/shapeFinder.dir/requires: CMakeFiles/shapeFinder.dir/colorThreshold.cpp.o.requires
CMakeFiles/shapeFinder.dir/requires: CMakeFiles/shapeFinder.dir/shape.cpp.o.requires

.PHONY : CMakeFiles/shapeFinder.dir/requires

CMakeFiles/shapeFinder.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/shapeFinder.dir/cmake_clean.cmake
.PHONY : CMakeFiles/shapeFinder.dir/clean

CMakeFiles/shapeFinder.dir/depend:
	cd /home/robbert/Documents/Robotica && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/robbert/Documents/Robotica /home/robbert/Documents/Robotica /home/robbert/Documents/Robotica /home/robbert/Documents/Robotica /home/robbert/Documents/Robotica/CMakeFiles/shapeFinder.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/shapeFinder.dir/depend

