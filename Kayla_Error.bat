@ECHO ON
title Kayla Error.exe

echo msgbox "Kayla! Stop being weird in front of ppl you barely know." ,16,"Kayla Error.exe" > %tmp%\tmp.vbs

::the text in the first quotes is text, the 16 is the type of messagebox, and the last quotes is the title, feel free to edit -Asiana
::0 =OK button only
::1 =OK and Cancel buttons
::2 =Abort, Retry, and Ignore buttons
::3 =Yes, No, and Cancel buttons
::4 =Yes and No buttons
::5 =Retry and Cancel buttons
::16=Critical Message icon3
::2 =Warning Query icon
::48= Warning Message icon
::64=Information Message icon

wscript %tmp%\tmp.vbs
del %tmp%\tmp.vbs
exit