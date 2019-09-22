chcp 65001
mshta vbscript:msgbox("准备复制",6,"存档")(window.close) 
xcopy /d D:\Web\Hexo C:\Users\Lxp\Desktop\MyBlog\Hexo\ /MT:30
mshta vbscript:msgbox("复制完成，准备删除插件",6,"存档")(window.close) 
rd /s /q C:\Users\Lxp\Desktop\MyBlog\Hexo\Hexo\node_modules
rd /s /q C:\Users\Lxp\Desktop\MyBlog\Hexo\Hexo\public
rd /s /q C:\Users\Lxp\Desktop\MyBlog\Hexo\Hexo\.deploy_git
mshta vbscript:msgbox("删除完成，准备提交代码",6,"删除完成")(window.close) 
cd C:\Users\Lxp\Desktop\MyBlog\Hexo
set /p commit=commit: 
title auto commit 
cd C:\Program Files\Git\bin\git.exe
git.exe add -A 
git.exe commit -m %commit% 
git.exe push 
echo 
pause 