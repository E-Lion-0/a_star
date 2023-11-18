cmake_minimum_required(VERSION 3.21)
project(test)

include(FetchContent)
FetchContent_Declare(googletest
        GIT_REPOSITORY https://github.com/google/googletest.git
        GIT_TAG v1.14.x
)
FetchContent_MakeAvailable(googletest)

include(FetchContent)
FetchContent_Declare(SFML
        GIT_REPOSITORY https://github.com/SFML/SFML.git
        GIT_TAG 2.6.x
        )
FetchContent_MakeAvailable(SFML)



add_executable(test GridTest.cpp)
target_link_libraries(test gtest_main)
target_link_libraries(test sfml-graphics)

target_compile_features(test PRIVATE cxx_std_17)



