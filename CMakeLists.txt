cmake_minimum_required(VERSION 3.28)
project(ortools_client)

set(CMAKE_CXX_STANDARD 20)

add_executable(ortools_client main.cpp)

find_package(ortools REQUIRED)
target_link_libraries(ortools_client
        PRIVATE
        ortools::ortools
)
