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
include test/test05/CMakeFiles/driver5.exe.dir/depend.make

# Include the progress variables for this target.
include test/test05/CMakeFiles/driver5.exe.dir/progress.make

# Include the compile flags for this target's objects.
include test/test05/CMakeFiles/driver5.exe.dir/flags.make

test/test05/CMakeFiles/driver5.exe.dir/driver.cpp.o: test/test05/CMakeFiles/driver5.exe.dir/flags.make
test/test05/CMakeFiles/driver5.exe.dir/driver.cpp.o: test/test05/driver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/homes/x/q/xqiu1234/home/enee408m/team1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/test05/CMakeFiles/driver5.exe.dir/driver.cpp.o"
	cd /homes/x/q/xqiu1234/home/enee408m/team1/test/test05 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/driver5.exe.dir/driver.cpp.o -c /homes/x/q/xqiu1234/home/enee408m/team1/test/test05/driver.cpp

test/test05/CMakeFiles/driver5.exe.dir/driver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/driver5.exe.dir/driver.cpp.i"
	cd /homes/x/q/xqiu1234/home/enee408m/team1/test/test05 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /homes/x/q/xqiu1234/home/enee408m/team1/test/test05/driver.cpp > CMakeFiles/driver5.exe.dir/driver.cpp.i

test/test05/CMakeFiles/driver5.exe.dir/driver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/driver5.exe.dir/driver.cpp.s"
	cd /homes/x/q/xqiu1234/home/enee408m/team1/test/test05 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /homes/x/q/xqiu1234/home/enee408m/team1/test/test05/driver.cpp -o CMakeFiles/driver5.exe.dir/driver.cpp.s

# Object files for target driver5.exe
driver5_exe_OBJECTS = \
"CMakeFiles/driver5.exe.dir/driver.cpp.o"

# External object files for target driver5.exe
driver5_exe_EXTERNAL_OBJECTS =

test/test05/driver5.exe: test/test05/CMakeFiles/driver5.exe.dir/driver.cpp.o
test/test05/driver5.exe: test/test05/CMakeFiles/driver5.exe.dir/build.make
test/test05/driver5.exe: src/libteam1_src.a
test/test05/driver5.exe: test/test05/CMakeFiles/driver5.exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/homes/x/q/xqiu1234/home/enee408m/team1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable driver5.exe"
	cd /homes/x/q/xqiu1234/home/enee408m/team1/test/test05 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/driver5.exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/test05/CMakeFiles/driver5.exe.dir/build: test/test05/driver5.exe

.PHONY : test/test05/CMakeFiles/driver5.exe.dir/build

test/test05/CMakeFiles/driver5.exe.dir/clean:
	cd /homes/x/q/xqiu1234/home/enee408m/team1/test/test05 && $(CMAKE_COMMAND) -P CMakeFiles/driver5.exe.dir/cmake_clean.cmake
.PHONY : test/test05/CMakeFiles/driver5.exe.dir/clean

test/test05/CMakeFiles/driver5.exe.dir/depend:
	cd /homes/x/q/xqiu1234/home/enee408m/team1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /homes/x/q/xqiu1234/home/enee408m/team1 /homes/x/q/xqiu1234/home/enee408m/team1/test/test05 /homes/x/q/xqiu1234/home/enee408m/team1 /homes/x/q/xqiu1234/home/enee408m/team1/test/test05 /homes/x/q/xqiu1234/home/enee408m/team1/test/test05/CMakeFiles/driver5.exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/test05/CMakeFiles/driver5.exe.dir/depend
