# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /Users/verpas/Desktop/cmake-3.8.1/bin/cmake

# The command to remove a file.
RM = /Users/verpas/Desktop/cmake-3.8.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake

# Include any dependencies generated for this target.
include libmysql/CMakeFiles/libmysql_api_test.dir/depend.make

# Include the progress variables for this target.
include libmysql/CMakeFiles/libmysql_api_test.dir/progress.make

# Include the compile flags for this target's objects.
include libmysql/CMakeFiles/libmysql_api_test.dir/flags.make

libmysql/CMakeFiles/libmysql_api_test.dir/api_test.c.o: libmysql/CMakeFiles/libmysql_api_test.dir/flags.make
libmysql/CMakeFiles/libmysql_api_test.dir/api_test.c.o: libmysql/api_test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libmysql/CMakeFiles/libmysql_api_test.dir/api_test.c.o"
	cd /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/libmysql_api_test.dir/api_test.c.o   -c /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql/api_test.c

libmysql/CMakeFiles/libmysql_api_test.dir/api_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/libmysql_api_test.dir/api_test.c.i"
	cd /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql/api_test.c > CMakeFiles/libmysql_api_test.dir/api_test.c.i

libmysql/CMakeFiles/libmysql_api_test.dir/api_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/libmysql_api_test.dir/api_test.c.s"
	cd /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql/api_test.c -o CMakeFiles/libmysql_api_test.dir/api_test.c.s

libmysql/CMakeFiles/libmysql_api_test.dir/api_test.c.o.requires:

.PHONY : libmysql/CMakeFiles/libmysql_api_test.dir/api_test.c.o.requires

libmysql/CMakeFiles/libmysql_api_test.dir/api_test.c.o.provides: libmysql/CMakeFiles/libmysql_api_test.dir/api_test.c.o.requires
	$(MAKE) -f libmysql/CMakeFiles/libmysql_api_test.dir/build.make libmysql/CMakeFiles/libmysql_api_test.dir/api_test.c.o.provides.build
.PHONY : libmysql/CMakeFiles/libmysql_api_test.dir/api_test.c.o.provides

libmysql/CMakeFiles/libmysql_api_test.dir/api_test.c.o.provides.build: libmysql/CMakeFiles/libmysql_api_test.dir/api_test.c.o


# Object files for target libmysql_api_test
libmysql_api_test_OBJECTS = \
"CMakeFiles/libmysql_api_test.dir/api_test.c.o"

# External object files for target libmysql_api_test
libmysql_api_test_EXTERNAL_OBJECTS =

libmysql/libmysql_api_test: libmysql/CMakeFiles/libmysql_api_test.dir/api_test.c.o
libmysql/libmysql_api_test: libmysql/CMakeFiles/libmysql_api_test.dir/build.make
libmysql/libmysql_api_test: libmysql/libmysqlclient.18.dylib
libmysql/libmysql_api_test: libmysql/CMakeFiles/libmysql_api_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable libmysql_api_test"
	cd /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libmysql_api_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libmysql/CMakeFiles/libmysql_api_test.dir/build: libmysql/libmysql_api_test

.PHONY : libmysql/CMakeFiles/libmysql_api_test.dir/build

libmysql/CMakeFiles/libmysql_api_test.dir/requires: libmysql/CMakeFiles/libmysql_api_test.dir/api_test.c.o.requires

.PHONY : libmysql/CMakeFiles/libmysql_api_test.dir/requires

libmysql/CMakeFiles/libmysql_api_test.dir/clean:
	cd /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql && $(CMAKE_COMMAND) -P CMakeFiles/libmysql_api_test.dir/cmake_clean.cmake
.PHONY : libmysql/CMakeFiles/libmysql_api_test.dir/clean

libmysql/CMakeFiles/libmysql_api_test.dir/depend:
	cd /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/libmysql /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql/CMakeFiles/libmysql_api_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libmysql/CMakeFiles/libmysql_api_test.dir/depend

