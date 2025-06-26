cmake_minimum_required(VERSION 3.6)
project(test_llm)

# 设置C++标准
set(CMAKE_CXX_STANDARD 11)

# 添加包含目录
include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}/deps/include
)

# 添加链接库目录
link_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}/deps
    ${CMAKE_CURRENT_SOURCE_DIR}/deps/express
    ${CMAKE_CURRENT_SOURCE_DIR}/deps/cv
)

# 添加源文件
add_executable(llm_demo 
    ${CMAKE_CURRENT_SOURCE_DIR}/src/llm_demo.cpp
)

# 链接依赖库
target_link_libraries(llm_demo
    llm
    MNN
    MNN_Express
    MNNOpenCV
    pthread
    dl
)

# 设置RPATH，确保可执行文件能找到动态库
set_target_properties(llm_demo PROPERTIES
INSTALL_RPATH "${CMAKE_CURRENT_SOURCE_DIR}/deps;${CMAKE_CURRENT_SOURCE_DIR}/deps/express;${CMAKE_CURRENT_SOURCE_DIR}/deps/cv"
BUILD_WITH_INSTALL_RPATH TRUE
)