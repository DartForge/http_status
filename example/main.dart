// Copyright (c) 2017, Era Productions.
// Copyright (c) 2024, TECH-ANDGAR.
// All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:http_status/http_status.dart';

void main() {
  print('${HttpStatusCode.ok}'); // 200
  print('${HttpStatus.ok}');
  // HttpStatus(
  //   code: 200,
  //   name: 'OK',
  //   description: 'The request was fulfilled.'
  // )
  print('${HttpStatusCode.noContent}'); // 204
  print('${HttpStatus.fromCode(404)}');
  // HttpStatus(
  //   code: 404,
  //   name: 'Not Found',
  //   description: 'The origin server did not find a current representation for the target resource or is not willing to disclose that one exists.'
  // )

  // isInformation (Http Status Code 200 - 299)
  print(HttpStatusCode.processing.isInformationHttpStatusCode); // true
  print(HttpStatusCode.notFound.isInformationHttpStatusCode); // false
  print(HttpStatus.fromCode(103).isInformationHttpStatusCode); // true
  print(HttpStatus.fromCode(404).isInformationHttpStatusCode); // false
  print(103.isInformationHttpStatusCode); // true
  print(400.isInformationHttpStatusCode); // false

  // isSuccessful (Http Status Code 200 - 299)
  print(HttpStatusCode.accepted.isSuccessfulHttpStatusCode); // true
  print(HttpStatusCode.notFound.isSuccessfulHttpStatusCode); // false
  print(HttpStatus.fromCode(200).isSuccessfulHttpStatusCode); // true
  print(HttpStatus.fromCode(404).isSuccessfulHttpStatusCode); // false
  print(200.isSuccessfulHttpStatusCode); // true
  print(400.isSuccessfulHttpStatusCode); // false

  // isRedirect (Http Status Code 300 - 399)
  print(HttpStatusCode.permanentRedirect.isRedirectHttpStatusCode); // true
  print(HttpStatusCode.notFound.isRedirectHttpStatusCode); // false
  print(HttpStatus.fromCode(303).isRedirectHttpStatusCode); // true
  print(HttpStatus.fromCode(404).isRedirectHttpStatusCode); // false
  print(303.isRedirectHttpStatusCode); // true
  print(400.isRedirectHttpStatusCode); // false

  // isClientError (Http Status Code 400 - 499)
  print(HttpStatusCode.notFound.isClientErrorHttpStatusCode); // true
  print(HttpStatusCode.processing.isClientErrorHttpStatusCode); // false
  print(HttpStatus.fromCode(404).isClientErrorHttpStatusCode); // true
  print(HttpStatus.fromCode(500).isClientErrorHttpStatusCode); // false
  print(404.isClientErrorHttpStatusCode); // true
  print(200.isClientErrorHttpStatusCode); // false

  // isServerError (Http Status Code 500 - 599)
  print(HttpStatusCode.internalServerError.isServerErrorHttpStatusCode); // true
  print(HttpStatusCode.notFound.isServerErrorHttpStatusCode); // false;
  print(HttpStatus.fromCode(502).isServerErrorHttpStatusCode); // true
  print(HttpStatus.fromCode(200).isServerErrorHttpStatusCode); // false
  print(503.isServerErrorHttpStatusCode); // true
  print(200.isServerErrorHttpStatusCode); // false
}
