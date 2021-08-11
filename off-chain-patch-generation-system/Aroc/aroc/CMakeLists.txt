set(
    sources
    main.cpp )

add_executable(aroc ${sources})
target_include_directories(aroc PRIVATE "${CMAKE_SOURCE_DIR}")
target_link_libraries(aroc PRIVATE Aroc Utils nlohmann_json::nlohmann_json cxxopts)

include(GNUInstallDirs)
install(TARGETS aroc DESTINATION "${CMAKE_INSTALL_BINDIR}")

