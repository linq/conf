@echo off
chdir D:\cygwin\bin

set EDITOR=vi
set VISUAL=vi
REM shamelessly copied from git://github.com/justsoso8/dotfile.git
REM mintty installed which supports chinese
REM =======================================
@echo off
rem find cygwin roo directory one by one
rem disk c -> disk d -> disk e

:CYGWIN_D
if not exist d:\cygwin goto CYGWIN_E
set _cygwinroot=d:\cygwin
goto HAVECYGWIN

:CYGWIN_E
if not exist e:\cygwin goto NOCYGWIN
set _cygwinroot=e:\cygwin
goto HAVECYGWIN

:NOCYGWIN
echo no cygwin installation found on disk C/D/E
pause
goto EOF

:HAVECYGWIN

set LANG=zh_CN.utf8
rem CONSOLE is sure to know this setting
rem and can display chinese very well
rem but look & feel & funcationality are not as good as mintty

REM select terminal one by one
REM mintty -> rxvt -> console

:MINTTY
set _termapp=%_cygwinroot%\bin\mintty.exe
if not exist %_termapp% goto RXVT
start %_termapp% /bin/bash --login -i
rem mintty has it's option to set as zh_CN.utf8
rem ignore the ${LANG} setting
rem and it appends @cjknarrow automatically
rem current solution is to "LANG=zh_CN.utf8 gvim ..."
goto EOF

:RXVT
set _termapp=%_cygwinroot%\bin\rxvt.exe
if not exist %_termapp% goto CONSOLE
set BGCOLOR=Black
set FGCOLOR=White

start %_termapp% -sl 2500 -fg %FGCOLOR% -bg %BGCOLOR% -sr -fn Courier-20 -geometry 80x25 -e /bin/bash --login -i
goto EOF

:CONSOLE
set _termapp=%_cygwinroot%\bin\bash.exe
start %_termapp% --login -i
goto EOF

:EOF
exit
