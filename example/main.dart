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
