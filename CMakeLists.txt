# Minimum version of CMake required
cmake_minimum_required(VERSION 3.10)

# Project name and language
project(calculator_project LANGUAGES CXX)

# Require C++17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add a static library from calculator.cpp
add_library(calculator STATIC
    src/calculator.cpp
)

# Include directory for the header file
target_include_directories(calculator PUBLIC ${CMAKE_SOURCE_DIR}/src)

# Create an executable from main.cpp
add_executable(calc_app
    src/main.cpp
)

# Link the library to the executable
target_link_libraries(calc_app PRIVATE calculator)
