@echo off

color 66

echo =======================================

echo = 代码合并工具 github.com/atnet/devfw =

echo =======================================

set dir=%~dp0

set megdir=%dir%\dll\

if exist "%megdir%merge.exe" (

  echo 生成中,请稍等...
  cd %dir%dist\dll\

echo  /keyfile:%dir%j6.devfw.snk>nul

"%megdir%merge.exe" /closed /keyfile:%dir%/src/core/J6.DevFw.Core/j6.devfw.snk /ndebug /targetplatform:v4 /target:dll /out:%dir%dist\j6.devfw.dll^
 J6.DevFw.Core.dll J6.DevFw.PluginKernel.dll J6.DevFw.Data.dll J6.DevFw.Template.dll J6.DevFw.Web.dll J6.DevFw.Toolkit.Data.dll
  


  echo 完成!输出到:%dir%dist\j6.devfw.dll

)


pause