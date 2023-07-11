@echo off
if %1 == folder mkdir %2
if %1 == file  type nul > %2
if %1 == dotnet-wpf dotnet-create-project-wpf %2