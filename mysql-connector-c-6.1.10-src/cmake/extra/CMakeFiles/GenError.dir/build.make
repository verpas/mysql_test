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

# Utility rule file for GenError.

# Include the progress variables for this target.
include extra/CMakeFiles/GenError.dir/progress.make

extra/CMakeFiles/GenError: include/mysqld_error.h
extra/CMakeFiles/GenError: sql/share/english/errmsg.sys
extra/CMakeFiles/GenError: ../sql/share/errmsg-utf8.txt


include/mysqld_error.h: ../sql/share/errmsg-utf8.txt
include/mysqld_error.h: ../extra/comp_err.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ../include/mysqld_error.h, ../sql/share/english/errmsg.sys"
	cd /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/extra && ./comp_err --charset=/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/sql/share/charsets --out-dir=/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/sql/share/ --header_file=/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/include/mysqld_error.h --name_file=/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/include/mysqld_ername.h --state_file=/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/include/sql_state.h --in_file=/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/sql/share/errmsg-utf8.txt

sql/share/english/errmsg.sys: include/mysqld_error.h
	@$(CMAKE_COMMAND) -E touch_nocreate sql/share/english/errmsg.sys

GenError: extra/CMakeFiles/GenError
GenError: include/mysqld_error.h
GenError: sql/share/english/errmsg.sys
GenError: extra/CMakeFiles/GenError.dir/build.make

.PHONY : GenError

# Rule to build all files generated by this target.
extra/CMakeFiles/GenError.dir/build: GenError

.PHONY : extra/CMakeFiles/GenError.dir/build

extra/CMakeFiles/GenError.dir/clean:
	cd /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/extra && $(CMAKE_COMMAND) -P CMakeFiles/GenError.dir/cmake_clean.cmake
.PHONY : extra/CMakeFiles/GenError.dir/clean

extra/CMakeFiles/GenError.dir/depend:
	cd /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/extra /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/extra /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/extra/CMakeFiles/GenError.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : extra/CMakeFiles/GenError.dir/depend

