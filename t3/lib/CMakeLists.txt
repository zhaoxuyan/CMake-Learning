SET(libhello_src hello.cpp)
add_library(hello SHARED ${libhello_src})
add_library(hello_static STATIC ${libhello_src})

# 通过 SET_TARGET_PROPERTIES 同时构建同名的动态库和静态库。
SET_TARGET_PROPERTIES(hello_static PROPERTIES OUTPUT_NAME "hello")

# 以下指令没什么用...
# SET_TARGET_PROPERTIES(hello PROPERTIES CLEAN_DIRECT_OUTPUT 1)
# SET_TARGET_PROPERTIES(hello_static PROPERTIES CLEAN_DIRECT_OUTPUT 1)
# GET_TARGET_PROPERTY(OUTPUT_VALUE hello_static OUTPUT_NAME)
# MESSAGE(STATUS "This is the hello_static
# OUTPUT_NAME:" ${OUTPUT_VALUE})

# 动态库版本控制
# VERSION 指代动态库版本，SOVERSION 指代 API 版本。
SET_TARGET_PROPERTIES(hello PROPERTIES VERSION 1.3 SOVERSION 1)

# 安装方法1
# SET(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)

# 安装方法2
INSTALL(TARGETS hello hello_static
RUNTIME DESTINATION bin
LIBRARY DESTINATION lib
ARCHIVE DESTINATION lib )

# 安装头文件
INSTALL(FILES hello.h DESTINATION include)