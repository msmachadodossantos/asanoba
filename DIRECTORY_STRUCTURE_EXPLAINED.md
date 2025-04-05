This document provides a **comprehensive explanation** of the folder and file structure adopted by this project.  

It is intended to help **developers, designers, business analysts, stakeholders, and contributors** understand how the code and assets are organized, what each part is responsible for, and how to navigate and contribute efficiently.


## 🧭 Overview

This project is structured following the principles of:

- ✅ **Domain-Driven Design (DDD)** — to reflect real-world business rules through modular contexts.
- ✅ **Clean Architecture** — to enforce separation of concerns and promote maintainability.
- ✅ **Separation of roles** — clear distinction between code, interface design, and branding.
- ✅ **Open collaboration** — documentation and design assets are versioned alongside code for full team visibility.


## 📂 Root-Level Directories and Files

| Name               | Description |
|--------------------|-------------|
| `.gitignore`        | Defines files/folders to exclude from version control (e.g., logs, temp files, `.env`). |
| `composer.json`     | Defines the dependencies and configuration for a PHP project using Composer. |
| `CONTRIBUTING.md`   | Guidelines for how to contribute (code style, branches, PRs, etc.). |
| `LICENSE`           | Legal terms for use and distribution (e.g., MIT License). |
| `README.md`         | Project introduction, objectives, and quick start. |


## 📂 `cli/`

Command-line utilities and custom tools to **automate repetitive tasks**.

Example:
- `make_module.php`: Generates a full module skeleton for a new bounded context following Clean Architecture.


## 📂 `config/`

This folder contains **application-wide configuration files** used during runtime or environment setup:

- `app.php`: Global app settings (e.g., locale, timezone).
- `database.php`: Database connection definitions.
- `env_example`: A template file for setting up local environments via `.env`.


## 📂 `docs/`

Project documentation intended for both **technical and business stakeholders**:

- `architecture/`: Diagrams, architectural decision records (ADR), and system models.
- `business/`: Business rules, functional requirements, and use case definitions.
- `technical/`: Developer-oriented details: code structure, conventions, dependencies, etc.

> Keeping docs in source control ensures versioned knowledge sharing.


## 📂 `modules/`

This is the **core** of the application, where domain logic lives.  
Each module (e.g., `User`, `Course`, `Enrollment`) is an **independent bounded context**, organized using Clean Architecture.

**Example: `modules/User/`**

| Subdirectory         | Purpose |
|----------------------|---------|
| `Application/`       | Handles orchestration of business logic via use cases, DTOs, and application services. |
| `Domain/`            | Contains pure business logic: Entities, ValueObjects, Domain Services, and Contracts (interfaces). |
| `Infrastructure/`    | Implements technical details: database connections, third-party services, migrations, etc. |
| `Interface/`         | Exposes the module through interfaces such as HTTP controllers, routes, and views. |

> New features should be developed within these modules to ensure proper separation and encapsulation.


## 📂 `public/`

The **public web root**, served by the web server (e.g., Apache, Nginx):

| Path                 | Purpose |
|----------------------|---------|
| `index.php`          | Front controller — entry point for all requests. |
| `assets/css/`        | CSS stylesheets. |
| `assets/js/`         | JavaScript code. |
| `assets/images/`     | Static image assets. |


## 📂 `scripts/`

Shell or batch scripts used to automate tasks during development or CI/CD.

Example:
- `check_php_syntax.bat`: Recursively validates PHP syntax for all source files.


## 📂 `src/`

Contains **shared infrastructure or utility code** not tied to any specific business domain/module.

| Subdirectory         | Purpose |
|----------------------|---------|
| `Infrastructure/`    | Generic services such as email, file storage, logging, etc. |
| `Interface/`         | Controllers, views, or routes used outside domain modules (e.g., generic error pages, auth). |

> Business rules **should never** be placed here — use `modules/` instead.


## 📂 `storage/`

Used by the system to store runtime or temporary files:

| Path            | Purpose |
|-----------------|---------|
| `logs/`         | Application logs for debugging and auditing. (Should be `.gitignore`d) |


## 📂 `tests/`

Organized to **mirror the structure of the `modules/` folder**, allowing tests to be logically grouped by domain and type:

| Subdirectory     | Purpose |
|------------------|---------|
| `Unit/`          | Tests for business logic in isolation. |
| `Integration/`   | Tests with real infrastructure (e.g., DB, filesystem). |
| `E2E/`           | End-to-end or acceptance tests simulating user flows. |


## 📂 `tools/`

Development tools and environment setup assets:

| Subdirectory       | Purpose |
|--------------------|---------|
| `code_style/`      | Formatters and linters configuration (e.g., PHP-CS-Fixer). |
| `docker/`          | Dockerfiles and Docker Compose setup for local dev. |
| `git_hooks/`       | Git automation scripts (e.g., pre-commit validation). |


## 📂 `ui_design/`

Contains **interface design resources** created by UI/UX designers.

| Subdirectory       | Purpose |
|--------------------|---------|
| `mockups/`         | High-fidelity static UI designs. |
| `prototypes/`      | Interactive flows and navigable prototypes. |
| `wireframes/`      | Low-fidelity conceptual layouts. |

> These files assist frontend development and UI testing.


## 📂 `visual_identity/`

Directory intended for use by the **branding and graphic design team**.

| Subdirectory         | Purpose |
|----------------------|---------|
| `assets/`            | Final versions of logos, icons, and illustrations. |
| ├── `icons/`         | Scalable brand iconography. |
| ├── `illustrations/` | Custom artwork. |
| └── `logos/`         | Variations of the official logo. |
| `exports/`           | Exported files in multiple formats for print, web, or transparent backgrounds. |
| ├── `for_print/`     | CMYK files or high-res materials for printers. |
| ├── `for_web/`       | Optimized files for screens and digital use. |
| └── `transparent/`   | Logos/images with transparent backgrounds. |
| `fonts/`             | Font families used in the brand, including licensing info. |
| `guidelines/`        | Brand guidelines and documentation for usage. |
| ├── `BRAND_GUIDELINES.md` | Markdown version of the branding guide. |
| ├── `logo_usage.pdf` | Visual reference on do's and don'ts. |
| └── `color_palette.md` | Brand color rules and codes. |
| `references/`        | Moodboards, inspiration sources, and external references. |
| `source_files/`      | Editable files from Adobe, Figma, Sketch, etc. |
| ├── `campaigns/`     | Materials used in marketing campaigns. |
| ├── `social_media/`  | Assets for Instagram, LinkedIn, etc. |
| ├── `templates/`     | Reusable layout and export templates. |
| └── `typography/`    | Font studies, examples, and text formatting references. |


## 📏 Naming Conventions

To ensure clarity, consistency, and maintainability, the following naming conventions are enforced:

| Element               | Convention             | Example                        |
|------------------------|------------------------|--------------------------------|
| Class names            | `PascalCase`           | `UserService`, `CourseManager` |
| Class files            | `PascalCase.php`       | `UserService.php`              |
| Interfaces             | `PascalCaseInterface`  | `UserRepositoryInterface`      |
| Constants              | `UPPER_SNAKE_CASE`     | `MAX_LOGIN_ATTEMPTS`           |
| Non-class files        | `snake_case.ext`       | `make_module.php`, `env_example` |
| Documentation files    | `UPPERCASE_SNAKE_CASE.md` | `README.md`, `BRAND_GUIDELINES.md` |
| Folder names           | `snake_case`           | `value_objects`, `http_routes` |


## 🧠 Onboarding Advice

- **Always look for an existing module** before creating new ones.
- **Follow naming conventions strictly** to ensure cohesion and tooling support.
- Place **all domain logic inside `modules/`**, never in `src/` or `public/`.
- Keep design files updated in `ui_design/` or `visual_identity/` according to purpose.
- Update documentation (`docs/`) when introducing new concepts or modules.
- Use `scripts/` and `tools/` to automate development and maintain standards.

---

Welcome aboard, and thank you for contributing to this project!  

If anything is unclear, please refer to `CONTRIBUTING.md` or reach out to the project maintainers.