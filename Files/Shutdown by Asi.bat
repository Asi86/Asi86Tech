@ECHO OFF
title Shutdown Timer by Asi
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b
echo. 11111111111111111111111111111111111111111111111111111111111111111111111111
echo. 1111111111111111    11111111111111111111111111111111111111    111111111111
echo. 11111111111111        1111111111111111111111111111111111       11111111111
echo. 11111111111111        111111111111111111111111111111111         1111111111
echo. 1111111111111          1111111111111111111111111111111           111111111
echo. 1111111111111          1111111111111111111111111111111            11111111
echo. 111111111111            11111111111111111111111111111             11111111
echo. 111111111111            1111111111111111111111111111              11111111
echo. 11111111111               1111111111111111111111111              111111111
echo. 11111111111                                                      111111111
echo. 111111111111                                                    1111111111
echo. 111111111111                                                    1111111111
echo. 11111111111                                                      111111111
echo. 11111111111                                                      111111111
echo. 1111111111                                                         1111111
echo. 111111111                                                         11111111
echo. 11111111                   11111111111            11111111111      1111111
echo. 11111111                  11         11          11         11     1111111
echo. 1111111                  11           11        11           11     111111
echo. 1111111                  11   11111   11        od   11111   11     111111
echo. 111111                   11  1111111  11        11  1111111  11      11111
echo. 111111                   11  1111111  11        11  1111111  11      11111
echo. 1111111                  11   11111   11        od   11111   11     111111
echo. 1111111                  11           11        11           11     111111
echo. 11111111                  11         11          11         11     1111111
echo. 11111111                   11111111111            11111111111      1111111
echo. 1111111                                                              11111
echo. 111111                                   111111                       1111
echo. 11111                          11  11      11       11  11             111
echo. 11111                                                                  111
echo. 11111                            11       1111        11               111
echo. 11111                                   111  111                       111
echo. 111111                    111          111     111          111        111
echo. 111111                      111      111         111       111         111
echo. 1111111                      111111111             111111111           111
echo. 11111111                                                               111
echo. 11111111                                                              1111
echo. 111111111                                                             1111
echo. 111111111                                                            11111
echo. 1111111111                                                          111111
echo. 11111111111                                                         111111
echo. 11111111111111                                                     1111111
echo. 111111111111111111                                                11111111
echo. 111111111111111111111                                        1111111111111
echo. 11111111111111111111111111                               11111111111111111
echo. 11111111111111111111111111111111111111111111111111111111111111111111111111
echo. 1111111111  111  111      1111     1111  1111111  111   1111  111111111111
echo. 1111111111  111  111  1111111  111  1111  11111  111111  11  1111111111111
echo. 1111111111       111      111       11111  111  11111111    11111111111111
echo. 1111111111  111  111  1111111  111  111111  1  1111111111  111111111111111
echo. 1111111111  111  111      111  111  1111111   11111111111  111111111111111
echo. 11111111111111111111111111111111111111111111111111111111111111111111111111
echo. 1      11      11      11     11       1  111  1      1    111  111      1
echo. 1  111  1  11  11  11111  111  111  1111  111  111  111  1  11  11  111111
echo. 1      11     111      1       111  1111       111  111  11  1  1  11    1
echo. 1  111  1  11  11  11111  111  111  1111  111  111  111  111    11  111  1
echo. 1      11  111  1      1  111  111  1111  111  1      1  111    111      1
echo. 11111111111111111111111111111111111111111111111111111111111111111111111111
ECHO Enter The Time You Want To Shutdown

color 0A
REM 0 = Black       8 = Gray
REM 1 = Blue        9 = Light Blue
REM 2 = Green       A = Light Green
REM 3 = Aqua        B = Light Aqua
REM 4 = Red         C = Light Red
REM 5 = Purple      D = Light Purple
REM 6 = Yellow      E = Light Yellow
REM 7 = White       F = Bright White
REM Example color 08

:choice
echo Type "C" To Cancel Previous Shutdown
set /P c=Type "M" For Minutes Or "H" For Hours Or "S" For Seconds Or Type "C" To Cancel Previous Shutdown[M/H/S/C]?
if /I "%c%" EQU "M" goto :Minutes
if /I "%c%" EQU "H" goto :Hours
if /I "%c%" EQU "S" goto :Seconds
if /I "%c%" EQU "C" goto :Cancel
goto :choice


:Minutes
set seconds_in_a_Minute=60
echo How Many Minutes Until Desired Shutdown?
set /p Minutes=
set /a t="seconds_in_a_Minute * Minutes"
echo msgbox "This Computer Will Shutdown in %t% Seconds or %Minutes% Minutes" > %tmp%\tmp.vbs
wscript %tmp%\tmp.vbs
del %tmp%\tmp.vbs
shutdown.exe -s -t %t%
exit

:Hours
set seconds_in_an_hour=3600
echo How Many Hours Until Desired Shutdown?
set /p Hours=
set /a t="seconds_in_an_hour * Hours"
echo msgbox "This Computer Will Shutdown in %t% Seconds or %Hours% Hours" > %tmp%\tmp.vbs
wscript %tmp%\tmp.vbs
del %tmp%\tmp.vbs
shutdown.exe -s -t %t%
exit

:Seconds

echo How Many Seconds Until Desired Shutdown?
set /p t=
echo msgbox "This Computer Will Shutdown in %t% Seconds" > %tmp%\tmp.vbs
wscript %tmp%\tmp.vbs
del %tmp%\tmp.vbs
shutdown.exe -s -t %t%
exit

:Cancel
echo msgbox "This Computer Will Shutdown No Longer Shutdown" > %tmp%\tmp.vbs
wscript %tmp%\tmp.vbs
del %tmp%\tmp.vbs
shutdown.exe -a
exit





