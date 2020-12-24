ADD_EXECUTABLE(main main.cpp)
# 默认链接到动态库
# target_link_libraries(main hello)

# 手动链接到静态库
target_link_libraries(main libhello.a)

# 输出到build文件夹上层目录
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/..)

# INSTALL(TARGETS main
# RUNTIME DESTINATION bin
# LIBRARY DESTINATION lib
# ARCHIVE DESTINATION lib )