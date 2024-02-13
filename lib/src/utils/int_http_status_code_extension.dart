// Copyright (c) 2024, TECH-ANDGAR.
// All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
extension IntHttpStatusCodeExtension on int {
  bool isBetween(int lower, int upper) => this >= lower && this <= upper;

  /// Returns true if this ranges between 100 and 199
  bool get isInformationHttpStatusCode => isBetween(100, 199);

  /// Returns true if code ranges between 200 and 299
  bool get isSuccessfulHttpStatusCode => isBetween(200, 299);

  /// Returns true if this ranges between 300 and 399
  bool get isRedirectHttpStatusCode => isBetween(300, 399);

  /// Returns true if this ranges between 400 and 499
  bool get isClientErrorHttpStatusCode => isBetween(400, 499);

  /// Returns true if code ranges between 500 and 599
  bool get isServerErrorHttpStatusCode => isBetween(500, 599);
}
