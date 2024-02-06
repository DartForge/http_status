# Changelog

## [2.0.0] - 2024-02-06

### Added

- HttpStatusCode 103 earlyHints feature for more nuanced HTTP status code handling.
- New checks for different categories of HTTP status codes: isInformationHttpStatusCode, isSuccessfulHttpStatusCode, isRedirectHttpStatusCode, isClientErrorHttpStatusCode, isServerErrorHttpStatusCode.
- GitHub Actions CI integration to streamline development workflows.
- Transition from codecov.io to Coveralls for enhanced code coverage analysis.
- Repository badges for quick access to project status indicators.

### Changed

- **HttpStatus Class Update:**
  - **New `description` Field:** Added a required `description` field to provide more context around HTTP status codes.
  - **Named Parameters:** Transitioned from positional to named parameters in the constructor to improve code clarity and enforce parameter requirements.
  - **Enhanced `toString()` Method:** Updated to include `description`, offering a more comprehensive string representation.
- Documentation Enhanced: Improved documentation for both `HttpStatusCode` and `HttpStatus`, offering clearer guidelines and usage examples.
- Enabled additional lint rules: lints and dart_code_linter, for improved code quality and consistency.

### Deprecated

- Deprecated snake_uppercase constants in `HttpStatus` (e.g., `HttpStatus.Not_Found`) , adhering to the Dart effective style guide's recommendation: [`PREFER using lowerCamelCase for constant names`](https://dart.dev/effective-dart/style#prefer-using-lowercamelcase-for-constant-names). These uppercase items will be removed in the next version.
- Deprecated snake_uppercase constants in `HttpStatusCode` (e.g., `HttpStatusCode.Not_Found`, `HttpStatusCode.NOT_FOUND`) in favor of lowercase versions (e.g., `HttpStatusCode.notFound`), adhering to the Dart effective style guide's recommendation: [`PREFER using lowerCamelCase for constant names`](https://dart.dev/effective-dart/style#prefer-using-lowercamelcase-for-constant-names). These uppercase items will be removed in the next version.

### Removed

- Dropped compatibility with Dart 1.x due to migration towards Dart 2.18 which includes support for extension methods, marking a significant change in the required development environment.

## 1.0.1+1

- Moved `coverage` to `dev_dependencies` and downgraded to `^0.7.3`

## 1.0.1

- Added `HttpStatus.fromCode` constructor

## 1.0.0+3

- Increased coverage

## 1.0.0+2

- codecov.io setup

## 1.0.0+1

- Added dart_codecov_generator

## 1.0.0

- Created `HttpStatusCode` and `HttpStatus`

## 0.0.1

- Initial version, created by Stagehand
