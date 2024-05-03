# Changelog

## [3.3.2] - 2024-05-03

### Fixed - 3.3.2

- Updated the Dart setup version in workflow to v1.6.4 and dev dependencies versions for dart_code_linter to v1.1.3 and test to v1.25.4, also fixed a typo.

## [3.3.1] - 2024-02-26

### Fixed - 3.3.1

- Enhanced linting rules and improved type specification in `http_status_test.dart` for better code quality control and updated documentation.

## [3.3.0] - 2024-02-24

### Added - 3.3.0

- Added @immutable annotation to HttpStatus class for enhanced immutability.

### Fixed - 3.3.0

- Improved error messaging for unrecognized fromCode() of HTTP status codes and added verification test case.

## [3.2.0] - 2024-02-17

### Fixed - 3.2.0

- Replace HttpStatus constants with direct values for support web

## [3.1.0] - 2024-02-17

### Added - 3.1.0

- Added new methods to the `HttpStatus` class for checking HTTP status code ranges. Includes `isInformationHttpStatusCode`, `isSuccessfulHttpStatusCode`, `isRedirectHttpStatusCode`, `isClientErrorHttpStatusCode`, and `isServerErrorHttpStatusCode`. These methods facilitate categorizing HTTP status codes without manual comparisons.

### Fixed - 3.1.0

- Added earlyHints 103 in HttpStatus.fromCode for this missing element.

### Changed - 3.1.0

- Documentation Enhanced: Improved documentation for `readme.md`, offering clearer guidelines and usage examples.

## [3.0.0] - 2024-02-12

### Removed - 3.0.0

- **Deprecated HTTP status code constants:** Capitalized and underscored versions are no longer available.

### Changed - 3.0.0

- Dropped compatibility with Dart 2.x due to migration towards Dart 3.0 which includes support for records, marking a significant change in the required development environment.

- **HttpStatus class:**
  - Refactored equality and hashCode methods for more robust object comparisons using code, name, and description.

- **Example Code Updates**

| Code | Http Status Name                   | Http Status (v1.x - v2.x Removed)                                                               | Http Status (v2.x - v3.x)       |
| ---- | ---------------------------------- | ----------------------------------------------------------------------------------------------- | ------------------------------- |
| 100  | Continue                           | Continue                                  / CONTINUE                                            | continue_                       |
| 101  | Switching Protocols                | Switching_Protocols                       / SWITCHING_PROTOCOLS                                 | switchingProtocols              |
| 102  | Processing                         | Processing                                / PROCESSING                                          | processing                      |
| 103  | Early Hints                        | -                                                                                               | earlyHints                      |
| 200  | OK                                 | Ok                                        / OK                                                  | ok                              |
| 201  | Created                            | Created                                   / CREATED                                             | created                         |
| 202  | Accepted                           | Accepted                                  / ACCEPTED                                            | accepted                        |
| 203  | Non Authoritative Information      | NonAuthoritative_Information              / NON_AUTHORITATIVE_INFORMATION                       | nonAuthoritativeInformation     |
| 204  | No Content                         | No_Content                                / NO_CONTENT                                          | noContent                       |
| 205  | Reset Content                      | Reset_Content                             / RESET_CONTENT                                       | resetContent                    |
| 206  | Partial Content                    | Partial_Content                           / PARTIAL_CONTENT                                     | partialContent                  |
| 207  | Multi-Status                       | MultiStatus                               / MULTISTATUS                                         | multiStatus                     |
| 208  | Already Reported                   | Already_Reported                          / ALREADY_REPORTED                                    | alreadyReported                 |
| 226  | I'M Used                           | IM_Used                                   / IM_USED                                             | imUsed                          |
| 300  | Multiple Choices                   | Multiple_Choices                          / MULTIPLE_CHOICES                                    | multipleChoices                 |
| 301  | Moved Permanently                  | Moved_Permanently                         / MOVED_PERMANENTLY                                   | movedPermanently                |
| 302  | Found  /  Moved Temporarily        | Found  /  Moved_Temporarily               / FOUND  /  MOVED_TEMPORARILY                         | found  /  movedTemporarily      |
| 303  | See Other                          | See_Other                                 / SEE_OTHER                                           | seeOther                        |
| 304  | Not Modified                       | Not_Modified                              / NOT_MODIFIED                                        | notModified                     |
| 305  | Use Proxy                          | Use_Proxy                                 / USE_PROXY                                           | useProxy                        |
| 307  | Temporary Redirect                 | Temporary_Redirect                        / TEMPORARY_REDIRECT                                  | temporaryRedirect               |
| 308  | Permanent Redirect                 | Permanent_Redirect                        / PERMANENT_REDIRECT                                  | permanentRedirect               |
| 400  | Bad Request                        | Bad_Request                               / BAD_REQUEST                                         | badRequest                      |
| 401  | Unauthorized                       | Unauthorized                              / UNAUTHORIZED                                        | unauthorized                    |
| 402  | Payment Required                   | Payment_Required                          / PAYMENT_REQUIRED                                    | paymentRequired                 |
| 403  | Forbidden                          | Forbidden                                 / FORBIDDEN                                           | forbidden                       |
| 404  | Not Found                          | Not_Found                                 / NOT_FOUND                                           | notFound                        |
| 405  | Method Not Allowed                 | Method_Not_Allowed                        / METHOD_NOT_ALLOWED                                  | methodNotAllowed                |
| 406  | Not Acceptable                     | Not_Acceptable                            / NOT_ACCEPTABLE                                      | notAcceptable                   |
| 407  | Proxy Authentication Required      | Proxy_Authentication_Required             / PROXY_AUTHENTICATION_REQUIRED                       | proxyAuthenticationRequired     |
| 408  | Request Timeout                    | Request_Timeout                           / REQUEST_TIMEOUT                                     | requestTimeout                  |
| 409  | Conflict                           | Conflict                                  / CONFLICT                                            | conflict                        |
| 410  | Gone                               | Gone                                      / GONE                                                | gone                            |
| 411  | Length Required                    | Length_Required                           / LENGTH_REQUIRED                                     | lengthRequired                  |
| 412  | Precondition Failed                | Precondition_Failed                       / PRECONDITION_FAILED                                 | preconditionFailed              |
| 413  | Request Entity Too Large           | Payload_Too_Large / PAYLOAD_TOO_LARGE     / Request_Entity_Too_Large / REQUEST_ENTITY_TOO_LARGE | requestEntityTooLarge           |
| 414  | Request-URI Too Long               | RequestURI_Too_Long / REQUESTURI_TOO_LONG / Request_Uri_Too_Long / REQUEST_URI_TOO_LONG         | requestUriTooLong               |
| 415  | Unsupported Media Type             | Unsupported_Media_Type                    / UNSUPPORTED_MEDIA_TYPE                              | unsupportedMediaType            |
| 416  | Requested Range Not Satisfiable    | Requested_Range_Not_Satisfiable           / REQUESTED_RANGE_NOT_SATISFIABLE                     | requestedRangeNotSatisfiable    |
| 417  | Expectation Failed                 | Expectation_Failed                        / EXPECTATION_FAILED                                  | expectationFailed               |
| 418  | I'm a teapot                       | -                                                                                               | imATeapot                       |
| 419  | Insufficient Space on Resource     | -                                                                                               | insufficientSpaceOnResource     |
| 420  | Method Failure                     | -                                                                                               | methodFailure                   |
| 421  | Misdirected Request                | Misdirected_Request                       / MISDIRECTED_REQUEST                                 | misdirectedRequest              |
| 422  | Unprocessable Entity               | Unprocessable_Entity                      / UNPROCESSABLE_ENTITY                                | unprocessableEntity             |
| 423  | Locked                             | Locked                                    / LOCKED                                              | locked                          |
| 424  | Failed Dependency                  | Failed_Dependency                         / FAILED_DEPENDENCY                                   | failedDependency                |
| 426  | Upgrade Required                   | Upgrade_Required                          / UPGRADE_REQUIRED                                    | upgradeRequired                 |
| 428  | Precondition Required              | Precondition_Required                     / PRECONDITION_REQUIRED                               | preconditionRequired            |
| 429  | Too Many Requests                  | Too_Many_Requests                         / TOO_MANY_REQUESTS                                   | tooManyRequests                 |
| 431  | Request Header Fields Too Large    | Request_Header_Fields_Too_Large           / REQUEST_HEADER_FIELDS_TOO_LARGE                     | requestHeaderFieldsTooLarge     |
| 444  | Connection Closed Without Response | Connection_Closed_Without_Response        / CONNECTION_CLOSED_WITHOUT_RESPONSE                  | connectionClosedWithoutResponse |
| 451  | Unavailable For Legal Reasons      | Unavailable_For_Legal_Reasons             / UNAVAILABLE_FOR_LEGAL_REASONS                       | unavailableForLegalReasons      |
| 499  | Client Closed Request              | Client_Closed_Request                     / CLIENT_CLOSED_REQUEST                               | clientClosedRequest             |
| 500  | Internal Server Error              | Internal_Server_Error                     / INTERNAL_SERVER_ERROR                               | internalServerError             |
| 501  | Not Implemented                    | Not_Implemented                           / NOT_IMPLEMENTED                                     | notImplemented                  |
| 502  | Bad Gateway                        | Bad_Gateway                               / BAD_GATEWAY                                         | badGateway                      |
| 503  | Service Unavailable                | Service_Unavailable                       / SERVICE_UNAVAILABLE                                 | serviceUnavailable              |
| 504  | Gateway Timeout                    | Gateway_Timeout                           / GATEWAY_TIMEOUT                                     | gatewayTimeout                  |
| 505  | HTTP Version Not Supported         | HTTP_Version_Not_Supported                / HTTP_VERSION_NOT_SUPPORTED                          | httpVersionNotSupported         |
| 506  | Variant Also Negotiates            | Variant_Also_Negotiates                   / VARIANT_ALSO_NEGOTIATES                             | variantAlsoNegotiates           |
| 507  | Insufficient Storage               | Insufficient_Storage                      / INSUFFICIENT_STORAGE                                | insufficientStorage             |
| 508  | Loop Detected                      | Loop_Detected                             / LOOP_DETECTED                                       | loopDetected                    |
| 510  | Not Extended                       | Not_Extended                              / NOT_EXTENDED                                        | notExtended                     |
| 511  | Network Authentication Required    | Network_Authentication_Required           / NETWORK_AUTHENTICATION_REQUIRED                     | networkAuthenticationRequired   |
| 599  | Network Connect Timeout Error      | Network_Connect_Timeout_Error             / NETWORK_CONNECT_TIMEOUT_ERROR                       | networkConnectTimeoutError      |

## [2.1.0] - 2024-02-10

- Expanded the Dart SDK compatibility range to '<4.0.0'.

## [2.0.1] - 2024-02-10

- **Enhanced comparability:** `operator ==` now uses `covariant` for better type safety and comparison accuracy.
- **Richer object representation:** `toString()` includes code, name, and description for easier debugging.

## [2.0.0] - 2024-02-06

### Added - 2.0.0

- HttpStatusCode 103 earlyHints feature for more nuanced HTTP status code handling.
- New checks for different categories of HTTP status codes: isInformationHttpStatusCode, isSuccessfulHttpStatusCode, isRedirectHttpStatusCode, isClientErrorHttpStatusCode, isServerErrorHttpStatusCode.
- GitHub Actions CI integration to streamline development workflows.
- Transition from codecov.io to Coveralls for enhanced code coverage analysis.
- Repository badges for quick access to project status indicators.

### Changed - 2.0.0

- **HttpStatus Class Update:**
  - **New `description` Field:** Added a required `description` field to provide more context around HTTP status codes.
  - **Named Parameters:** Transitioned from positional to named parameters in the constructor to improve code clarity and enforce parameter requirements.
  - **Enhanced `toString()` Method:** Updated to include `description`, offering a more comprehensive string representation.
- Documentation Enhanced: Improved documentation for both `HttpStatusCode` and `HttpStatus`, offering clearer guidelines and usage examples.
- Enabled additional lint rules: lints and dart_code_linter, for improved code quality and consistency.

### Deprecated - 2.0.0

- Deprecated snake_uppercase constants in `HttpStatus` (e.g., `HttpStatus.Not_Found`) , adhering to the Dart effective style guide's recommendation: [`PREFER using lowerCamelCase for constant names`](https://dart.dev/effective-dart/style#prefer-using-lowercamelcase-for-constant-names). These uppercase items will be removed in the next version.
- Deprecated snake_uppercase constants in `HttpStatusCode` (e.g., `HttpStatusCode.Not_Found`, `HttpStatusCode.NOT_FOUND`) in favor of lowercase versions (e.g., `HttpStatusCode.notFound`), adhering to the Dart effective style guide's recommendation: [`PREFER using lowerCamelCase for constant names`](https://dart.dev/effective-dart/style#prefer-using-lowercamelcase-for-constant-names). These uppercase items will be removed in the next version.

### Removed - 2.0.0

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
