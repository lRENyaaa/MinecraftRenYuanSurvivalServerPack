@echo off
set titl=��Ԩ����-����
title %titl% ��ʼ����
cd /d "%~dp0"
set INFO=[Client thread��INFO]��
echo %INFO%��ʼ����
cd ..
cd survival-spawn
set ServerCore=Pufferfish-1.17.1.jar
set ServerCoreName=Pufferfish1.17.1
set Times=0
set DividingLine=-----------------------------------------------------

:Main
echo %INFO%%DividingLine%
title %titl% %ServerCoreName% ��������:0
echo %INFO%�ǽ������������ֱ�ӹرտ���̨
echo %INFO%�ڿ���̨����stopȻ��س����ɹط�
echo %INFO%��Ԩ����Bug���������QQȺ:1029946156
echo %INFO%%DividingLine%
echo %INFO%�����ʹ�� �Ǹ��� һ�������ű�ħ�İ�
echo %INFO%ԭ����: ����Сվ
echo %INFO%ԭ��GitHub: https://github.com/dreamstation625/AutoMCServerBat
echo %INFO%%DividingLine%
echo %INFO%����˽���3�������
for /l %%a in (1,1,3) do (ping -n 2 -w 500 0.0.0.1>nul)

:Loop
echo %DividingLine%
echo Java �汾: && "%~dp0java\bin\java.exe" -version
echo %DividingLine%
echo loading %ServerCoreName%, please wait...
"%~dp0java\bin\java.exe" -Xms3G -Xmx3G -jar %ServerCore% nogui
echo #
echo %DividingLine%
echo %INFO%������Ѿ��ر�
for /l %%b in (10,-1,1) do (echo %INFO%����˽���%%b�������
ping -n 2 -w 500 0.0.0.1>nul)
echo %INFO%�����������
set /a Times+=1
title %titl% %ServerCoreName% ��������:%Times%
goto Loop


:ColorText
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
