# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\installer\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\installer\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "E:\ArocCodesGit\off-chain patch generation system\Aroc"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "E:\ArocCodesGit\off-chain patch generation system\Aroc\cmake-build-debug"

# Utility rule file for Nightly.

# Include the progress variables for this target.
include libUtils/nlohmann_json/CMakeFiles/Nightly.dir/progress.make

libUtils/nlohmann_json/CMakeFiles/Nightly:
	cd /d E:\AROCCO~3\OFF-CH~1\Aroc\CMAKE-~1\libUtils\NLOHMA~1 && "D:\installer\CLion 2020.1.2\bin\cmake\win\bin\ctest.exe" -D Nightly

Nightly: libUtils/nlohmann_json/CMakeFiles/Nightly
Nightly: libUtils/nlohmann_json/CMakeFiles/Nightly.dir/build.make

.PHONY : Nightly

# Rule to build all files generated by this target.
libUtils/nlohmann_json/CMakeFiles/Nightly.dir/build: Nightly

.PHONY : libUtils/nlohmann_json/CMakeFiles/Nightly.dir/build

libUtils/nlohmann_json/CMakeFiles/Nightly.dir/clean:
	cd /d E:\AROCCO~3\OFF-CH~1\Aroc\CMAKE-~1\libUtils\NLOHMA~1 && $(CMAKE_COMMAND) -P CMakeFiles\Nightly.dir\cmake_clean.cmake
.PHONY : libUtils/nlohmann_json/CMakeFiles/Nightly.dir/clean

libUtils/nlohmann_json/CMakeFiles/Nightly.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "E:\ArocCodesGit\off-chain patch generation system\Aroc" "E:\ArocCodesGit\off-chain patch generation system\Aroc\libUtils\nlohmann_json" "E:\ArocCodesGit\off-chain patch generation system\Aroc\cmake-build-debug" "E:\ArocCodesGit\off-chain patch generation system\Aroc\cmake-build-debug\libUtils\nlohmann_json" "E:\ArocCodesGit\off-chain patch generation system\Aroc\cmake-build-debug\libUtils\nlohmann_json\CMakeFiles\Nightly.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : libUtils/nlohmann_json/CMakeFiles/Nightly.dir/depend

