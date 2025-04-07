@echo off
setlocal

REM Set the ROOT variable to the directory where this script is located
set "ROOT=%~dp0"
cd /d "%ROOT%"

REM ─────────────────────────────
REM Create top-level project directories
for %%D in (
    cli
    config
    docs
    modules
    project_docs
    public
    scripts
    src
    storage
    tests
    tools
    vendor
) do (
    if not exist %%D (
        mkdir %%D
        type nul > %%D\.keep
    )
)

REM ─────────────────────────────
REM Create module subdirectories following Domain-Driven Design (DDD) for the "user" module
set MODULE=modules\user
for %%D in (
    application
    domain\contracts
    domain\entities
    domain\services
    domain\value_objects
    infrastructure\migrations
    infrastructure\persistence
    infrastructure\services
    interface\http\controllers
    interface\http\routes
    interface\views
) do (
    if not exist "%MODULE%\%%D" (
        mkdir "%MODULE%\%%D"
        type nul > "%MODULE%\%%D\.keep"
    )
)

REM ─────────────────────────────
REM Create project documentation folders
for %%D in (
    project_docs\architecture
    project_docs\business
    project_docs\technical
) do (
    if not exist %%D (
        mkdir %%D
        type nul > %%D\.keep
    )
)

REM ─────────────────────────────
REM Inside business docs, create structured folders for requirements, feasibility, etc.
pushd project_docs\business
for %%D in (
    feasibility
    vision
    context_model
    requirements
    requirements\functional
    requirements\non_functional
    requirements\non_functional\product
    requirements\non_functional\organizational
    requirements\non_functional\external
    requirements\non_functional\usability
    requirements\user
    requirements\system
    requirements\enduring
    requirements\volatile
    use_cases
    concept_of_operations
) do (
    if not exist %%D (
        mkdir %%D
        type nul > %%D\.keep
    )
)
popd

REM ─────────────────────────────
REM UI Design folders moved inside project_docs
for %%D in (
    project_docs\ui_design
    project_docs\ui_design\mockups
    project_docs\ui_design\prototypes
    project_docs\ui_design\wireframes
) do (
    if not exist %%D (
        mkdir %%D
        type nul > %%D\.keep
    )
)

REM ─────────────────────────────
REM Visual Identity folders moved inside project_docs
for %%D in (
    project_docs\visual_identity
    project_docs\visual_identity\assets
    project_docs\visual_identity\assets\icons
    project_docs\visual_identity\assets\illustrations
    project_docs\visual_identity\assets\logos
    project_docs\visual_identity\exports
    project_docs\visual_identity\exports\for_print
    project_docs\visual_identity\exports\for_web
    project_docs\visual_identity\exports\transparent
    project_docs\visual_identity\fonts
    project_docs\visual_identity\guidelines
    project_docs\visual_identity\references
    project_docs\visual_identity\source_files
    project_docs\visual_identity\source_files\campaigns
    project_docs\visual_identity\source_files\social_media
    project_docs\visual_identity\source_files\templates
    project_docs\visual_identity\source_files\typography
) do (
    if not exist %%D (
        mkdir %%D
        type nul > %%D\.keep
    )
)

REM ─────────────────────────────
REM Create public-facing folders for assets and uploads
for %%D in (
    public\assets
    public\assets\css
    public\assets\images
    public\assets\js
    public\uploads
) do (
    if not exist %%D (
        mkdir %%D
        type nul > %%D\.keep
    )
)

REM ─────────────────────────────
REM Create shared source code folders
for %%D in (
    src\infrastructure
    src\infrastructure\persistence
    src\infrastructure\services
    src\interface
    src\interface\http
    src\interface\http\controllers
    src\interface\http\routes
    src\interface\views
) do (
    if not exist %%D (
        mkdir %%D
        type nul > %%D\.keep
    )
)

REM ─────────────────────────────
REM Create storage subfolders (logs and private uploads)
for %%D in (
    storage\logs
    storage\uploads
) do (
    if not exist %%D (
        mkdir %%D
        type nul > %%D\.keep
    )
)

REM ─────────────────────────────
REM Create test structure for user module (unit, integration, e2e)
for %%D in (
    tests\user
    tests\user\e2e
    tests\user\integration
    tests\user\unit
) do (
    if not exist %%D (
        mkdir %%D
        type nul > %%D\.keep
    )
)

REM ─────────────────────────────
REM Create development tools subfolders (e.g., for Docker, Git hooks, code style)
for %%D in (
    tools\code_style
    tools\docker
    tools\git_hooks
) do (
    if not exist %%D (
        mkdir %%D
        type nul > %%D\.keep
    )
)

REM Done
echo All directories created/updated successfully.
endlocal
