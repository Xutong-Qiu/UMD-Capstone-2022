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
CMAKE_SOURCE_DIR = /homes/x/q/xqiu1234/home/enee408m/team1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /homes/x/q/xqiu1234/home/enee408m/team1

# Include any dependencies generated for this target.
include demo/CMakeFiles/demo.exe.dir/depend.make

# Include the progress variables for this target.
include demo/CMakeFiles/demo.exe.dir/progress.make

# Include the compile flags for this target's objects.
include demo/CMakeFiles/demo.exe.dir/flags.make

demo/CMakeFiles/demo.exe.dir/demo.cpp.o: demo/CMakeFiles/demo.exe.dir/flags.make
demo/CMakeFiles/demo.exe.dir/demo.cpp.o: demo/demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/homes/x/q/xqiu1234/home/enee408m/team1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object demo/CMakeFiles/demo.exe.dir/demo.cpp.o"
	cd /homes/x/q/xqiu1234/home/enee408m/team1/demo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/demo.exe.dir/demo.cpp.o -c /homes/x/q/xqiu1234/home/enee408m/team1/demo/demo.cpp

demo/CMakeFiles/demo.exe.dir/demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.exe.dir/demo.cpp.i"
	cd /homes/x/q/xqiu1234/home/enee408m/team1/demo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /homes/x/q/xqiu1234/home/enee408m/team1/demo/demo.cpp > CMakeFiles/demo.exe.dir/demo.cpp.i

demo/CMakeFiles/demo.exe.dir/demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.exe.dir/demo.cpp.s"
	cd /homes/x/q/xqiu1234/home/enee408m/team1/demo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /homes/x/q/xqiu1234/home/enee408m/team1/demo/demo.cpp -o CMakeFiles/demo.exe.dir/demo.cpp.s

# Object files for target demo.exe
demo_exe_OBJECTS = \
"CMakeFiles/demo.exe.dir/demo.cpp.o"

# External object files for target demo.exe
demo_exe_EXTERNAL_OBJECTS =

demo/demo.exe: demo/CMakeFiles/demo.exe.dir/demo.cpp.o
demo/demo.exe: demo/CMakeFiles/demo.exe.dir/build.make
demo/demo.exe: src/libteam1_src.a
demo/demo.exe: demo/CMakeFiles/demo.exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/homes/x/q/xqiu1234/home/enee408m/team1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable demo.exe"
	cd /homes/x/q/xqiu1234/home/enee408m/team1/demo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/demo.exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
demo/CMakeFiles/demo.exe.dir/build: demo/demo.exe

.PHONY : demo/CMakeFiles/demo.exe.dir/build

demo/CMakeFiles/demo.exe.dir/clean:
	cd /homes/x/q/xqiu1234/home/enee408m/team1/demo && $(CMAKE_COMMAND) -P CMakeFiles/demo.exe.dir/cmake_clean.cmake
.PHONY : demo/CMakeFiles/demo.exe.dir/clean

demo/CMakeFiles/demo.exe.dir/depend:
	cd /homes/x/q/xqiu1234/home/enee408m/team1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /homes/x/q/xqiu1234/home/enee408m/team1 /homes/x/q/xqiu1234/home/enee408m/team1/demo /homes/x/q/xqiu1234/home/enee408m/team1 /homes/x/q/xqiu1234/home/enee408m/team1/demo /homes/x/q/xqiu1234/home/enee408m/team1/demo/CMakeFiles/demo.exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : demo/CMakeFiles/demo.exe.dir/depend
