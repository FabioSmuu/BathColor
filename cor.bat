@echo off
goto ini

:Cor
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
goto :eof

:ini
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a")

:cores
if "%1" NEQ "" (if "%2" NEQ "" call :cor %1 "%2" & goto :eof)

echo.Digite: call %~n0 [cor] [texto]
echo.Exemplo: call %~n0 0a "DeehLeh"
echo.
call :cor F0 "   Preto" & echo.		0
call :cor F1 "   Azul" & echo.			1
call :cor 02 "   Verde" & echo.		2
call :cor 03 "   Verde-agua" & echo.		3
call :cor 04 "   Vermelho" & echo.		4
call :cor 05 "   Roxo" & echo.			5
call :cor 06 "   Amarelo" & echo.		6
call :cor 07 "   Branco" & echo.		7
call :cor 08 "   Cinza" & echo.		8
call :cor 09 "   Azul claro" & echo.		9
call :cor 0A "   Verde claro" & echo.		A
call :cor 0B "   Verde-agua claro" & echo.	B
call :cor 0C "   Vermelho claro" & echo.	C
call :cor 0D "   Lilas" & echo.		D
call :cor 0E "   Amarelo claro" & echo.	E
call :cor 0F "   Branco brilhante" & echo.	F
echo.
pause