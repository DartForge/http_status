# http_status

Constants enumerating the HTTP status codes in Dart. All status codes defined in RFC1945 (HTTP/1.0, RFC2616 (HTTP/1.1), and RFC2518 (WebDAV) are supported.

[![Star this Repo](https://img.shields.io/github/stars/andgar2010/http_status.svg?style=flat)](https://github.com/andgar2010/http_status)
<!-- [![Pub Package](https://img.shields.io/pub/v/http_status.svg?style=flat)](https://pub.dartlang.org/packages/http_status) -->
[![build status](https://github.com/andgar2010/http_status/actions/workflows/build.yml/badge.svg)](https://github.com/andgar2010/http_status/actions/workflows/build.yml)

[![Coverage Status](https://coveralls.io/repos/github/andgar2010/http_status/badge.svg?branch=main)](https://coveralls.io/github/andgar2010/http_status?branch=main)

[![wakatime](https://wakatime.com/badge/user/7267c60f-69d6-47f2-941f-06869f08edc8/project/018d207e-c2bf-4b0f-96f5-77f9647157f8.svg)](https://wakatime.com/badge/user/7267c60f-69d6-47f2-941f-06869f08edc8/project/018d207e-c2bf-4b0f-96f5-77f9647157f8)

## Codes

| Code | Http Status Name                   | Http Status (v3.x)       |
| ---- | ---------------------------------- | ------------------------------- |
| 100  | Continue                           | continue_                       |
| 101  | Switching Protocols                | switchingProtocols              |
| 102  | Processing                         | processing                      |
| 103  | Early Hints                        | earlyHints                      |
| 200  | OK                                 | ok                              |
| 201  | Created                            | created                         |
| 202  | Accepted                           | accepted                        |
| 203  | Non Authoritative Information      | nonAuthoritativeInformation     |
| 204  | No Content                         | noContent                       |
| 205  | Reset Content                      | resetContent                    |
| 206  | Partial Content                    | partialContent                  |
| 207  | Multi-Status                       | multiStatus                     |
| 208  | Already Reported                   | alreadyReported                 |
| 226  | I'M Used                           | imUsed                          |
| 300  | Multiple Choices                   | multipleChoices                 |
| 301  | Moved Permanently                  | movedPermanently                |
| 302  | Found  /  Moved Temporarily        | found  /  movedTemporarily      |
| 303  | See Other                          | seeOther                        |
| 304  | Not Modified                       | notModified                     |
| 305  | Use Proxy                          | useProxy                        |
| 307  | Temporary Redirect                 | temporaryRedirect               |
| 308  | Permanent Redirect                 | permanentRedirect               |
| 400  | Bad Request                        | badRequest                      |
| 401  | Unauthorized                       | unauthorized                    |
| 402  | Payment Required                   | paymentRequired                 |
| 403  | Forbidden                          | forbidden                       |
| 404  | Not Found                          | notFound                        |
| 405  | Method Not Allowed                 | methodNotAllowed                |
| 406  | Not Acceptable                     | notAcceptable                   |
| 407  | Proxy Authentication Required      | proxyAuthenticationRequired     |
| 408  | Request Timeout                    | requestTimeout                  |
| 409  | Conflict                           | conflict                        |
| 410  | Gone                               | gone                            |
| 411  | Length Required                    | lengthRequired                  |
| 412  | Precondition Failed                | preconditionFailed              |
| 413  | Request Entity Too Large           | requestEntityTooLarge           |
| 414  | Request-URI Too Long               | requestUriTooLong               |
| 415  | Unsupported Media Type             | unsupportedMediaType            |
| 416  | Requested Range Not Satisfiable    | requestedRangeNotSatisfiable    |
| 417  | Expectation Failed                 | expectationFailed               |
| 418  | I'm a teapot                       | imATeapot                       |
| 419  | Insufficient Space on Resource     | insufficientSpaceOnResource     |
| 420  | Method Failure                     | methodFailure                   |
| 421  | Misdirected Request                | misdirectedRequest              |
| 422  | Unprocessable Entity               | unprocessableEntity             |
| 423  | Locked                             | locked                          |
| 424  | Failed Dependency                  | failedDependency                |
| 426  | Upgrade Required                   | upgradeRequired                 |
| 428  | Precondition Required              | preconditionRequired            |
| 429  | Too Many Requests                  | tooManyRequests                 |
| 431  | Request Header Fields Too Large    | requestHeaderFieldsTooLarge     |
| 444  | Connection Closed Without Response | connectionClosedWithoutResponse |
| 451  | Unavailable For Legal Reasons      | unavailableForLegalReasons      |
| 499  | Client Closed Request              | clientClosedRequest             |
| 500  | Internal Server Error              | internalServerError             |
| 501  | Not Implemented                    | notImplemented                  |
| 502  | Bad Gateway                        | badGateway                      |
| 503  | Service Unavailable                | serviceUnavailable              |
| 504  | Gateway Timeout                    | gatewayTimeout                  |
| 505  | HTTP Version Not Supported         | httpVersionNotSupported         |
| 506  | Variant Also Negotiates            | variantAlsoNegotiates           |
| 507  | Insufficient Storage               | insufficientStorage             |
| 508  | Loop Detected                      | loopDetected                    |
| 510  | Not Extended                       | notExtended                     |
| 511  | Network Authentication Required    | networkAuthenticationRequired   |
| 599  | Network Connect Timeout Error      | networkConnectTimeoutError      |

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

  print('${HttpStatus.ok}');
// HttpStatus(
//   code: 200,
//   name: 'OK',
//   description: 'The request was fulfilled.'
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


  // isInformation (Http Status Code 100 - 199)
  print(HttpStatusCode.processing.isInformationHttpStatusCode); // true
  print(HttpStatusCode.notFound.isInformationHttpStatusCode); // false

  // isSuccessful (Http Status Code 200 - 299)
  print(HttpStatusCode.accepted.isSuccessfulHttpStatusCode); // true
  print(HttpStatusCode.notFound.isSuccessfulHttpStatusCode); // false

  // isRedirect (Http Status Code 300 - 399)
  print(HttpStatusCode.permanentRedirect.isRedirectHttpStatusCode); // true
  print(HttpStatusCode.notFound.isRedirectHttpStatusCode); // false

  // isClientError (Http Status Code 400 - 499)
  print(HttpStatusCode.notFound.isClientErrorHttpStatusCode); // true
  print(HttpStatusCode.processing.isClientErrorHttpStatusCode); // false

  // isServerError (Http Status Code 500 - 599)
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
