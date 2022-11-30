:: Automatic1111 Stable Diffusion web UI .bat file for users.

:: "@echo off" suppresses the printing of echo commands
@echo off

set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=

:: ":menu" is a label, you can refer to a label anywhere in the code using "goto menu" in this example.
:menu
:: A basic menu to make things easy to read. Please note the "^" next to "|" like "^|" as "|" is a special character it needs "^" to the left of it to be considered text.
echo ^|-----------------------------------------------------------------------------------------------^|
echo ^|                                                                                               ^|
echo ^|                      Welcome to the Automatic1111 Stable Diffusion web UI                     ^|
echo ^|      Find the Github Page here: https://github.com/AUTOMATIC1111/stable-diffusion-webui       ^|
echo ^|                                                                                               ^|
echo ^|-----------------------------------------------------------------------------------------------^|
echo ^|                                                                                               ^|
echo ^|                                         Menu Options:                                         ^|
echo ^|                             Please Choose an option between 1 - 4.                            ^|
echo ^|                                                                                               ^|
echo ^|-----------------------------------------------------------------------------------------------^|
echo ^|                                                                                               ^|
echo ^| 1. To Run:            Automatic1111 Stable Diffusion web UI.                                  ^|
echo ^|                                                                                               ^|
echo ^|-----------------------------------------------------------------------------------------------^|
echo ^|                                                                                               ^|
echo ^| 2. To Update:         Automatic1111 Stable Diffusion web UI.                                  ^|
echo ^|                                                                                               ^|
echo ^|-----------------------------------------------------------------------------------------------^|
echo ^|                                                                                               ^|
echo ^| 3. To Update:         Automatic1111 Stable Diffusion web UI ^| Requirements.                   ^|
echo ^|                                                                                               ^|
echo ^|-----------------------------------------------------------------------------------------------^|
echo ^|                                                                                               ^|
echo ^| 4. To Exit.                                                                                   ^|
echo ^|                                                                                               ^|
echo ^|-----------------------------------------------------------------------------------------------^|

:: "set /p" allows the user to input numbers/text, "userinput" is the variable name that their input will be stored in. the text "Please input your Selection:" Will be printed before their input field.
set /p userinput= Please input your Selection:
:: Clear screen command.
cls

:: A simple "if" statement showing if the user inputs "4" and hits enter, the program will use a "goto" command to jump to the label ":exit" at the end of the bat file to exit.
if %userinput%==4 (
goto exit
)

:: A simple "if" statement showing if the user inputs a number "greater than 4" and hits enter, the program will ask the user to try again using a valid option.
if %userinput% gtr 4 (
echo Please choose an option between 1 - 4.
pause
cls
goto menu
)

:: A simple "if" statement showing if the user inputs a number "less than 1" and hits enter, the program will ask the user to try again using a valid option.
if %userinput% lss 1 (
echo Please choose an option between 1 - 4.
pause
cls
goto menu
)

:: A simple "if" statement showing if the user inputs "1" and hits enter, the program will load the intended program.
if %userinput%==1 (
cls
echo ^|-----------------------------------------------------------------------------------------------^|
echo ^|                                                                                               ^|
echo ^|                         Loading Automatic1111 Stable Diffusion web UI.                        ^|
echo ^|                                         Please Wait.                                          ^|
echo ^|                                                                                               ^|
echo ^|-----------------------------------------------------------------------------------------------^|
)

:: A simple "if" statement showing if the user inputs "2" and hits enter, the program will update the intended program.
if %userinput%==2 (
cls
echo ^|-----------------------------------------------------------------------------------------------^|
echo ^|                                                                                               ^|
echo ^|            Updating to the latest version of Automatic1111 Stable Diffusion web UI.           ^|
echo ^|                                         Please Wait.                                          ^|
echo ^|                                                                                               ^|
echo ^|-----------------------------------------------------------------------------------------------^|
echo.
git pull
echo.
echo Automatic1111 Stable Diffusion web UI updated.
echo Please ensure update was successful before proceeding.
pause
cls
goto menu
)

:: A simple "if" statement showing if the user inputs "3" and hits enter, the program will install and/or update the requirements for the intended program.
if %userinput%==3 (
cls
echo ^|-----------------------------------------------------------------------------------------------^|
echo ^|                                                                                               ^|
echo ^|          Installing and updating Automatic1111 Stable Diffusion web UI Requirements.          ^|
echo ^|                                         Please Wait.                                          ^|
echo ^|                                                                                               ^|
echo ^|-----------------------------------------------------------------------------------------------^|
echo.
pip install -r requirements.txt
echo.
echo Automatic1111 Stable Diffusion web UI Requirements updated.
echo Please ensure update was successful before proceeding.
pause
cls
goto menu
)

:: This is where Automatic1111 Stable Diffusion web UI is called. Users will be particularly interested in line 118.
cls
call webui.bat

:: A simple "if" statement showing if the user inputs "4" and hits enter, the program will exit.
if %userinput%==4 (
:exit
cls
echo ^|-----------------------------------------------------------------------------------------------^|
echo ^|                                                                                               ^|
echo ^|                         Closing Automatic1111 Stable Diffusion web UI.                        ^|
echo ^|      Find the Github Page here: https://github.com/AUTOMATIC1111/stable-diffusion-webui       ^|
echo ^|                                        Goodbye.                                               ^|
echo ^|                                                                                               ^|
echo ^|-----------------------------------------------------------------------------------------------^|
pause
)
