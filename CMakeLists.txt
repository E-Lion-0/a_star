cmake_minimum_required(VERSION 3.21)
project(a_star LANGUAGES CXX)

include(FetchContent)
FetchContent_Declare(SFML
        GIT_REPOSITORY https://github.com/SFML/SFML.git
        GIT_TAG 2.6.x)
FetchContent_MakeAvailable(SFML)

add_executable(a_star main_with_obstacles.cpp Node.h  Grid.cpp Grid.h Grid.h A-star.h )
target_link_libraries(a_star PRIVATE sfml-graphics)
target_compile_features(a_star PRIVATE cxx_std_17)
if (WIN32 AND BUILD_SHARED_LIBS)
    add_custom_command(TARGET a_star POST_BUILD
            COMMAND ${CMAKE_COMMAND} -E copy $<TARGET_RUNTIME_DLLS:a_star> $<TARGET_FILE_DIR:a_star> COMMAND_EXPAND_LISTS)
endif()

install(TARGETS a_star)