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
include libmysql/CMakeFiles/mysqlclient.dir/depend.make

# Include the progress variables for this target.
include libmysql/CMakeFiles/mysqlclient.dir/progress.make

# Include the compile flags for this target's objects.
include libmysql/CMakeFiles/mysqlclient.dir/flags.make

libmysql/mysqlclient_depends.c: libmysql/libclientlib.a
libmysql/mysqlclient_depends.c: dbug/libdbug.a
libmysql/mysqlclient_depends.c: strings/libstrings.a
libmysql/mysqlclient_depends.c: vio/libvio.a
libmysql/mysqlclient_depends.c: mysys/libmysys.a
libmysql/mysqlclient_depends.c: mysys_ssl/libmysys_ssl.a
libmysql/mysqlclient_depends.c: zlib/libzlib.a
libmysql/mysqlclient_depends.c: extra/yassl/libyassl.a
libmysql/mysqlclient_depends.c: extra/yassl/taocrypt/libtaocrypt.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating mysqlclient_depends.c"
	cd /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql && /Users/verpas/Desktop/cmake-3.8.1/bin/cmake -E touch /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql/mysqlclient_depends.c

libmysql/CMakeFiles/mysqlclient.dir/mysqlclient_depends.c.o: libmysql/CMakeFiles/mysqlclient.dir/flags.make
libmysql/CMakeFiles/mysqlclient.dir/mysqlclient_depends.c.o: libmysql/mysqlclient_depends.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libmysql/CMakeFiles/mysqlclient.dir/mysqlclient_depends.c.o"
	cd /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mysqlclient.dir/mysqlclient_depends.c.o   -c /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql/mysqlclient_depends.c

libmysql/CMakeFiles/mysqlclient.dir/mysqlclient_depends.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mysqlclient.dir/mysqlclient_depends.c.i"
	cd /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql/mysqlclient_depends.c > CMakeFiles/mysqlclient.dir/mysqlclient_depends.c.i

libmysql/CMakeFiles/mysqlclient.dir/mysqlclient_depends.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mysqlclient.dir/mysqlclient_depends.c.s"
	cd /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql/mysqlclient_depends.c -o CMakeFiles/mysqlclient.dir/mysqlclient_depends.c.s

libmysql/CMakeFiles/mysqlclient.dir/mysqlclient_depends.c.o.requires:

.PHONY : libmysql/CMakeFiles/mysqlclient.dir/mysqlclient_depends.c.o.requires

libmysql/CMakeFiles/mysqlclient.dir/mysqlclient_depends.c.o.provides: libmysql/CMakeFiles/mysqlclient.dir/mysqlclient_depends.c.o.requires
	$(MAKE) -f libmysql/CMakeFiles/mysqlclient.dir/build.make libmysql/CMakeFiles/mysqlclient.dir/mysqlclient_depends.c.o.provides.build
.PHONY : libmysql/CMakeFiles/mysqlclient.dir/mysqlclient_depends.c.o.provides

libmysql/CMakeFiles/mysqlclient.dir/mysqlclient_depends.c.o.provides.build: libmysql/CMakeFiles/mysqlclient.dir/mysqlclient_depends.c.o


# Object files for target mysqlclient
mysqlclient_OBJECTS = \
"CMakeFiles/mysqlclient.dir/mysqlclient_depends.c.o"

# External object files for target mysqlclient
mysqlclient_EXTERNAL_OBJECTS =

libmysql/libmysqlclient.a: libmysql/CMakeFiles/mysqlclient.dir/mysqlclient_depends.c.o
libmysql/libmysqlclient.a: libmysql/CMakeFiles/mysqlclient.dir/build.make
libmysql/libmysqlclient.a: libmysql/CMakeFiles/mysqlclient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libmysqlclient.a"
	cd /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql && $(CMAKE_COMMAND) -P CMakeFiles/mysqlclient.dir/cmake_clean_target.cmake
	cd /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mysqlclient.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql && rm /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql/libmysqlclient.a
	cd /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql && /usr/bin/libtool -static -o /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql/libmysqlclient.a /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql/libclientlib.a /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/dbug/libdbug.a /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/strings/libstrings.a /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/vio/libvio.a /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/mysys/libmysys.a /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/mysys_ssl/libmysys_ssl.a /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/zlib/libzlib.a /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/extra/yassl/libyassl.a /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/extra/yassl/taocrypt/libtaocrypt.a

# Rule to build all files generated by this target.
libmysql/CMakeFiles/mysqlclient.dir/build: libmysql/libmysqlclient.a

.PHONY : libmysql/CMakeFiles/mysqlclient.dir/build

libmysql/CMakeFiles/mysqlclient.dir/requires: libmysql/CMakeFiles/mysqlclient.dir/mysqlclient_depends.c.o.requires

.PHONY : libmysql/CMakeFiles/mysqlclient.dir/requires

libmysql/CMakeFiles/mysqlclient.dir/clean:
	cd /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql && $(CMAKE_COMMAND) -P CMakeFiles/mysqlclient.dir/cmake_clean.cmake
.PHONY : libmysql/CMakeFiles/mysqlclient.dir/clean

libmysql/CMakeFiles/mysqlclient.dir/depend: libmysql/mysqlclient_depends.c
	cd /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/libmysql /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql /Users/verpas/Desktop/mysql_test/Mysql_test/mysql-connector-c-6.1.10-src/cmake/libmysql/CMakeFiles/mysqlclient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libmysql/CMakeFiles/mysqlclient.dir/depend

