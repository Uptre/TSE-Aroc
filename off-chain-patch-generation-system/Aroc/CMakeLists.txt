cmake_minimum_required(VERSION 3.16)
project(Aroc)

set(CMAKE_CXX_STANDARD 14)

add_subdirectory(aroc)
add_subdirectory(coreAnalysis)
add_subdirectory(libUtils)



#add_executable(Aroc aroc/main.cpp )