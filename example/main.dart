// Copyright (c) 2017, Era Productions.
// Copyright (c) 2024, TECH-ANDGAR.
// All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:http_status/http_status.dart';

void main() {
  print('${HttpStatusCode.ok}');
  print('${HttpStatus.ok}');
  print('${HttpStatusCode.noContent}');
  print('${HttpStatus.fromCode(404)}');

  // isInformation (HttpStatusCode 200-299)
  print(HttpStatusCode.processing.isInformationHttpStatusCode); // true
  print(HttpStatusCode.notFound.isInformationHttpStatusCode); // false

  // isSuccessful (HttpStatusCode 200-299)
  print(200.isSuccessfulHttpStatusCode);
  print(400.isSuccessfulHttpStatusCode);
  print(HttpStatusCode.accepted.isSuccessfulHttpStatusCode);
  print(HttpStatusCode.notFound.isSuccessfulHttpStatusCode);

  // isRedirect (HttpStatusCode 300-399)
  print(HttpStatusCode.permanentRedirect.isRedirectHttpStatusCode); // true
  print(HttpStatusCode.notFound.isRedirectHttpStatusCode); // false

  // isClientError (HttpStatusCode 400-499)
  print(HttpStatusCode.notFound.isClientErrorHttpStatusCode); // true
  print(HttpStatusCode.processing.isClientErrorHttpStatusCode); // false

  // isServerError (HttpStatusCode 500-599)
  print(HttpStatusCode.internalServerError.isServerErrorHttpStatusCode); // true
  print(HttpStatusCode.notFound.isServerErrorHttpStatusCode); // false;
}
