PROJECT (HELLO)

# ADD_SUBDIRECTORY这个指令用于向当前工程添加存放源文件的子目录，
# 并可以指定中间二进制和目标二进制存放的位置。

# 用法: 
# ADD_SUBDIRECTORY(source_dir [binary_dir] [EXCLUDE_FROM_ALL])
# 如果不进行 bin 目录的指定，
# 那么编译结果(包括中间结果)都将存放在build/src 目录
ADD_SUBDIRECTORY(src)

# 安装文件
INSTALL(FILES COPYRIGHT.md README.md DESTINATION share/doc/cmake/t2)
# 安装脚本
INSTALL(PROGRAMS runhello.sh DESTINATION bin)
# 安装文件夹 doc/ 下的所有文件
INSTALL(DIRECTORY doc/ DESTINATION share/doc/cmake/t2)