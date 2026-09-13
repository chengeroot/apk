@echo off
chcp 65001 >nul
title 清空成品
cd /d "%~dp0"

echo.
echo   清空 app.exe 和所有安装包...
echo.

if exist "src-tauri\target\release\app.exe" (
    del /q "src-tauri\target\release\app.exe"
    echo   ✅ 已删除 app.exe
)

if exist "src-tauri\target\release\bundle" (
    rmdir /s /q "src-tauri\target\release\bundle"
    echo   ✅ 已删除 bundle 文件夹
)

echo.
pause