import 'package:http_status/http_status.dart';
import 'package:test/test.dart';

void main() {
  group('IntExtension.', () {
    group('isBetween', () {
      test('should return true if the number is within the range', () {
        expect(5.isBetween(3, 7), isTrue);
      });

      test(
        'should return true if the number is at the lower boundary of '
        'the range',
        () {
          expect(3.isBetween(3, 7), isTrue);
        },
      );

      test(
        'should return true if the number is at the upper boundary of '
        'the range',
        () {
          expect(7.isBetween(3, 7), isTrue);
        },
      );

      test('should return false if the number is below the range', () {
        expect(2.isBetween(3, 7), isFalse);
      });

      test('should return false if the number is above the range', () {
        expect(8.isBetween(3, 7), isFalse);
      });
    });
    // verifies status code checks
    test('isInformationHttpStatusCode', () {
      expect(102.isInformationHttpStatusCode, true);
      expect(99.isInformationHttpStatusCode, false);
      expect(HttpStatusCode.processing.isInformationHttpStatusCode, true);
      expect(HttpStatusCode.notFound.isInformationHttpStatusCode, false);
    });
    test('isSuccessfulHttpStatusCode', () {
      expect(200.isSuccessfulHttpStatusCode, true);
      expect(300.isSuccessfulHttpStatusCode, false);
      expect(HttpStatusCode.accepted.isSuccessfulHttpStatusCode, true);
      expect(HttpStatusCode.notFound.isSuccessfulHttpStatusCode, false);
    });
    test('isRedirectHttpStatusCode', () {
      expect(302.isRedirectHttpStatusCode, true);
      expect(202.isRedirectHttpStatusCode, false);
      expect(HttpStatusCode.permanentRedirect.isRedirectHttpStatusCode, true);
      expect(HttpStatusCode.notFound.isRedirectHttpStatusCode, false);
    });
    test('isClientErrorHttpStatusCode', () {
      expect(456.isClientErrorHttpStatusCode, true);
      expect(399.isClientErrorHttpStatusCode, false);
      expect(HttpStatusCode.notFound.isClientErrorHttpStatusCode, true);
      expect(HttpStatusCode.processing.isClientErrorHttpStatusCode, false);
    });
    test('isServerErrorHttpStatusCode', () {
      expect(512.isServerErrorHttpStatusCode, true);
      expect(443.isServerErrorHttpStatusCode, false);
      expect(
        HttpStatusCode.internalServerError.isServerErrorHttpStatusCode,
        true,
      );
      expect(HttpStatusCode.notFound.isServerErrorHttpStatusCode, false);
    });
  });
}
