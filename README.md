flamegraph
==========

制作火焰图


  下载后解压，执行flame.sh脚本，执行脚本的命令为：
    sh flame.sh exec_path pid
    
  其中exec_path为可执行文件的路径，例如/usr/local/nginx/sbin/nginx，pid为进程ID。执行过程中可能会报
警告，可以忽略，只要能生成正常的火焰图即可。
  
  如果执行失败，进行以下检查：
  1、检查内核是否启用CONFIG_UTRACE
  2、检查是否安装kernel-devel、kernel-debuginfo和kernel-debuginfo-common包
