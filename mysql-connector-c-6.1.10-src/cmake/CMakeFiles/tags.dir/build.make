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

# Utility rule file for tags.

# Include the progress variables for this target.
include CMakeFiles/tags.dir/progress.make

CMakeFiles/tags:
	cd /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src && support-files/build-tags

tags: CMakeFiles/tags
tags: CMakeFiles/tags.dir/build.make

.PHONY : tags

# Rule to build all files generated by this target.
CMakeFiles/tags.dir/build: tags

.PHONY : CMakeFiles/tags.dir/build

CMakeFiles/tags.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tags.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tags.dir/clean

CMakeFiles/tags.dir/depend:
	cd /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/CMakeFiles/tags.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tags.dir/depend
