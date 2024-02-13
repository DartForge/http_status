# http_status

Constants enumerating the HTTP status codes in Dart. All status codes defined in RFC1945 (HTTP/1.0, RFC2616 (HTTP/1.1), and RFC2518 (WebDAV) are supported.

[![Star this Repo](https://img.shields.io/github/stars/andgar2010/http_status.svg?style=flat)](https://github.com/andgar2010/http_status)
<!-- [![Pub Package](https://img.shields.io/pub/v/http_status.svg?style=flat)](https://pub.dartlang.org/packages/http_status) -->
[![build status](https://github.com/andgar2010/http_status/actions/workflows/build.yml/badge.svg)](https://github.com/andgar2010/http_status/actions/workflows/build.yml)

[![Coverage Status](https://coveralls.io/repos/github/andgar2010/http_status/badge.svg?branch=main)](https://coveralls.io/github/andgar2010/http_status?branch=main)

[![wakatime](https://wakatime.com/badge/user/7267c60f-69d6-47f2-941f-06869f08edc8/project/018d207e-c2bf-4b0f-96f5-77f9647157f8.svg)](https://wakatime.com/badge/user/7267c60f-69d6-47f2-941f-06869f08edc8/project/018d207e-c2bf-4b0f-96f5-77f9647157f8)

## Codes

| Code | Http Status Name                   | Http Status (V1.x.x - Deprecated)                                                               | Http Status (V2.x.x)            |
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
| 302  | Found  /  Moved Temporarily        | Found  /  Moved_Temporarily               / FOUND  /  MOVED_TEMPORARILY                           | found  /  movedTemporarily      |
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

A library for debugging and displaying http status codes.
Includes 63 status codes, messages and desciptions sourced from
the official spec <https://tools.ietf.org/html/rfc723> and <https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/>

## Installation

```shell
dart pub add http_status
# or
flutter pub add http_status
```

Or in the `dependencies:` section of your `pubspec.yaml`, add the following line:

```yaml
dependencies:
  http_status: <latest_version>
```

## Usage

A simple usage example:

```dart
import 'package:http_status/http_status.dart';

main() {
  print('${HttpStatusCode.ok}');
// 200

  print('${HttpStatus.Ok}'); // Note: 'Ok' is deprecated and shouldn't be used. Use [ok] instead.
// HttpStatus(
//   code: 200,
//   name: 'OK',
//   description: 'The request was fulfilled.'
// )

  print('${HttpStatus.ok}');
// HttpStatus(
//   code: 200,
//   name: 'OK',
//   description: 'The request was fulfilled.'
// )


  print('${HttpStatus.NoContent}'); // Note: 'NoContent' is deprecated and shouldn't be used. Use [noContent] instead.
// HttpStatus(
//   code: 204,
//   name: 'No Content',
//   description: 'The server has successfully fulfilled the request and that there is no additional content to send in the response payload body.'
// )

  print('${HttpStatusCode.noContent}');
// HttpStatus(
//   code: 204,
//   name: 'No Content',
//   description: 'The server has successfully fulfilled the request and that there is no additional content to send in the response payload body.'
// )

  print('${HttpStatus.fromCode(404)}');
// HttpStatus(
//   code: 404,
//   name: 'Not Found',
//   description: 'The origin server did not find a current representation for the target resource or is not willing to disclose that one exists.'
// )


  // isInformation
  print(HttpStatusCode.processing.isInformationHttpStatusCode); // true
  print(HttpStatusCode.notFound.isInformationHttpStatusCode); // false

  // isSuccessful
  print(HttpStatusCode.accepted.isSuccessfulHttpStatusCode); // true
  print(HttpStatusCode.notFound.isSuccessfulHttpStatusCode); // false

  // isRedirect
  print(HttpStatusCode.permanentRedirect.isRedirectHttpStatusCode); // true
  print(HttpStatusCode.notFound.isRedirectHttpStatusCode); // false

  // isClientError
  print(HttpStatusCode.notFound.isClientErrorHttpStatusCode); // true
  print(HttpStatusCode.processing.isClientErrorHttpStatusCode); // false

  // isServerError
  print(HttpStatusCode.internalServerError.isServerError); // true
  print(HttpStatusCode.notFound.isServerError); // false
}
```

```dart
import 'package:http/http.dart' as http;
import 'package:http_status/http_status.dart';

final res = await http.get(Uri.parse(url));

if (res.statusCode == HttpStatusCode.ok) {
  final httpStatus = HttpStatus.fromCode(res.statusCode);

  return {
    'statusCode': res.statusCode,
    'httpStatus': httpStatus,
    'data': res.body
  };
}
```

```dart
import 'package:http/http.dart' as http;
import 'package:http_status/http_status.dart';

final res = await http.get(Uri.parse(url));

if (res.statusCode.isSuccessfulHttpStatusCode) {
  final httpStatus = HttpStatus.fromCode(res.statusCode);

  return {
    'statusCode': res.statusCode,
    'httpStatus': httpStatus,
    'data': res.body
  };
}
```

## Thanking all Awesome Contributors :heart:

[![Contributors](https://contrib.rocks/image?repo=andgar2010/http_status)](https://github.com/andgar2010/http_status/graphs/contributors)

Contributions of any kind are welcome!

## License

[BSD](LICENSE)

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/andgar2010/http_status/issues
