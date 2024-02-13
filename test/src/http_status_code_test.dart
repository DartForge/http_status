import 'package:http_status/http_status.dart';
import 'package:test/test.dart';

void main() {
  test('HttpStatusCode', () {
    expect(HttpStatusCode.continue_, equals(100));

    expect(HttpStatusCode.switchingProtocols, equals(101));

    expect(HttpStatusCode.processing, equals(102));

    expect(HttpStatusCode.earlyHints, equals(103));

    expect(HttpStatusCode.ok, equals(200));

    expect(HttpStatusCode.created, equals(201));

    expect(HttpStatusCode.accepted, equals(202));

    expect(HttpStatusCode.nonAuthoritativeInformation, equals(203));

    expect(HttpStatusCode.noContent, equals(204));

    expect(HttpStatusCode.resetContent, equals(205));

    expect(HttpStatusCode.partialContent, equals(206));

    expect(HttpStatusCode.multiStatus, equals(207));

    expect(HttpStatusCode.alreadyReported, equals(208));

    expect(HttpStatusCode.imUsed, equals(226));

    expect(HttpStatusCode.multipleChoices, equals(300));

    expect(HttpStatusCode.movedPermanently, equals(301));

    expect(HttpStatusCode.movedTemporarily, equals(302));

    expect(HttpStatusCode.found, equals(302));

    expect(HttpStatusCode.seeOther, equals(303));

    expect(HttpStatusCode.notModified, equals(304));

    expect(HttpStatusCode.useProxy, equals(305));

    expect(HttpStatusCode.temporaryRedirect, equals(307));

    expect(HttpStatusCode.permanentRedirect, equals(308));

    expect(HttpStatusCode.badRequest, equals(400));

    expect(HttpStatusCode.unauthorized, equals(401));

    expect(HttpStatusCode.paymentRequired, equals(402));

    expect(HttpStatusCode.forbidden, equals(403));

    expect(HttpStatusCode.notFound, equals(404));

    expect(HttpStatusCode.methodNotAllowed, equals(405));

    expect(HttpStatusCode.notAcceptable, equals(406));

    expect(HttpStatusCode.proxyAuthenticationRequired, equals(407));

    expect(HttpStatusCode.requestTimeout, equals(408));

    expect(HttpStatusCode.conflict, equals(409));

    expect(HttpStatusCode.gone, equals(410));

    expect(HttpStatusCode.lengthRequired, equals(411));

    expect(HttpStatusCode.preconditionFailed, equals(412));

    expect(HttpStatusCode.requestEntityTooLarge, equals(413));

    expect(HttpStatusCode.requestUriTooLong, equals(414));

    expect(HttpStatusCode.unsupportedMediaType, equals(415));

    expect(HttpStatusCode.requestedRangeNotSatisfiable, equals(416));

    expect(HttpStatusCode.expectationFailed, equals(417));

    expect(HttpStatusCode.imATeapot, equals(418));

    expect(HttpStatusCode.insufficientSpaceOnResource, equals(419));

    expect(HttpStatusCode.methodFailure, equals(420));

    expect(HttpStatusCode.misdirectedRequest, equals(421));

    expect(HttpStatusCode.unprocessableEntity, equals(422));

    expect(HttpStatusCode.locked, equals(423));

    expect(HttpStatusCode.failedDependency, equals(424));

    expect(HttpStatusCode.upgradeRequired, equals(426));

    expect(HttpStatusCode.preconditionRequired, equals(428));

    expect(HttpStatusCode.tooManyRequests, equals(429));

    expect(HttpStatusCode.requestHeaderFieldsTooLarge, equals(431));

    expect(HttpStatusCode.connectionClosedWithoutResponse, equals(444));

    expect(HttpStatusCode.unavailableForLegalReasons, equals(451));

    expect(HttpStatusCode.clientClosedRequest, equals(499));

    expect(HttpStatusCode.internalServerError, equals(500));

    expect(HttpStatusCode.notImplemented, equals(501));

    expect(HttpStatusCode.badGateway, equals(502));

    expect(HttpStatusCode.serviceUnavailable, equals(503));

    expect(HttpStatusCode.gatewayTimeout, equals(504));

    expect(HttpStatusCode.httpVersionNotSupported, equals(505));

    expect(HttpStatusCode.variantAlsoNegotiates, equals(506));

    expect(HttpStatusCode.insufficientStorage, equals(507));

    expect(HttpStatusCode.loopDetected, equals(508));

    expect(HttpStatusCode.notExtended, equals(510));

    expect(HttpStatusCode.networkAuthenticationRequired, equals(511));

    expect(HttpStatusCode.networkConnectTimeoutError, equals(599));
  });
}
