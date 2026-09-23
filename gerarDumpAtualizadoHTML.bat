@echo off
setlocal enabledelayedexpansion
chcp 65001 >nul 2>&1

REM ============================================================
REM  gerar-dump.bat  -  v4 (Lê projeto inteiro - HTML/CSS/JS)
REM  Coloque este .bat NA RAIZ DO PROJETO (onde esta o package.json).
REM  Gera dump-<nome-da-pasta>.txt na mesma pasta.
REM ============================================================

REM ---- Configuracao ----
set "PROJDIR=%~dp0"
if "%PROJDIR:~-1%"=="\" set "PROJDIR=%PROJDIR:~0,-1%"
for %%D in ("%PROJDIR%") do set "PROJNAME=%%~nxD"
set "OUTFILE=%PROJDIR%\dump-%PROJNAME%.txt"

echo.
echo ============================================================
echo  Projeto : %PROJNAME%
echo  Pasta   : %PROJDIR%
echo  Saida   : %OUTFILE%
echo ============================================================
echo.

if exist "%OUTFILE%" del /q "%OUTFILE%" >nul 2>&1

echo ============================================================ >> "%OUTFILE%"
echo  DUMP DO PROJETO: %PROJNAME% >> "%OUTFILE%"
echo  Gerado em: %DATE% %TIME% >> "%OUTFILE%"
echo  Pasta raiz: %PROJDIR% >> "%OUTFILE%"
echo ============================================================ >> "%OUTFILE%"
echo. >> "%OUTFILE%"

REM ============================================================
REM  BUSCA GERAL (Lê todas as pastas, incluindo HTML, CSS e JS)
REM ============================================================
echo Lendo todos os arquivos do projeto (pode levar alguns segundos)...

REM O comando "dir" abaixo ja exclui as pastas mais pesadas para ganhar velocidade
for /f "usebackq delims=" %%F in (`dir /s /b /a-d "%PROJDIR%" ^| findstr /v /i "\\node_modules\\" ^| findstr /v /i "\\.git\\" ^| findstr /v /i "\\dist\\" ^| findstr /v /i "\\build\\"`) do (
    set "FULLPATH=%%F"
    REM Monta o nome relativo para o dump
    call :dumpFile "%%F" "%PROJNAME%\!FULLPATH:%PROJDIR%\=!"
)

:done
echo.
echo ============================================================
echo  Pronto! Arquivo gerado: %OUTFILE%
echo ============================================================
echo.
pause
exit /b 0


REM ============================================================
REM  :dumpFile
REM ============================================================
:dumpFile
set "FILEPATH=%~1"
set "RELNAME=%~2"
set "EXT=%~x1"
set "BASENAME=%~nx1"

REM ---- FILTRO 0: pastas indesejadas adicionais (por caminho) ----
echo %FILEPATH% | findstr /i "\\ui\\" >nul && exit /b
echo %FILEPATH% | findstr /i "\\coverage\\" >nul && exit /b
echo %FILEPATH% | findstr /i "\\.next\\" >nul && exit /b
echo %FILEPATH% | findstr /i "\\.output\\" >nul && exit /b
echo %FILEPATH% | findstr /i "\\.vinxi\\" >nul && exit /b

REM ---- FILTRO 1: arquivos de dump (anti-recursao) ----
echo %BASENAME% | findstr /i "^dump-" >nul && exit /b

REM ---- FILTRO 2: arquivos sensiveis (chaves, secrets) ----
if /i "%BASENAME%"==".env"                    exit /b
if /i "%BASENAME%"==".env.local"              exit /b
if /i "%BASENAME%"==".env.development"        exit /b
if /i "%BASENAME%"==".env.production"         exit /b
if /i "%BASENAME%"==".env.staging"            exit /b
if /i "%BASENAME%"==".env.test"               exit /b
if /i "%BASENAME%"==".env.production.local"   exit /b
if /i "%BASENAME%"==".env.development.local"  exit /b
if /i "%BASENAME%"=="credentials.json"        exit /b
if /i "%BASENAME%"=="serviceAccount.json"     exit /b
if /i "%BASENAME%"=="secrets.json"            exit /b
if /i "%BASENAME%"=="id_rsa"                  exit /b
if /i "%BASENAME%"=="id_rsa.pub"              exit /b
if /i "%BASENAME%"==".npmrc"                  exit /b
if /i "%BASENAME%"==".netrc"                  exit /b
if /i "%BASENAME%"==".htpasswd"               exit /b
if /i "%BASENAME%"==".git-credentials"        exit /b

REM ---- FILTRO 3: nomes de arquivos irrelevantes ----
if /i "%BASENAME%"=="routeTree.gen.ts"   exit /b
if /i "%BASENAME%"=="package-lock.json"  exit /b
if /i "%BASENAME%"=="bun.lock"           exit /b
if /i "%BASENAME%"=="bun.lockb"          exit /b
if /i "%BASENAME%"=="yarn.lock"          exit /b
if /i "%BASENAME%"=="pnpm-lock.yaml"     exit /b
if /i "%BASENAME%"==".DS_Store"          exit /b
if /i "%BASENAME%"=="Thumbs.db"          exit /b
if /i "%BASENAME%"==".gitignore"         exit /b
if /i "%BASENAME%"==".editorconfig"      exit /b

REM ---- FILTRO 4: extensoes irrelevantes ----
if /i "%EXT%"==".log"    exit /b
if /i "%EXT%"==".map"    exit /b
if /i "%EXT%"==".png"    exit /b
if /i "%EXT%"==".jpg"    exit /b
if /i "%EXT%"==".jpeg"   exit /b
if /i "%EXT%"==".gif"    exit /b
if /i "%EXT%"==".bmp"    exit /b
if /i "%EXT%"==".webp"   exit /b
if /i "%EXT%"==".avif"   exit /b
if /i "%EXT%"==".ico"    exit /b
if /i "%EXT%"==".svg"    exit /b
if /i "%EXT%"==".woff"   exit /b
if /i "%EXT%"==".woff2"  exit /b
if /i "%EXT%"==".ttf"    exit /b
if /i "%EXT%"==".eot"    exit /b
if /i "%EXT%"==".otf"    exit /b
if /i "%EXT%"==".pdf"    exit /b
if /i "%EXT%"==".zip"    exit /b
if /i "%EXT%"==".tar"    exit /b
if /i "%EXT%"==".gz"     exit /b
if /i "%EXT%"==".7z"     exit /b
if /i "%EXT%"==".rar"    exit /b
if /i "%EXT%"==".exe"    exit /b
if /i "%EXT%"==".dll"    exit /b
if /i "%EXT%"==".so"     exit /b
if /i "%EXT%"==".dylib"  exit /b
if /i "%EXT%"==".node"   exit /b
if /i "%EXT%"==".bin"    exit /b
if /i "%EXT%"==".lock"   exit /b

REM ---- Detecta linguagem ----
set "LANG=text"
if /i "%EXT%"==".js"    set "LANG=javascript"
if /i "%EXT%"==".mjs"   set "LANG=javascript"
if /i "%EXT%"==".cjs"   set "LANG=javascript"
if /i "%EXT%"==".jsx"   set "LANG=jsx"
if /i "%EXT%"==".ts"    set "LANG=typescript"
if /i "%EXT%"==".tsx"   set "LANG=tsx"
if /i "%EXT%"==".json"  set "LANG=json"
if /i "%EXT%"==".css"   set "LANG=css"
if /i "%EXT%"==".scss"  set "LANG=scss"
if /i "%EXT%"==".sass"  set "LANG=scss"
if /i "%EXT%"==".less"  set "LANG=less"
if /i "%EXT%"==".html"  set "LANG=html"
if /i "%EXT%"==".htm"   set "LANG=html"
if /i "%EXT%"==".md"    set "LANG=markdown"
if /i "%EXT%"==".mdx"   set "LANG=markdown"
if /i "%EXT%"==".yml"   set "LANG=yaml"
if /i "%EXT%"==".yaml"  set "LANG=yaml"
if /i "%EXT%"==".xml"   set "LANG=xml"
if /i "%EXT%"==".toml"  set "LANG=toml"
if /i "%EXT%"==".sh"    set "LANG=bash"
if /i "%EXT%"==".bat"   set "LANG=batch"
if /i "%EXT%"==".cmd"   set "LANG=batch"
if /i "%EXT%"==".ps1"   set "LANG=powershell"
if /i "%EXT%"==".sql"   set "LANG=sql"
if /i "%EXT%"==".py"    set "LANG=python"
if /i "%EXT%"==".rb"    set "LANG=ruby"
if /i "%EXT%"==".php"   set "LANG=php"
if /i "%EXT%"==".go"    set "LANG=go"
if /i "%EXT%"==".rs"    set "LANG=rust"
if /i "%EXT%"==".java"  set "LANG=java"
if /i "%EXT%"==".cs"    set "LANG=csharp"
if /i "%EXT%"==".cpp"   set "LANG=cpp"
if /i "%EXT%"==".c"     set "LANG=c"
if /i "%EXT%"==".h"     set "LANG=c"
if /i "%EXT%"==".hpp"   set "LANG=cpp"
if /i "%EXT%"==".vue"   set "LANG=vue"
if /i "%EXT%"==".svelte" set "LANG=svelte"

if /i "%BASENAME%"==".env.example"  set "LANG=dotenv"
if /i "%BASENAME%"==".prettierrc"   set "LANG=json"
if /i "%BASENAME%"==".eslintrc"     set "LANG=json"
if /i "%BASENAME%"==".eslintrc.json" set "LANG=json"
if /i "%BASENAME%"=="Dockerfile"    set "LANG=dockerfile"
if /i "%BASENAME%"=="docker-compose.yml" set "LANG=yaml"

echo     + %RELNAME%

REM ---- Escreve cabecalho + conteudo ----
echo. >> "%OUTFILE%"
echo ============================================================ >> "%OUTFILE%"
echo ARQUIVO: %RELNAME% >> "%OUTFILE%"
echo LINGUAGEM: %LANG% >> "%OUTFILE%"
echo ============================================================ >> "%OUTFILE%"
type "%FILEPATH%" >> "%OUTFILE%" 2>nul
echo. >> "%OUTFILE%"
echo. >> "%OUTFILE%"

exit /b