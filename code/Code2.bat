@echo off
echo ���ļ�������ȡ���������ӹ���wifi��������
del F*.txt
del T*txt
echo =====��ʼִ��======
netsh wlan show profiles | find "�����û������ļ� : " > TempFile.txt

for /f "delims=:  tokens=2" %%i in (TempFile.txt) do ( echo %%i >> File_1.txt)

for /f %%i in (File_1.txt) do (echo %%i & netsh wlan show profiles name="%%i*" key=clear | find "�ؼ�����" )>> File_2.txt.txt
echo =====ִ����ɣ���鿴File_1.txt��File_2.txt===========
pause 