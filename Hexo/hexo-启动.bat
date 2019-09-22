@echo off 
color 2 
D: 
cd D:\Web\Hexo
hexo s -d 
mshta vbscript:msgbox("启动完成",64,"启动完成")(window.close) 
pause >null