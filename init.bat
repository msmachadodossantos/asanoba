@echo off
setlocal

REM Root project folder
set ROOT=lms

REM Create root folder
mkdir %ROOT%
cd %ROOT%

REM Top-level files
echo.> .gitignore
echo.> composer.json
echo.> CONTRIBUTING.md
echo.> LICENSE
echo.> README.md

REM CLI scripts
mkdir cli
echo.> cli\make_module.php

REM Config directory
mkdir config
echo.> config\app.php
echo.> config\database.php
echo.> config\env_example

REM Documentation
mkdir docs
mkdir docs\architecture
mkdir docs\business
mkdir docs\technical

echo.> docs\architecture\.keep
echo.> docs\business\01_FUNCTIONAL_REQUIREMENTS.md
echo.> docs\business\02_USE_CASES.md
echo.> docs\business\03_GLOSSARY.md
echo.> docs\technical\01_ARCHITECTURE.md
echo.> docs\technical\02_CODING_CONVENTIONS.md
echo.> docs\technical\03_DEPENDENCIES.md

REM Modules (Domain-Driven Contexts)
mkdir modules

REM Example context: User
mkdir modules\User
mkdir modules\User\Application
mkdir modules\User\Domain
mkdir modules\User\Domain\Contracts
mkdir modules\User\Domain\Entities
mkdir modules\User\Domain\Services
mkdir modules\User\Domain\ValueObjects
mkdir modules\User\Infrastructure
mkdir modules\User\Infrastructure\Migrations
mkdir modules\User\Infrastructure\Persistence
mkdir modules\User\Infrastructure\Services
mkdir modules\User\Interface
mkdir modules\User\Interface\Http
mkdir modules\User\Interface\Http\Controllers
mkdir modules\User\Interface\Http\Routes
mkdir modules\User\Interface\Views
echo.> modules\User\Infrastructure\Migrations\2025_04_05_create_users_table.sql

REM Public folder
mkdir public
mkdir public\assets
mkdir public\assets\css
mkdir public\assets\images
mkdir public\assets\js
echo.> public\index.php

REM Scripts
mkdir scripts
echo php -l public\index.php > scripts\check_php_syntax.bat

REM Shared src (utilities, common infrastructure)
mkdir src
mkdir src\Infrastructure
mkdir src\Infrastructure\Persistence
mkdir src\Infrastructure\Services
mkdir src\Interface
mkdir src\Interface\Http
mkdir src\Interface\Http\Controllers
mkdir src\Interface\Http\Routes
mkdir src\Interface\Views

REM Storage
mkdir storage
mkdir storage\logs

REM Tests
mkdir tests
mkdir tests\User
mkdir tests\User\E2E
mkdir tests\User\Integration
mkdir tests\User\Unit

REM Tools
mkdir tools
mkdir tools\code_style
mkdir tools\docker
mkdir tools\git_hooks

REM UI Design materials
mkdir ui_design
mkdir ui_design\mockups
mkdir ui_design\prototypes
mkdir ui_design\wireframes

echo.> ui_design\mockups\course_list.png
echo.> ui_design\mockups\login_screen.png
echo.> ui_design\prototypes\interactive_prototype.pdf
echo.> ui_design\wireframes\course_list_wireframe.jpg

REM Visual Identity and Branding Design (clean, based on 99designs best practices)
mkdir visual_identity
mkdir visual_identity\assets
mkdir visual_identity\assets\icons
mkdir visual_identity\assets\illustrations
mkdir visual_identity\assets\logos

mkdir visual_identity\exports
mkdir visual_identity\exports\for_print
mkdir visual_identity\exports\for_web
mkdir visual_identity\exports\transparent

mkdir visual_identity\fonts

mkdir visual_identity\guidelines
echo.> visual_identity\guidelines\BRAND_GUIDELINES.md
echo.> visual_identity\guidelines\color_palette.md
echo.> visual_identity\guidelines\logo_usage.pdf

mkdir visual_identity\references

mkdir visual_identity\source_files
mkdir visual_identity\source_files\campaigns
mkdir visual_identity\source_files\social_media
mkdir visual_identity\source_files\templates
mkdir visual_identity\source_files\typography

cd ..
echo Project structure created successfully (alphabetically organized)!

endlocal
