@echo off 
rem �˽ű��������Ա���������֮�������Ƿ�ͨ��
echo =====�����趨====
echo %date% %time% >> Code1.txt
set /p s1=����ip�ĵ�1���ֽڣ�
set /p s2=����ip�ĵ�2���ֽڣ�
set /p s3=����ip�ĵ�3���ֽڣ�
set /p s4=����ip�ĵ�4���ֽ���㣺
set /p s5=����ip�ĵ�4���ֽ��յ㣺
echo =====pingִ����====

for /l %%i in (%s4%,1,%s5%) do (echo ��%s1%.%s2%.%s3%.%%i�� & ping -n 1 %s1%.%s2%.%s3%.%%i | find "����"  || echo ����ʱ  ) >> Code1.txt 
 	 
echo =====ִ����ɣ��鿴Code1.txt=====
pause > nul

