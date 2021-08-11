file(GLOB sources "*.cpp")
file(GLOB headers "*.hpp")

add_library(Aroc ${sources} ${headers}  pathConsExtractor.h pathConsExtractor.cpp patchSynthesis.h patchSynthesis.cpp )
target_include_directories(Aroc PRIVATE "${CMAKE_SOURCE_DIR}")
target_link_libraries(Aroc PRIVATE Utils nlohmann_json::nlohmann_json )