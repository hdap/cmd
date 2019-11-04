@echo off 
rem 此脚本用来测试本机与他机之间网络是否通畅
echo =====参数设定====
echo %date% %time% >> Code1.txt
set /p s1=输入ip的第1个字节：
set /p s2=输入ip的第2个字节：
set /p s3=输入ip的第3个字节：
set /p s4=输入ip的第4个字节起点：
set /p s5=输入ip的第4个字节终点：
echo =====ping执行中====

for /l %%i in (%s4%,1,%s5%) do (echo 【%s1%.%s2%.%s3%.%%i】 & ping -n 1 %s1%.%s2%.%s3%.%%i | find "来自"  || echo 请求超时  ) >> Code1.txt 
 	 
echo =====执行完成，查看Code1.txt=====
pause > nul

