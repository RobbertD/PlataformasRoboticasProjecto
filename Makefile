# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/cmake-gui -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/robbert/Documents/Robotica/CMakeFiles /home/robbert/Documents/Robotica/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/robbert/Documents/Robotica/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named shapeFinder

# Build rule for target.
shapeFinder: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 shapeFinder
.PHONY : shapeFinder

# fast build rule for target.
shapeFinder/fast:
	$(MAKE) -f CMakeFiles/shapeFinder.dir/build.make CMakeFiles/shapeFinder.dir/build
.PHONY : shapeFinder/fast

colorThreshold.o: colorThreshold.cpp.o

.PHONY : colorThreshold.o

# target to build an object file
colorThreshold.cpp.o:
	$(MAKE) -f CMakeFiles/shapeFinder.dir/build.make CMakeFiles/shapeFinder.dir/colorThreshold.cpp.o
.PHONY : colorThreshold.cpp.o

colorThreshold.i: colorThreshold.cpp.i

.PHONY : colorThreshold.i

# target to preprocess a source file
colorThreshold.cpp.i:
	$(MAKE) -f CMakeFiles/shapeFinder.dir/build.make CMakeFiles/shapeFinder.dir/colorThreshold.cpp.i
.PHONY : colorThreshold.cpp.i

colorThreshold.s: colorThreshold.cpp.s

.PHONY : colorThreshold.s

# target to generate assembly for a file
colorThreshold.cpp.s:
	$(MAKE) -f CMakeFiles/shapeFinder.dir/build.make CMakeFiles/shapeFinder.dir/colorThreshold.cpp.s
.PHONY : colorThreshold.cpp.s

findShape.o: findShape.cpp.o

.PHONY : findShape.o

# target to build an object file
findShape.cpp.o:
	$(MAKE) -f CMakeFiles/shapeFinder.dir/build.make CMakeFiles/shapeFinder.dir/findShape.cpp.o
.PHONY : findShape.cpp.o

findShape.i: findShape.cpp.i

.PHONY : findShape.i

# target to preprocess a source file
findShape.cpp.i:
	$(MAKE) -f CMakeFiles/shapeFinder.dir/build.make CMakeFiles/shapeFinder.dir/findShape.cpp.i
.PHONY : findShape.cpp.i

findShape.s: findShape.cpp.s

.PHONY : findShape.s

# target to generate assembly for a file
findShape.cpp.s:
	$(MAKE) -f CMakeFiles/shapeFinder.dir/build.make CMakeFiles/shapeFinder.dir/findShape.cpp.s
.PHONY : findShape.cpp.s

shape.o: shape.cpp.o

.PHONY : shape.o

# target to build an object file
shape.cpp.o:
	$(MAKE) -f CMakeFiles/shapeFinder.dir/build.make CMakeFiles/shapeFinder.dir/shape.cpp.o
.PHONY : shape.cpp.o

shape.i: shape.cpp.i

.PHONY : shape.i

# target to preprocess a source file
shape.cpp.i:
	$(MAKE) -f CMakeFiles/shapeFinder.dir/build.make CMakeFiles/shapeFinder.dir/shape.cpp.i
.PHONY : shape.cpp.i

shape.s: shape.cpp.s

.PHONY : shape.s

# target to generate assembly for a file
shape.cpp.s:
	$(MAKE) -f CMakeFiles/shapeFinder.dir/build.make CMakeFiles/shapeFinder.dir/shape.cpp.s
.PHONY : shape.cpp.s

tcp.o: tcp.cpp.o

.PHONY : tcp.o

# target to build an object file
tcp.cpp.o:
	$(MAKE) -f CMakeFiles/shapeFinder.dir/build.make CMakeFiles/shapeFinder.dir/tcp.cpp.o
.PHONY : tcp.cpp.o

tcp.i: tcp.cpp.i

.PHONY : tcp.i

# target to preprocess a source file
tcp.cpp.i:
	$(MAKE) -f CMakeFiles/shapeFinder.dir/build.make CMakeFiles/shapeFinder.dir/tcp.cpp.i
.PHONY : tcp.cpp.i

tcp.s: tcp.cpp.s

.PHONY : tcp.s

# target to generate assembly for a file
tcp.cpp.s:
	$(MAKE) -f CMakeFiles/shapeFinder.dir/build.make CMakeFiles/shapeFinder.dir/tcp.cpp.s
.PHONY : tcp.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... shapeFinder"
	@echo "... colorThreshold.o"
	@echo "... colorThreshold.i"
	@echo "... colorThreshold.s"
	@echo "... findShape.o"
	@echo "... findShape.i"
	@echo "... findShape.s"
	@echo "... shape.o"
	@echo "... shape.i"
	@echo "... shape.s"
	@echo "... tcp.o"
	@echo "... tcp.i"
	@echo "... tcp.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
