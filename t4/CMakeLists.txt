CMAKE_MINIMUM_REQUIRED(VERSION 2.5)
PROJECT(new_helloworld)

# 若.h和.so或.a安装到/usr/下 则可以不需要这两条命令
# 否则需要显示的指定路径
include_directories(${PROJECT_SOURCE_DIR}/hellolib/include)
link_directories(${PROJECT_SOURCE_DIR}/hellolib/lib)
# set(HELLO_LIB hello)
ADD_SUBDIRECTORY(src)