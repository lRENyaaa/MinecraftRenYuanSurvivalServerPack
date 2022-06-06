@echo off
set titl=任渊生存-主城
title %titl% 初始化中
cd /d "%~dp0"
set INFO=[Client thread／INFO]：
echo %INFO%初始化中
cd ..
cd survival-spawn
set ServerCore=Pufferfish-1.17.1.jar
set ServerCoreName=Pufferfish1.17.1
set Times=0
set DividingLine=-----------------------------------------------------

:Main
echo %INFO%%DividingLine%
title %titl% %ServerCoreName% 重启次数:0
echo %INFO%非紧急情况不建议直接关闭控制台
echo %INFO%在控制台输入stop然后回车即可关服
echo %INFO%任渊生存Bug报告请添加QQ群:1029946156
echo %INFO%%DividingLine%
echo %INFO%服务端使用 糖糕云 一键启动脚本魔改版
echo %INFO%原作者: 梦想小站
echo %INFO%原版GitHub: https://github.com/dreamstation625/AutoMCServerBat
echo %INFO%%DividingLine%
echo %INFO%服务端将在3秒后启动
for /l %%a in (1,1,3) do (ping -n 2 -w 500 0.0.0.1>nul)

:Loop
echo %DividingLine%
echo Java 版本: && "%~dp0java\bin\java.exe" -version
echo %DividingLine%
echo loading %ServerCoreName%, please wait...
"%~dp0java\bin\java.exe" -Xms3G -Xmx3G -jar %ServerCore% nogui
echo #
echo %DividingLine%
echo %INFO%服务端已经关闭
for /l %%b in (10,-1,1) do (echo %INFO%服务端将在%%b秒后重启
ping -n 2 -w 500 0.0.0.1>nul)
echo %INFO%服务端重启中
set /a Times+=1
title %titl% %ServerCoreName% 重启次数:%Times%
goto Loop


:ColorText
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
