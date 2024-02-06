// Copyright (c) 2017, Era Productions.
// Copyright (c) 2024, TECH-ANDGAR.
// All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

// ignore_for_file: deprecated_member_use_from_same_package
// TODO: Remove this line `deprecated_member_use_from_same_package` in the next version (v3.0.0)
// Reason: Deprecated member use from same package violates the lint rule. Refactor it to comply with the Dart style guide

import 'package:http_status/http_status.dart';

void main() {
  print('${HttpStatusCode.ok}');
  print('${HttpStatus.OK}');
  // Note: 'Ok' is deprecated and shouldn't be used. Use [ok] instead.
  print('${HttpStatus.ok}');
  print('${HttpStatus.No_Content}');
  // Note: 'NoContent' is deprecated and shouldn't be used.
  // Use [noContent] instead.
  print('${HttpStatusCode.noContent}');
  print('${HttpStatus.fromCode(404)}');

  // isInformation
  print(HttpStatusCode.processing.isInformationHttpStatusCode);
  print(HttpStatusCode.notFound.isInformationHttpStatusCode);

  // isSuccessful
  print(200.isSuccessfulHttpStatusCode);
  print(400.isSuccessfulHttpStatusCode);
  print(HttpStatusCode.accepted.isSuccessfulHttpStatusCode);
  print(HttpStatusCode.notFound.isSuccessfulHttpStatusCode);

  // isRedirect
  print(HttpStatusCode.permanentRedirect.isRedirectHttpStatusCode);
  print(HttpStatusCode.notFound.isRedirectHttpStatusCode);

  // isClientError
  print(HttpStatusCode.notFound.isClientErrorHttpStatusCode);
  print(HttpStatusCode.processing.isClientErrorHttpStatusCode);

  // isServerError
  print(HttpStatusCode.internalServerError.isServerErrorHttpStatusCode);
  print(HttpStatusCode.notFound.isServerErrorHttpStatusCode);
}
