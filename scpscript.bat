@echo off
echo.
echo.
echo.
echo.
echo #     _____ __________     _____           _       __   #
echo #    / ___// ____/ __ \   / ___/__________(_)___  / /_  #
echo #    \__ \/ /   / /_/ /   \__ \/ ___/ ___/ / __ \/ __/  #
echo #   ___/ / /___/ ____/   ___/ / /__/ /  / / /_/ / /_    #
echo #  /____/\____/_/       /____/\___/_/  /_/ .___/\__/    #
echo #                                       /_/             #
echo.
echo.
echo.
echo.
echo This script uses scp to copy a local file to all remote IP addresses
echo listed in a file specified by argument on execution
echo.
echo *** Note: IP list file should contain only IP addresses (one per line)
echo.
echo Usage Format:
echo scpscript.bat path\to\local\file path\to\IP\list\file remote_username remote_path
echo.
echo Press Ctrl + C to exit script
pause

for /F "tokens=* delims=" %%x in (%2) DO scp %1 %3@%%x:%4
