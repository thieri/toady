# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/build

# Include any dependencies generated for this target.
include CMakeFiles/gscam.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gscam.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gscam.dir/flags.make

CMakeFiles/gscam.dir/src/gscam.cpp.o: CMakeFiles/gscam.dir/flags.make
CMakeFiles/gscam.dir/src/gscam.cpp.o: /home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/src/src/gscam.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/gscam.dir/src/gscam.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gscam.dir/src/gscam.cpp.o -c /home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/src/src/gscam.cpp

CMakeFiles/gscam.dir/src/gscam.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gscam.dir/src/gscam.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/src/src/gscam.cpp > CMakeFiles/gscam.dir/src/gscam.cpp.i

CMakeFiles/gscam.dir/src/gscam.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gscam.dir/src/gscam.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/src/src/gscam.cpp -o CMakeFiles/gscam.dir/src/gscam.cpp.s

CMakeFiles/gscam.dir/src/gscam.cpp.o.requires:
.PHONY : CMakeFiles/gscam.dir/src/gscam.cpp.o.requires

CMakeFiles/gscam.dir/src/gscam.cpp.o.provides: CMakeFiles/gscam.dir/src/gscam.cpp.o.requires
	$(MAKE) -f CMakeFiles/gscam.dir/build.make CMakeFiles/gscam.dir/src/gscam.cpp.o.provides.build
.PHONY : CMakeFiles/gscam.dir/src/gscam.cpp.o.provides

CMakeFiles/gscam.dir/src/gscam.cpp.o.provides.build: CMakeFiles/gscam.dir/src/gscam.cpp.o

# Object files for target gscam
gscam_OBJECTS = \
"CMakeFiles/gscam.dir/src/gscam.cpp.o"

# External object files for target gscam
gscam_EXTERNAL_OBJECTS =

/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: CMakeFiles/gscam.dir/src/gscam.cpp.o
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: CMakeFiles/gscam.dir/build.make
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /opt/ros/indigo/lib/libimage_transport.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /opt/ros/indigo/lib/libmessage_filters.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /opt/ros/indigo/lib/libnodeletlib.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /opt/ros/indigo/lib/libbondcpp.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /opt/ros/indigo/lib/libclass_loader.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /usr/lib/libPocoFoundation.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /usr/lib/x86_64-linux-gnu/libdl.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /opt/ros/indigo/lib/libroslib.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /opt/ros/indigo/lib/libcamera_calibration_parsers.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /opt/ros/indigo/lib/libcamera_info_manager.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /opt/ros/indigo/lib/libroscpp.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /opt/ros/indigo/lib/librosconsole.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /usr/lib/liblog4cxx.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /opt/ros/indigo/lib/librostime.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /opt/ros/indigo/lib/libcpp_common.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so: CMakeFiles/gscam.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library /home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gscam.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gscam.dir/build: /home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/devel/lib/libgscam.so
.PHONY : CMakeFiles/gscam.dir/build

CMakeFiles/gscam.dir/requires: CMakeFiles/gscam.dir/src/gscam.cpp.o.requires
.PHONY : CMakeFiles/gscam.dir/requires

CMakeFiles/gscam.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gscam.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gscam.dir/clean

CMakeFiles/gscam.dir/depend:
	cd /home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/src /home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/src /home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/build /home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/build /home/thieri/Dropbox/Bauprojekte/Schildkrote/Elektronik/ps4eye/longjie/ps4eye-master/gscam/build/CMakeFiles/gscam.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gscam.dir/depend

