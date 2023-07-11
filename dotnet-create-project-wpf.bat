@echo off
mkdir %1
cd %1
dotnet new list  
dotnet new sln --name ConfSln  
dotnet new gitignore 
dotnet new wpf -f net7.0 --name "%1"   
dotnet new classlib -f net7.0 --name "HelperLib" 
dotnet sln ConfSln.sln add %1/%1.csproj   
dotnet sln ConfSln.sln add %1/%1.csproj
dotnet sln ConfSln.sln add HelperLib/HelperLib.csproj 
dotnet add %1/%1.csproj reference HelperLib/HelperLib.csproj 
cd HelperLib  
dotnet add package Dapper
    