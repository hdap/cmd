@echo off
echo 此文件用来获取本机所连接过的wifi及其密码
del F*.txt
del T*txt
echo =====开始执行======
netsh wlan show profiles | find "所有用户配置文件 : " > TempFile.txt

for /f "delims=:  tokens=2" %%i in (TempFile.txt) do ( echo %%i >> File_1.txt)

for /f %%i in (File_1.txt) do (echo %%i & netsh wlan show profiles name="%%i*" key=clear | find "关键内容" )>> File_2.txt.txt
echo =====执行完成，请查看File_1.txt及File_2.txt===========
pause 