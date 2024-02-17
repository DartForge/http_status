// Copyright (c) 2017, Era Productions.
// Copyright (c) 2024, TECH-ANDGAR.
// All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:http_status/http_status.dart';
import 'package:test/test.dart';

void main() {
  group('HttpStatus', () {
    group('code', () {
      group('1xx Informational -', () {
        test('100 Continue', () {
          expect(HttpStatus.continue_.code, equals(HttpStatusCode.continue_));
          expect(HttpStatus.continue_.name, equals('Continue'));
          expect(
            HttpStatus.continue_.description,
            equals('Client should continue with request.'),
          );
          expect(HttpStatus.code100Continue, HttpStatus.continue_);
          expect(HttpStatus.continue_.isInformationHttpStatusCode, isTrue);
          expect(HttpStatus.continue_.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.continue_.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.continue_.isClientErrorHttpStatusCode, isFalse);
          expect(HttpStatus.continue_.isServerErrorHttpStatusCode, isFalse);
        });
        test('101 Switching Protocol', () {
          expect(
            HttpStatus.switchingProtocols.code,
            equals(HttpStatusCode.switchingProtocols),
          );
          expect(
            HttpStatus.switchingProtocols.name,
            equals('Switching Protocols'),
          );
          expect(
            HttpStatus.switchingProtocols.description,
            equals('Server is switching protocols.'),
          );
          expect(
            HttpStatus.code101SwitchingProtocols,
            HttpStatus.switchingProtocols,
          );
          expect(
            HttpStatus.switchingProtocols.isInformationHttpStatusCode,
            isTrue,
          );
          expect(
            HttpStatus.switchingProtocols.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.switchingProtocols.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.switchingProtocols.isClientErrorHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.switchingProtocols.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('102 Processing', () {
          expect(
            HttpStatus.processing.code,
            equals(HttpStatusCode.processing),
          );
          expect(HttpStatus.processing.name, equals('Processing'));
          expect(
            HttpStatus.processing.description,
            equals('Server has received and is processing the request.'),
          );
          expect(HttpStatus.code102Processing, HttpStatus.processing);
          expect(HttpStatus.processing.isInformationHttpStatusCode, isTrue);
          expect(HttpStatus.processing.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.processing.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.processing.isClientErrorHttpStatusCode, isFalse);
          expect(HttpStatus.processing.isServerErrorHttpStatusCode, isFalse);
        });
        test('103 Early Hints', () {
          expect(
            HttpStatus.earlyHints.code,
            equals(HttpStatusCode.earlyHints),
          );
          expect(HttpStatus.earlyHints.name, equals('Early Hints'));
          expect(
            HttpStatus.earlyHints.description,
            equals(
              'Server is likely to send a final response with the included '
              'headers.',
            ),
          );
          expect(HttpStatus.code103EarlyHints, HttpStatus.earlyHints);
          expect(HttpStatus.earlyHints.isInformationHttpStatusCode, isTrue);
          expect(HttpStatus.earlyHints.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.earlyHints.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.earlyHints.isClientErrorHttpStatusCode, isFalse);
          expect(HttpStatus.earlyHints.isServerErrorHttpStatusCode, isFalse);
        });
      });
      group('2xx Success -', () {
        test('200 Ok', () {
          expect(HttpStatus.ok.code, equals(HttpStatusCode.ok));
          expect(HttpStatus.ok.name, equals('OK'));
          expect(
            HttpStatus.ok.description,
            equals('The request was fulfilled.'),
          );
          expect(HttpStatus.code200Ok, HttpStatus.ok);
          expect(HttpStatus.ok.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.ok.isSuccessfulHttpStatusCode, isTrue);
          expect(HttpStatus.ok.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.ok.isClientErrorHttpStatusCode, isFalse);
          expect(HttpStatus.ok.isServerErrorHttpStatusCode, isFalse);
        });
        test('201 Created', () {
          expect(HttpStatus.created.code, equals(HttpStatusCode.created));
          expect(HttpStatus.created.name, equals('Created'));
          expect(
            HttpStatus.created.description,
            equals(
              'The request has been fulfilled and has resulted in one or '
              'more new resources being created.',
            ),
          );
          expect(HttpStatus.code201Created, HttpStatus.created);
          expect(HttpStatus.created.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.created.isSuccessfulHttpStatusCode, isTrue);
          expect(HttpStatus.created.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.created.isClientErrorHttpStatusCode, isFalse);
          expect(HttpStatus.created.isServerErrorHttpStatusCode, isFalse);
        });
        test('202 Accepted', () {
          expect(HttpStatus.accepted.code, equals(HttpStatusCode.accepted));
          expect(HttpStatus.accepted.name, equals('Accepted'));
          expect(
            HttpStatus.accepted.description,
            equals(
              'The request has been accepted for processing, but '
              'the processing has not been completed. The request might or '
              'might not eventually be acted upon, as it might be disallowed '
              'when processing actually takes place.',
            ),
          );
          expect(HttpStatus.code202Accepted, HttpStatus.accepted);
          expect(HttpStatus.accepted.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.accepted.isSuccessfulHttpStatusCode, isTrue);
          expect(HttpStatus.accepted.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.accepted.isClientErrorHttpStatusCode, isFalse);
          expect(HttpStatus.accepted.isServerErrorHttpStatusCode, isFalse);
        });
        test('203 Non-authoritative Information', () {
          expect(
            HttpStatus.nonAuthoritativeInformation.code,
            equals(HttpStatusCode.nonAuthoritativeInformation),
          );
          expect(
            HttpStatus.nonAuthoritativeInformation.name,
            equals('Non-authoritative Information'),
          );
          expect(
            HttpStatus.nonAuthoritativeInformation.description,
            equals(
              'The request was successful but the enclosed payload has been '
              'modified from that of the origin server\'s 200 OK response by '
              'a transforming proxy.',
            ),
          );
          expect(
            HttpStatus.code203NonAuthoritativeInformation,
            HttpStatus.nonAuthoritativeInformation,
          );
          expect(
            HttpStatus.nonAuthoritativeInformation.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.nonAuthoritativeInformation.isSuccessfulHttpStatusCode,
            isTrue,
          );
          expect(
            HttpStatus.nonAuthoritativeInformation.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.nonAuthoritativeInformation.isClientErrorHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.nonAuthoritativeInformation.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('204 No Content', () {
          expect(HttpStatus.noContent.code, equals(HttpStatusCode.noContent));
          expect(HttpStatus.noContent.name, equals('No Content'));
          expect(
            HttpStatus.noContent.description,
            equals(
              'The server has successfully fulfilled the request and that '
              'there is no additional content to send in the response '
              'payload body.',
            ),
          );
          expect(HttpStatus.code204NoContent, HttpStatus.noContent);
          expect(HttpStatus.noContent.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.noContent.isSuccessfulHttpStatusCode, isTrue);
          expect(HttpStatus.noContent.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.noContent.isClientErrorHttpStatusCode, isFalse);
          expect(HttpStatus.noContent.isServerErrorHttpStatusCode, isFalse);
        });
        test('205 Reset Content', () {
          expect(
            HttpStatus.resetContent.code,
            equals(HttpStatusCode.resetContent),
          );
          expect(HttpStatus.resetContent.name, equals('Reset Content'));
          expect(
            HttpStatus.resetContent.description,
            equals(
              'The server has fulfilled the request and desires that '
              'the user agent reset the document view, which caused '
              'the request to be sent, to its original state as received '
              'from the origin server.',
            ),
          );
          expect(HttpStatus.code205ResetContent, HttpStatus.resetContent);
          expect(HttpStatus.resetContent.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.resetContent.isSuccessfulHttpStatusCode, isTrue);
          expect(HttpStatus.resetContent.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.resetContent.isClientErrorHttpStatusCode, isFalse);
          expect(HttpStatus.resetContent.isServerErrorHttpStatusCode, isFalse);
        });
        test('206 Partial Content', () {
          expect(
            HttpStatus.partialContent.code,
            equals(HttpStatusCode.partialContent),
          );
          expect(HttpStatus.partialContent.name, equals('Partial Content'));
          expect(
            HttpStatus.partialContent.description,
            equals(
              'The server is successfully fulfilling a range request for '
              'the target resource by transferring one or more parts of '
              'the selected representation that correspond to '
              'the satisfiable ranges found in the request\'s Range '
              'header field.',
            ),
          );
          expect(HttpStatus.code206PartialContent, HttpStatus.partialContent);
          expect(
            HttpStatus.partialContent.isInformationHttpStatusCode,
            isFalse,
          );
          expect(HttpStatus.partialContent.isSuccessfulHttpStatusCode, isTrue);
          expect(HttpStatus.partialContent.isRedirectHttpStatusCode, isFalse);
          expect(
            HttpStatus.partialContent.isClientErrorHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.partialContent.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('207 Multi-Status', () {
          expect(
            HttpStatus.multiStatus.code,
            equals(HttpStatusCode.multiStatus),
          );
          expect(HttpStatus.multiStatus.name, equals('Multi-Status'));
          expect(
            HttpStatus.multiStatus.description,
            equals(
              'A Multi-Status response conveys information about multiple '
              'resources in situations where multiple status codes might '
              'be appropriate.',
            ),
          );
          expect(HttpStatus.code207MultiStatus, HttpStatus.multiStatus);
          expect(HttpStatus.multiStatus.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.multiStatus.isSuccessfulHttpStatusCode, isTrue);
          expect(HttpStatus.multiStatus.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.multiStatus.isClientErrorHttpStatusCode, isFalse);
          expect(HttpStatus.multiStatus.isServerErrorHttpStatusCode, isFalse);
        });
        test('208 Already Reported', () {
          expect(
            HttpStatus.alreadyReported.code,
            equals(HttpStatusCode.alreadyReported),
          );
          expect(HttpStatus.alreadyReported.name, equals('Already Reported'));
          expect(
            HttpStatus.alreadyReported.description,
            equals(
              'Used inside a DAV: propstat response element to avoid '
              'enumerating the internal members of multiple bindings to '
              'the same collection repeatedly.',
            ),
          );
          expect(
            HttpStatus.code208AlreadyReported,
            HttpStatus.alreadyReported,
          );
          expect(
            HttpStatus.alreadyReported.isInformationHttpStatusCode,
            isFalse,
          );
          expect(HttpStatus.alreadyReported.isSuccessfulHttpStatusCode, isTrue);
          expect(HttpStatus.alreadyReported.isRedirectHttpStatusCode, isFalse);
          expect(
            HttpStatus.alreadyReported.isClientErrorHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.alreadyReported.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('226 IM Used', () {
          expect(HttpStatus.imUsed.code, equals(HttpStatusCode.imUsed));
          expect(HttpStatus.imUsed.name, equals('IM Used'));
          expect(
            HttpStatus.imUsed.description,
            equals(
              'The server has fulfilled a GET request for the resource, and '
              'the response is a representation of the result of '
              'one or more instance-manipulations applied to '
              'the current instance.',
            ),
          );
          expect(HttpStatus.code226ImUsed, HttpStatus.imUsed);
          expect(HttpStatus.imUsed.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.imUsed.isSuccessfulHttpStatusCode, isTrue);
          expect(HttpStatus.imUsed.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.imUsed.isClientErrorHttpStatusCode, isFalse);
          expect(HttpStatus.imUsed.isServerErrorHttpStatusCode, isFalse);
        });
      });
      group('3xx Redirection -', () {
        test('300 Multiple Choices', () {
          expect(
            HttpStatus.multipleChoices.code,
            equals(HttpStatusCode.multipleChoices),
          );
          expect(HttpStatus.multipleChoices.name, equals('Multiple Choices'));
          expect(
            HttpStatus.multipleChoices.description,
            equals(
              'The target resource has more than one representation, each '
              'with its own more specific identifier, and information about '
              'the alternatives is being provided so that the user '
              '(or user agent) can select a preferred representation '
              'by redirecting its request to one or more of '
              'those identifiers.',
            ),
          );
          expect(
            HttpStatus.code300MultipleChoices,
            HttpStatus.multipleChoices,
          );
          expect(
            HttpStatus.multipleChoices.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.multipleChoices.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(HttpStatus.multipleChoices.isRedirectHttpStatusCode, isTrue);
          expect(
            HttpStatus.multipleChoices.isClientErrorHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.multipleChoices.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('301 Moved Permanently', () {
          expect(
            HttpStatus.movedPermanently.code,
            equals(HttpStatusCode.movedPermanently),
          );
          expect(
            HttpStatus.movedPermanently.name,
            equals('Moved Permanently'),
          );
          expect(
            HttpStatus.movedPermanently.description,
            equals(
              'The target resource has been assigned a new permanent URI '
              'and any future references to this resource ought to use one '
              'of the enclosed URIs.',
            ),
          );
          expect(
            HttpStatus.code301MovedPermanently,
            HttpStatus.movedPermanently,
          );
          expect(
            HttpStatus.movedPermanently.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.movedPermanently.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(HttpStatus.movedPermanently.isRedirectHttpStatusCode, isTrue);
          expect(
            HttpStatus.movedPermanently.isClientErrorHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.movedPermanently.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('302 Found', () {
          expect(HttpStatus.found.code, equals(HttpStatusCode.found));
          expect(HttpStatus.found.name, equals('Found'));
          expect(
            HttpStatus.found.description,
            equals(
              'The target resource resides temporarily under '
              'a different URI. '
              'Since the redirection might be altered on occasion, '
              'the client ought to continue to use the effective request '
              'URI for future requests.',
            ),
          );
          expect(HttpStatus.code302Found, HttpStatus.found);
          expect(HttpStatus.found.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.found.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.found.isRedirectHttpStatusCode, isTrue);
          expect(HttpStatus.found.isClientErrorHttpStatusCode, isFalse);
          expect(HttpStatus.found.isServerErrorHttpStatusCode, isFalse);
        });
        test('302 Moved Temporarily', () {
          expect(
            HttpStatus.movedTemporarily.code,
            equals(HttpStatusCode.movedTemporarily),
          );
          expect(
            HttpStatus.movedTemporarily.name,
            equals('Moved Temporarily'),
          );
          expect(
            HttpStatus.movedTemporarily.description,
            equals(
              'The target resource resides temporarily under '
              'a different URI. '
              'Since the redirection might be altered on occasion, '
              'the client ought to continue to use the effective request '
              'URI for future requests.',
            ),
          );
          expect(
            HttpStatus.code302MovedTemporarily,
            HttpStatus.movedTemporarily,
          );
          expect(
            HttpStatus.movedTemporarily.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.movedTemporarily.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(HttpStatus.movedTemporarily.isRedirectHttpStatusCode, isTrue);
          expect(
            HttpStatus.movedTemporarily.isClientErrorHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.movedTemporarily.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('303 See Other', () {
          expect(HttpStatus.seeOther.code, equals(HttpStatusCode.seeOther));
          expect(HttpStatus.seeOther.name, equals('See Other'));
          expect(
            HttpStatus.seeOther.description,
            equals(
              'The server is redirecting the user agent to '
              'a different resource, as indicated by a URI in the Location '
              'header field, which is intended to provide an indirect '
              'response to the original request.',
            ),
          );
          expect(HttpStatus.code303SeeOther, HttpStatus.seeOther);
          expect(HttpStatus.seeOther.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.seeOther.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.seeOther.isRedirectHttpStatusCode, isTrue);
          expect(HttpStatus.seeOther.isClientErrorHttpStatusCode, isFalse);
          expect(HttpStatus.seeOther.isServerErrorHttpStatusCode, isFalse);
        });
        test('305 Not Modified', () {
          expect(
            HttpStatus.notModified.code,
            equals(HttpStatusCode.notModified),
          );
          expect(HttpStatus.notModified.name, equals('Not Modified'));
          expect(
            HttpStatus.notModified.description,
            equals(
              'A conditional GET or HEAD request has been received and '
              'would have resulted in a 200 OK response if it were not for '
              'the fact that the condition evaluated to false.',
            ),
          );
          expect(HttpStatus.code305NotModified, HttpStatus.notModified);
          expect(HttpStatus.notModified.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.notModified.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.notModified.isRedirectHttpStatusCode, isTrue);
          expect(HttpStatus.notModified.isClientErrorHttpStatusCode, isFalse);
          expect(HttpStatus.notModified.isServerErrorHttpStatusCode, isFalse);
        });
        test('305 Use Proxy', () {
          expect(HttpStatus.useProxy.code, equals(HttpStatusCode.useProxy));
          expect(HttpStatus.useProxy.name, equals('Use Proxy'));
          expect(
            HttpStatus.useProxy.description,
            equals(
              'Defined in a previous version of this specification and is '
              'now deprecated, due to security concerns regarding in-band '
              'configuration of a proxy.',
            ),
          );
          expect(HttpStatus.code305UseProxy, HttpStatus.useProxy);
          expect(HttpStatus.useProxy.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.useProxy.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.useProxy.isRedirectHttpStatusCode, isTrue);
          expect(HttpStatus.useProxy.isClientErrorHttpStatusCode, isFalse);
          expect(HttpStatus.useProxy.isServerErrorHttpStatusCode, isFalse);
        });
        test('307 Temporary Redirect', () {
          expect(
            HttpStatus.temporaryRedirect.code,
            equals(HttpStatusCode.temporaryRedirect),
          );
          expect(
            HttpStatus.temporaryRedirect.name,
            equals('Temporary Redirect'),
          );
          expect(
            HttpStatus.temporaryRedirect.description,
            equals(
              'The target resource resides temporarily under a different URI '
              'and the user agent MUST NOT change the request method if it '
              'performs an automatic redirection to that URI.',
            ),
          );
          expect(
            HttpStatus.code307TemporaryRedirect,
            HttpStatus.temporaryRedirect,
          );
          expect(
            HttpStatus.temporaryRedirect.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.temporaryRedirect.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(HttpStatus.temporaryRedirect.isRedirectHttpStatusCode, isTrue);
          expect(
            HttpStatus.temporaryRedirect.isClientErrorHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.temporaryRedirect.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('308 Permanent Redirect', () {
          expect(
            HttpStatus.permanentRedirect.code,
            equals(HttpStatusCode.permanentRedirect),
          );
          expect(
            HttpStatus.permanentRedirect.name,
            equals('Permanent Redirect'),
          );
          expect(
            HttpStatus.permanentRedirect.description,
            equals(
              'The target resource has been assigned a new permanent URI and '
              'any future references to this resource ought to use one of '
              'the enclosed URIs.',
            ),
          );
          expect(
            HttpStatus.code308PermanentRedirect,
            HttpStatus.permanentRedirect,
          );
          expect(
            HttpStatus.permanentRedirect.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.permanentRedirect.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(HttpStatus.permanentRedirect.isRedirectHttpStatusCode, isTrue);
          expect(
            HttpStatus.permanentRedirect.isClientErrorHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.permanentRedirect.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
      });
      group('4xx Client Error -', () {
        test('400 Bad Request', () {
          expect(
            HttpStatus.badRequest.code,
            equals(HttpStatusCode.badRequest),
          );
          expect(HttpStatus.badRequest.name, equals('Bad Request'));
          expect(
            HttpStatus.badRequest.description,
            equals(
              'The server cannot or will not process the request due to '
              'something that is perceived to be a client error (e.g., '
              'malformed request syntax, invalid request message framing, '
              'or deceptive request routing).',
            ),
          );
          expect(HttpStatus.code400BadRequest, HttpStatus.badRequest);
          expect(HttpStatus.badRequest.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.badRequest.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.badRequest.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.badRequest.isClientErrorHttpStatusCode, isTrue);
          expect(HttpStatus.badRequest.isServerErrorHttpStatusCode, isFalse);
        });
        test('401 Unauthorized', () {
          expect(
            HttpStatus.unauthorized.code,
            equals(HttpStatusCode.unauthorized),
          );
          expect(HttpStatus.unauthorized.name, equals('Unauthorized'));
          expect(
            HttpStatus.unauthorized.description,
            equals(
              'The request has not been applied because it lacks valid '
              'authentication credentials for the target resource.',
            ),
          );
          expect(HttpStatus.code401Unauthorized, HttpStatus.unauthorized);
          expect(HttpStatus.unauthorized.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.unauthorized.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.unauthorized.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.unauthorized.isClientErrorHttpStatusCode, isTrue);
          expect(HttpStatus.unauthorized.isServerErrorHttpStatusCode, isFalse);
        });
        test('402 Payment Required', () {
          expect(
            HttpStatus.paymentRequired.code,
            equals(HttpStatusCode.paymentRequired),
          );
          expect(HttpStatus.paymentRequired.name, equals('Payment Required'));
          expect(
            HttpStatus.paymentRequired.description,
            equals('Reserved for future use.'),
          );
          expect(
            HttpStatus.code402PaymentRequired,
            HttpStatus.paymentRequired,
          );
          expect(
            HttpStatus.paymentRequired.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.paymentRequired.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(HttpStatus.paymentRequired.isRedirectHttpStatusCode, isFalse);
          expect(
            HttpStatus.paymentRequired.isClientErrorHttpStatusCode,
            isTrue,
          );
          expect(
            HttpStatus.paymentRequired.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('403 Forbidden', () {
          expect(HttpStatus.forbidden.code, equals(HttpStatusCode.forbidden));
          expect(HttpStatus.forbidden.name, equals('Forbidden'));
          expect(
            HttpStatus.forbidden.description,
            equals(
              'The server understood the request but refuses to '
              'authorize it.',
            ),
          );
          expect(HttpStatus.code403Forbidden, HttpStatus.forbidden);
          expect(HttpStatus.forbidden.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.forbidden.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.forbidden.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.forbidden.isClientErrorHttpStatusCode, isTrue);
          expect(HttpStatus.forbidden.isServerErrorHttpStatusCode, isFalse);
        });
        test('404 Not Found', () {
          expect(HttpStatus.notFound.code, equals(HttpStatusCode.notFound));
          expect(HttpStatus.notFound.name, equals('Not Found'));
          expect(
            HttpStatus.notFound.description,
            equals(
              'The origin server did not find a current representation '
              'for the target resource or is not willing to disclose that '
              'one exists.',
            ),
          );
          expect(HttpStatus.code404NotFound, HttpStatus.notFound);
          expect(HttpStatus.notFound.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.notFound.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.notFound.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.notFound.isClientErrorHttpStatusCode, isTrue);
          expect(HttpStatus.notFound.isServerErrorHttpStatusCode, isFalse);
        });
        test('405 Method Not Allowed', () {
          expect(
            HttpStatus.methodNotAllowed.code,
            equals(HttpStatusCode.methodNotAllowed),
          );
          expect(
            HttpStatus.methodNotAllowed.name,
            equals('Method Not Allowed'),
          );
          expect(
            HttpStatus.methodNotAllowed.description,
            equals(
              'The method received in the request-line is known by '
              'the origin server but not supported by the target resource.',
            ),
          );
          expect(
            HttpStatus.code405MethodNotAllowed,
            HttpStatus.methodNotAllowed,
          );
          expect(
            HttpStatus.methodNotAllowed.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.methodNotAllowed.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(HttpStatus.methodNotAllowed.isRedirectHttpStatusCode, isFalse);
          expect(
            HttpStatus.methodNotAllowed.isClientErrorHttpStatusCode,
            isTrue,
          );
          expect(
            HttpStatus.methodNotAllowed.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('406 Not Acceptable', () {
          expect(
            HttpStatus.notAcceptable.code,
            equals(HttpStatusCode.notAcceptable),
          );
          expect(HttpStatus.notAcceptable.name, equals('Not Acceptable'));
          expect(
            HttpStatus.notAcceptable.description,
            equals(
              'The target resource does not have a current representation '
              'that would be acceptable to the user agent, according to '
              'the proactive negotiation header fields received in '
              'the request, and the server is unwilling to supply a default '
              'representation.',
            ),
          );
          expect(HttpStatus.code406NotAcceptable, HttpStatus.notAcceptable);
          expect(HttpStatus.notAcceptable.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.notAcceptable.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.notAcceptable.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.notAcceptable.isClientErrorHttpStatusCode, isTrue);
          expect(HttpStatus.notAcceptable.isServerErrorHttpStatusCode, isFalse);
        });
        test('407 Proxy Authentication Required', () {
          expect(
            HttpStatus.proxyAuthenticationRequired.code,
            equals(HttpStatusCode.proxyAuthenticationRequired),
          );
          expect(
            HttpStatus.proxyAuthenticationRequired.name,
            equals('Proxy Authentication Required'),
          );
          expect(
            HttpStatus.proxyAuthenticationRequired.description,
            equals(
              'Similar to 401 Unauthorized, but it indicates that the client '
              'needs to authenticate itself in order to use a proxy.',
            ),
          );
          expect(
            HttpStatus.code407ProxyAuthenticationRequired,
            HttpStatus.proxyAuthenticationRequired,
          );
          expect(
            HttpStatus.proxyAuthenticationRequired.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.proxyAuthenticationRequired.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.proxyAuthenticationRequired.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.proxyAuthenticationRequired.isClientErrorHttpStatusCode,
            isTrue,
          );
          expect(
            HttpStatus.proxyAuthenticationRequired.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('408 Request Timeout', () {
          expect(
            HttpStatus.requestTimeout.code,
            equals(HttpStatusCode.requestTimeout),
          );
          expect(HttpStatus.requestTimeout.name, equals('Request Timeout'));
          expect(
            HttpStatus.requestTimeout.description,
            equals(
              'The server did not receive a complete request message within '
              'the time that it was prepared to wait.',
            ),
          );
          expect(HttpStatus.code408RequestTimeout, HttpStatus.requestTimeout);
          expect(
            HttpStatus.requestTimeout.isInformationHttpStatusCode,
            isFalse,
          );
          expect(HttpStatus.requestTimeout.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.requestTimeout.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.requestTimeout.isClientErrorHttpStatusCode, isTrue);
          expect(
            HttpStatus.requestTimeout.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('409 Conflict', () {
          expect(HttpStatus.conflict.code, equals(HttpStatusCode.conflict));
          expect(HttpStatus.conflict.name, equals('Conflict'));
          expect(
            HttpStatus.conflict.description,
            equals(
              'The request could not be completed due to a conflict with '
              'the current state of the target resource. This code is used '
              'in situations where the user might be able to resolve '
              'the conflict and resubmit the request.',
            ),
          );
          expect(HttpStatus.code409Conflict, HttpStatus.conflict);
          expect(HttpStatus.conflict.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.conflict.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.conflict.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.conflict.isClientErrorHttpStatusCode, isTrue);
          expect(HttpStatus.conflict.isServerErrorHttpStatusCode, isFalse);
        });
        test('410 Gone', () {
          expect(HttpStatus.gone.code, equals(HttpStatusCode.gone));
          expect(HttpStatus.gone.name, equals('Gone'));
          expect(
            HttpStatus.gone.description,
            equals(
              'The target resource is no longer available at the origin '
              'server and that this condition is likely to be permanent.',
            ),
          );
          expect(HttpStatus.code410Gone, HttpStatus.gone);
          expect(HttpStatus.gone.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.gone.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.gone.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.gone.isClientErrorHttpStatusCode, isTrue);
          expect(HttpStatus.gone.isServerErrorHttpStatusCode, isFalse);
        });
        test('411 Length Required', () {
          expect(
            HttpStatus.lengthRequired.code,
            equals(HttpStatusCode.lengthRequired),
          );
          expect(HttpStatus.lengthRequired.name, equals('Length Required'));
          expect(
            HttpStatus.lengthRequired.description,
            equals(
              'The server refuses to accept the request without a defined '
              'Content-Length.',
            ),
          );
          expect(HttpStatus.code411LengthRequired, HttpStatus.lengthRequired);
          expect(
            HttpStatus.lengthRequired.isInformationHttpStatusCode,
            isFalse,
          );
          expect(HttpStatus.lengthRequired.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.lengthRequired.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.lengthRequired.isClientErrorHttpStatusCode, isTrue);
          expect(
            HttpStatus.lengthRequired.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('412 Precondition Failed', () {
          expect(
            HttpStatus.preconditionFailed.code,
            equals(HttpStatusCode.preconditionFailed),
          );
          expect(
            HttpStatus.preconditionFailed.name,
            equals('Precondition Failed'),
          );
          expect(
            HttpStatus.preconditionFailed.description,
            equals(
              'One or more conditions given in the request header fields '
              'evaluated to false when tested on the server.',
            ),
          );
          expect(
            HttpStatus.code412PreconditionFailed,
            HttpStatus.preconditionFailed,
          );
          expect(
            HttpStatus.preconditionFailed.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.preconditionFailed.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.preconditionFailed.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.preconditionFailed.isClientErrorHttpStatusCode,
            isTrue,
          );
          expect(
            HttpStatus.preconditionFailed.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('413 Payload Too Large', () {
          expect(
            HttpStatus.requestEntityTooLarge.code,
            equals(HttpStatusCode.requestEntityTooLarge),
          );
          expect(
            HttpStatus.requestEntityTooLarge.name,
            equals('Payload Too Large'),
          );
          expect(
            HttpStatus.requestEntityTooLarge.description,
            equals(
              'The server is refusing to process a request because the request '
              'payload is larger than the server is willing or able '
              'to process.',
            ),
          );
          expect(
            HttpStatus.code413RequestEntityTooLarge,
            HttpStatus.requestEntityTooLarge,
          );
          expect(
            HttpStatus.requestEntityTooLarge.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.requestEntityTooLarge.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.requestEntityTooLarge.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.requestEntityTooLarge.isClientErrorHttpStatusCode,
            isTrue,
          );
          expect(
            HttpStatus.requestEntityTooLarge.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('414 Request-URI Too Long', () {
          expect(
            HttpStatus.requestUriTooLong.code,
            equals(HttpStatusCode.requestUriTooLong),
          );
          expect(
            HttpStatus.requestUriTooLong.name,
            equals('Request-URI Too Long'),
          );
          expect(
            HttpStatus.requestUriTooLong.description,
            equals(
              'The server is refusing to service the request because the '
              'request-target is longer than the server is willing to '
              'interpret.',
            ),
          );
          expect(
            HttpStatus.code414RequestUriTooLong,
            HttpStatus.requestUriTooLong,
          );
          expect(
            HttpStatus.requestUriTooLong.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.requestUriTooLong.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.requestUriTooLong.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.requestUriTooLong.isClientErrorHttpStatusCode,
            isTrue,
          );
          expect(
            HttpStatus.requestUriTooLong.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('415 Unsupported Media Type', () {
          expect(
            HttpStatus.unsupportedMediaType.code,
            equals(HttpStatusCode.unsupportedMediaType),
          );
          expect(
            HttpStatus.unsupportedMediaType.name,
            equals('Unsupported Media Type'),
          );
          expect(
            HttpStatus.unsupportedMediaType.description,
            equals(
              'The origin server is refusing to service the request because '
              'the payload is in a format not supported by this method on '
              'the target resource.',
            ),
          );
          expect(
            HttpStatus.code415UnsupportedMediaType,
            HttpStatus.unsupportedMediaType,
          );
          expect(
            HttpStatus.unsupportedMediaType.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.unsupportedMediaType.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.unsupportedMediaType.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.unsupportedMediaType.isClientErrorHttpStatusCode,
            isTrue,
          );
          expect(
            HttpStatus.unsupportedMediaType.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('416 Requested Range Not Satisfiable', () {
          expect(
            HttpStatus.requestedRangeNotSatisfiable.code,
            equals(HttpStatusCode.requestedRangeNotSatisfiable),
          );
          expect(
            HttpStatus.requestedRangeNotSatisfiable.name,
            equals('Requested Range Not Satisfiable'),
          );
          expect(
            HttpStatus.requestedRangeNotSatisfiable.description,
            equals(
              'None of the ranges in the request\'s Range header field '
              'overlap the current extent of the selected resource or that '
              'the set of ranges requested has been rejected due to invalid '
              'ranges or an excessive request of small or overlapping ranges.',
            ),
          );
          expect(
            HttpStatus.code416RequestedRangeNotSatisfiable,
            HttpStatus.requestedRangeNotSatisfiable,
          );
          expect(
            HttpStatus.requestedRangeNotSatisfiable.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.requestedRangeNotSatisfiable.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.requestedRangeNotSatisfiable.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.requestedRangeNotSatisfiable.isClientErrorHttpStatusCode,
            isTrue,
          );
          expect(
            HttpStatus.requestedRangeNotSatisfiable.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('417 Expectation Failed', () {
          expect(
            HttpStatus.expectationFailed.code,
            equals(HttpStatusCode.expectationFailed),
          );
          expect(
            HttpStatus.expectationFailed.name,
            equals('Expectation Failed'),
          );
          expect(
            HttpStatus.expectationFailed.description,
            equals(
              'The expectation given in the request\'s Expect header field '
              'could not be met by at least one of the inbound servers.',
            ),
          );
          expect(
            HttpStatus.code417ExpectationFailed,
            HttpStatus.expectationFailed,
          );
          expect(
            HttpStatus.expectationFailed.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.expectationFailed.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.expectationFailed.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.expectationFailed.isClientErrorHttpStatusCode,
            isTrue,
          );
          expect(
            HttpStatus.expectationFailed.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('418 I\'m A Teapot', () {
          expect(HttpStatus.imATeapot.code, equals(HttpStatusCode.imATeapot));
          expect(HttpStatus.imATeapot.name, equals('I\'m A Teapot'));
          expect(
            HttpStatus.imATeapot.description,
            equals(
              'The HTTP 418 I\'m a teapot client error response code indicates '
              'that the server refuses to brew coffee because it is, '
              'permanently, a teapot. A combined coffee/tea pot that '
              'is temporarily out of coffee should instead return 503. '
              'This error is a reference to Hyper Text Coffee Pot Control '
              'Protocol defined in April Fools\' jokes in 1998 and 2014.',
            ),
          );
          expect(HttpStatus.code418ImATeapot, HttpStatus.imATeapot);
          expect(HttpStatus.imATeapot.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.imATeapot.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.imATeapot.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.imATeapot.isClientErrorHttpStatusCode, isTrue);
          expect(HttpStatus.imATeapot.isServerErrorHttpStatusCode, isFalse);
        });
        test('419 Insufficient Space On Resource', () {
          expect(
            HttpStatus.insufficientSpaceOnResource.code,
            equals(HttpStatusCode.insufficientSpaceOnResource),
          );
          expect(
            HttpStatus.insufficientSpaceOnResource.name,
            equals('Insufficient Space On Resource'),
          );
          expect(
            HttpStatus.insufficientSpaceOnResource.description,
            equals(
              'The HTTP 419 Insufficient Space On Resource client error '
              'response code indicates that the server cannot store '
              'the representation needed to complete the request. '
              'This status code is similar to 507 (Insufficient Storage), '
              'but it is specific to the server\'s inability to allocate '
              'sufficient space on the resource to fulfill the request.',
            ),
          );
          expect(
            HttpStatus.code419InsufficientSpaceOnResource,
            HttpStatus.insufficientSpaceOnResource,
          );
          expect(
            HttpStatus.insufficientSpaceOnResource.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.insufficientSpaceOnResource.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.insufficientSpaceOnResource.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.insufficientSpaceOnResource.isClientErrorHttpStatusCode,
            isTrue,
          );
          expect(
            HttpStatus.insufficientSpaceOnResource.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('420 Method Failure', () {
          expect(
            HttpStatus.methodFailure.code,
            equals(HttpStatusCode.methodFailure),
          );
          expect(HttpStatus.methodFailure.name, equals('Method Failure'));
          expect(
            HttpStatus.methodFailure.description,
            equals(
              'The HTTP 420 Method Failure client error response code '
              'indicates that the server encountered an unexpected condition '
              'that prevented it from fulfilling the request using '
              'the method provided. This status code is non-standard and '
              'is reserved for use in the WebDAV (Web Distributed '
              'Authoring and Versioning) framework.',
            ),
          );
          expect(HttpStatus.code420MethodFailure, HttpStatus.methodFailure);
          expect(HttpStatus.methodFailure.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.methodFailure.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.methodFailure.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.methodFailure.isClientErrorHttpStatusCode, isTrue);
          expect(HttpStatus.methodFailure.isServerErrorHttpStatusCode, isFalse);
        });
        test('421 Misdirected Request', () {
          expect(
            HttpStatus.misdirectedRequest.code,
            equals(HttpStatusCode.misdirectedRequest),
          );
          expect(
            HttpStatus.misdirectedRequest.name,
            equals('Misdirected Request'),
          );
          expect(
            HttpStatus.misdirectedRequest.description,
            equals(
              'The request was directed at a server that is not able to '
              'produce a response. This can be sent by a server that is '
              'not configured to produce responses for the combination '
              'of scheme and authority that are included in the request URI.',
            ),
          );
          expect(
            HttpStatus.code421MisdirectedRequest,
            HttpStatus.misdirectedRequest,
          );
          expect(
            HttpStatus.misdirectedRequest.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.misdirectedRequest.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.misdirectedRequest.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.misdirectedRequest.isClientErrorHttpStatusCode,
            isTrue,
          );
          expect(
            HttpStatus.misdirectedRequest.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('422 Unprocessable Entity', () {
          expect(
            HttpStatus.unprocessableEntity.code,
            equals(HttpStatusCode.unprocessableEntity),
          );
          expect(
            HttpStatus.unprocessableEntity.name,
            equals('Unprocessable Entity'),
          );
          expect(
            HttpStatus.unprocessableEntity.description,
            equals(
              'The server understands the content type of the request entity '
              '(hence a 415 Unsupported Media Type status code '
              'is inappropriate), and the syntax of the request '
              'entity is correct (thus a 400 Bad Request status code '
              'is inappropriate) but was unable to process '
              'the contained instructions.',
            ),
          );
          expect(
            HttpStatus.code422UnprocessableEntity,
            HttpStatus.unprocessableEntity,
          );
          expect(
            HttpStatus.unprocessableEntity.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.unprocessableEntity.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.unprocessableEntity.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.unprocessableEntity.isClientErrorHttpStatusCode,
            isTrue,
          );
          expect(
            HttpStatus.unprocessableEntity.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('423 Locked', () {
          expect(HttpStatus.locked.code, equals(HttpStatusCode.locked));
          expect(HttpStatus.locked.name, equals('Locked'));
          expect(
            HttpStatus.locked.description,
            equals(
              'The source or destination resource of a method is locked.',
            ),
          );
          expect(HttpStatus.code423Locked, HttpStatus.locked);
          expect(HttpStatus.locked.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.locked.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.locked.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.locked.isClientErrorHttpStatusCode, isTrue);
          expect(HttpStatus.locked.isServerErrorHttpStatusCode, isFalse);
        });
        test('424 Failed Dependency', () {
          expect(
            HttpStatus.failedDependency.code,
            equals(HttpStatusCode.failedDependency),
          );
          expect(HttpStatus.failedDependency.name, equals('Failed Dependency'));
          expect(
            HttpStatus.failedDependency.description,
            equals(
              'The method could not be performed on the resource because '
              'the requested action depended on another action and '
              'that action failed.',
            ),
          );
          expect(
            HttpStatus.code424FailedDependency,
            HttpStatus.failedDependency,
          );
          expect(
            HttpStatus.failedDependency.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.failedDependency.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(HttpStatus.failedDependency.isRedirectHttpStatusCode, isFalse);
          expect(
            HttpStatus.failedDependency.isClientErrorHttpStatusCode,
            isTrue,
          );
          expect(
            HttpStatus.failedDependency.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('426 Upgrade Required', () {
          expect(
            HttpStatus.upgradeRequired.code,
            equals(HttpStatusCode.upgradeRequired),
          );
          expect(HttpStatus.upgradeRequired.name, equals('Upgrade Required'));
          expect(
            HttpStatus.upgradeRequired.description,
            equals(
              'The server refuses to perform the request using '
              'the current protocol but might be willing to do so after '
              'the client upgrades to a different protocol.',
            ),
          );
          expect(HttpStatus.code426UpgradeRequired, HttpStatus.upgradeRequired);
          expect(
            HttpStatus.upgradeRequired.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.upgradeRequired.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(HttpStatus.upgradeRequired.isRedirectHttpStatusCode, isFalse);
          expect(
            HttpStatus.upgradeRequired.isClientErrorHttpStatusCode,
            isTrue,
          );
          expect(
            HttpStatus.upgradeRequired.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('428 Precondition Required', () {
          expect(
            HttpStatus.preconditionRequired.code,
            equals(HttpStatusCode.preconditionRequired),
          );
          expect(
            HttpStatus.preconditionRequired.name,
            equals('Precondition Required'),
          );
          expect(
            HttpStatus.preconditionRequired.description,
            equals('The origin server requires the request to be conditional.'),
          );
          expect(
            HttpStatus.code428PreconditionRequired,
            HttpStatus.preconditionRequired,
          );
          expect(
            HttpStatus.preconditionRequired.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.preconditionRequired.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.preconditionRequired.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.preconditionRequired.isClientErrorHttpStatusCode,
            isTrue,
          );
          expect(
            HttpStatus.preconditionRequired.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('429 Too Many Requests', () {
          expect(
            HttpStatus.tooManyRequests.code,
            equals(HttpStatusCode.tooManyRequests),
          );
          expect(HttpStatus.tooManyRequests.name, equals('Too Many Requests'));
          expect(
            HttpStatus.tooManyRequests.description,
            equals(
              'The user has sent too many requests in a given amount of time '
              '("rate limiting").',
            ),
          );
          expect(HttpStatus.code429TooManyRequests, HttpStatus.tooManyRequests);
          expect(
            HttpStatus.tooManyRequests.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.tooManyRequests.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(HttpStatus.tooManyRequests.isRedirectHttpStatusCode, isFalse);
          expect(
            HttpStatus.tooManyRequests.isClientErrorHttpStatusCode,
            isTrue,
          );
          expect(
            HttpStatus.tooManyRequests.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('431 Request Header Fields Too Large', () {
          expect(
            HttpStatus.requestHeaderFieldsTooLarge.code,
            equals(HttpStatusCode.requestHeaderFieldsTooLarge),
          );
          expect(
            HttpStatus.requestHeaderFieldsTooLarge.name,
            equals('Request Header Fields Too Large'),
          );
          expect(
            HttpStatus.requestHeaderFieldsTooLarge.description,
            equals(
              'The server is unwilling to process the request because '
              'its header fields are too large. The request MAY be '
              'resubmitted after reducing the size of the request '
              'header fields.',
            ),
          );
          expect(
            HttpStatus.code431RequestHeaderFieldsTooLarge,
            HttpStatus.requestHeaderFieldsTooLarge,
          );
          expect(
            HttpStatus.requestHeaderFieldsTooLarge.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.requestHeaderFieldsTooLarge.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.requestHeaderFieldsTooLarge.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.requestHeaderFieldsTooLarge.isClientErrorHttpStatusCode,
            isTrue,
          );
          expect(
            HttpStatus.requestHeaderFieldsTooLarge.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('444 Connection Closed Without Response', () {
          expect(
            HttpStatus.connectionClosedWithoutResponse.code,
            equals(HttpStatusCode.connectionClosedWithoutResponse),
          );
          expect(
            HttpStatus.connectionClosedWithoutResponse.name,
            equals('Connection Closed Without Response'),
          );
          expect(
            HttpStatus.connectionClosedWithoutResponse.description,
            equals(
              'A non-standard status code used to instruct nginx to close '
              'the connection without sending a response to the client, '
              'most commonly used to deny malicious or malformed requests.',
            ),
          );
          expect(
            HttpStatus.code444ConnectionClosedWithoutResponse,
            HttpStatus.connectionClosedWithoutResponse,
          );
          expect(
            HttpStatus
                .connectionClosedWithoutResponse.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus
                .connectionClosedWithoutResponse.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.connectionClosedWithoutResponse.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus
                .connectionClosedWithoutResponse.isClientErrorHttpStatusCode,
            isTrue,
          );
          expect(
            HttpStatus
                .connectionClosedWithoutResponse.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('451 Unavailable For Legal Reasons', () {
          expect(
            HttpStatus.unavailableForLegalReasons.code,
            equals(HttpStatusCode.unavailableForLegalReasons),
          );
          expect(
            HttpStatus.unavailableForLegalReasons.name,
            equals('Unavailable For Legal Reasons'),
          );
          expect(
            HttpStatus.unavailableForLegalReasons.description,
            equals(
              'The server is denying access to the resource as a consequence '
              'of a legal demand.',
            ),
          );
          expect(
            HttpStatus.code451UnavailableForLegalReasons,
            HttpStatus.unavailableForLegalReasons,
          );
          expect(
            HttpStatus.unavailableForLegalReasons.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.unavailableForLegalReasons.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.unavailableForLegalReasons.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.unavailableForLegalReasons.isClientErrorHttpStatusCode,
            isTrue,
          );
          expect(
            HttpStatus.unavailableForLegalReasons.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
        test('499 Client Closed Request', () {
          expect(
            HttpStatus.clientClosedRequest.code,
            equals(HttpStatusCode.clientClosedRequest),
          );
          expect(
            HttpStatus.clientClosedRequest.name,
            equals('Client Closed Request'),
          );
          expect(
            HttpStatus.clientClosedRequest.description,
            equals(
              'A non-standard status code introduced by nginx for '
              'the case when a client closes the connection while nginx '
              'is processing the request.',
            ),
          );
          expect(
            HttpStatus.code499ClientClosedRequest,
            HttpStatus.clientClosedRequest,
          );
          expect(
            HttpStatus.clientClosedRequest.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.clientClosedRequest.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.clientClosedRequest.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.clientClosedRequest.isClientErrorHttpStatusCode,
            isTrue,
          );
          expect(
            HttpStatus.clientClosedRequest.isServerErrorHttpStatusCode,
            isFalse,
          );
        });
      });
      group('5xx Server Error -', () {
        test('500 Internal Server Error', () {
          expect(
            HttpStatus.internalServerError.code,
            equals(HttpStatusCode.internalServerError),
          );
          expect(
            HttpStatus.internalServerError.name,
            equals('Internal Server Error'),
          );
          expect(
            HttpStatus.internalServerError.description,
            equals(
              'The server encountered an unexpected condition that '
              'prevented it from fulfilling the request.',
            ),
          );
          expect(
            HttpStatus.code500InternalServerError,
            HttpStatus.internalServerError,
          );
          expect(
            HttpStatus.internalServerError.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.internalServerError.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.internalServerError.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.internalServerError.isClientErrorHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.internalServerError.isServerErrorHttpStatusCode,
            isTrue,
          );
        });
        test('501 Not Implemented', () {
          expect(
            HttpStatus.notImplemented.code,
            equals(HttpStatusCode.notImplemented),
          );
          expect(HttpStatus.notImplemented.name, equals('Not Implemented'));
          expect(
            HttpStatus.notImplemented.description,
            equals(
              'The server does not support the functionality required to '
              'fulfill the request.',
            ),
          );
          expect(HttpStatus.code501NotImplemented, HttpStatus.notImplemented);
          expect(
            HttpStatus.notImplemented.isInformationHttpStatusCode,
            isFalse,
          );
          expect(HttpStatus.notImplemented.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.notImplemented.isRedirectHttpStatusCode, isFalse);
          expect(
            HttpStatus.notImplemented.isClientErrorHttpStatusCode,
            isFalse,
          );
          expect(HttpStatus.notImplemented.isServerErrorHttpStatusCode, isTrue);
        });
        test('502 Bad Gateway', () {
          expect(HttpStatus.badGateway.code, equals(HttpStatusCode.badGateway));
          expect(HttpStatus.badGateway.name, equals('Bad Gateway'));
          expect(
            HttpStatus.badGateway.description,
            equals(
              'The server, while acting as a gateway or proxy, received '
              'an invalid response from an inbound server it accessed while '
              'attempting to fulfill the request.',
            ),
          );
          expect(HttpStatus.code502BadGateway, HttpStatus.badGateway);
          expect(HttpStatus.badGateway.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.badGateway.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.badGateway.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.badGateway.isClientErrorHttpStatusCode, isFalse);
          expect(HttpStatus.badGateway.isServerErrorHttpStatusCode, isTrue);
        });
        test('503 Service Unavailable', () {
          expect(
            HttpStatus.serviceUnavailable.code,
            equals(HttpStatusCode.serviceUnavailable),
          );
          expect(
            HttpStatus.serviceUnavailable.name,
            equals('Service Unavailable'),
          );
          expect(
            HttpStatus.serviceUnavailable.description,
            equals(
              'The server is currently unable to handle the request due to '
              'a temporary overload or scheduled maintenance, which will '
              'likely be alleviated after some delay.',
            ),
          );
          expect(
            HttpStatus.code503ServiceUnavailable,
            HttpStatus.serviceUnavailable,
          );
          expect(
            HttpStatus.serviceUnavailable.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.serviceUnavailable.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.serviceUnavailable.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.serviceUnavailable.isClientErrorHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.serviceUnavailable.isServerErrorHttpStatusCode,
            isTrue,
          );
        });
        test('504 Gateway Timeout', () {
          expect(
            HttpStatus.gatewayTimeout.code,
            equals(HttpStatusCode.gatewayTimeout),
          );
          expect(HttpStatus.gatewayTimeout.name, equals('Gateway Timeout'));
          expect(
            HttpStatus.gatewayTimeout.description,
            equals(
              'The server, while acting as a gateway or proxy, did not receive '
              'a timely response from an upstream server it needed to access '
              'in order to complete the request.',
            ),
          );
          expect(HttpStatus.code504GatewayTimeout, HttpStatus.gatewayTimeout);
          expect(
            HttpStatus.gatewayTimeout.isInformationHttpStatusCode,
            isFalse,
          );
          expect(HttpStatus.gatewayTimeout.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.gatewayTimeout.isRedirectHttpStatusCode, isFalse);
          expect(
            HttpStatus.gatewayTimeout.isClientErrorHttpStatusCode,
            isFalse,
          );
          expect(HttpStatus.gatewayTimeout.isServerErrorHttpStatusCode, isTrue);
        });
        test('505 HTTP Version Not Supported', () {
          expect(
            HttpStatus.httpVersionNotSupported.code,
            equals(HttpStatusCode.httpVersionNotSupported),
          );
          expect(
            HttpStatus.httpVersionNotSupported.name,
            equals('HTTP Version Not Supported'),
          );
          expect(
            HttpStatus.httpVersionNotSupported.description,
            equals(
              'The server does not support, or refuses to support, '
              'the major version of HTTP that was used in the request message.',
            ),
          );
          expect(
            HttpStatus.code505HttpVersionNotSupported,
            HttpStatus.httpVersionNotSupported,
          );
          expect(
            HttpStatus.httpVersionNotSupported.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.httpVersionNotSupported.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.httpVersionNotSupported.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.httpVersionNotSupported.isClientErrorHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.httpVersionNotSupported.isServerErrorHttpStatusCode,
            isTrue,
          );
        });
        test('506 Variant Also Negotiates', () {
          expect(
            HttpStatus.variantAlsoNegotiates.code,
            equals(HttpStatusCode.variantAlsoNegotiates),
          );
          expect(
            HttpStatus.variantAlsoNegotiates.name,
            equals('Variant Also Negotiates'),
          );
          expect(
            HttpStatus.variantAlsoNegotiates.description,
            equals(
              'The server has an internal configuration error: '
              'the chosen variant resource is configured to engage in '
              'transparent content negotiation itself, and is therefore not '
              'a proper end point in the negotiation process.',
            ),
          );
          expect(
            HttpStatus.code506VariantAlsoNegotiates,
            HttpStatus.variantAlsoNegotiates,
          );
          expect(
            HttpStatus.variantAlsoNegotiates.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.variantAlsoNegotiates.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.variantAlsoNegotiates.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.variantAlsoNegotiates.isClientErrorHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.variantAlsoNegotiates.isServerErrorHttpStatusCode,
            isTrue,
          );
        });
        test('507 Insufficient Storage', () {
          expect(
            HttpStatus.insufficientStorage.code,
            equals(HttpStatusCode.insufficientStorage),
          );
          expect(
            HttpStatus.insufficientStorage.name,
            equals('Insufficient Storage'),
          );
          expect(
            HttpStatus.insufficientStorage.description,
            equals(
              'The method could not be performed on the resource because '
              'the server is unable to store the representation needed '
              'to successfully complete the request.',
            ),
          );
          expect(
            HttpStatus.code507InsufficientStorage,
            HttpStatus.insufficientStorage,
          );
          expect(
            HttpStatus.insufficientStorage.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.insufficientStorage.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.insufficientStorage.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.insufficientStorage.isClientErrorHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.insufficientStorage.isServerErrorHttpStatusCode,
            isTrue,
          );
        });
        test('508 Loop Detected', () {
          expect(
            HttpStatus.loopDetected.code,
            equals(HttpStatusCode.loopDetected),
          );
          expect(HttpStatus.loopDetected.name, equals('Loop Detected'));
          expect(
            HttpStatus.loopDetected.description,
            equals(
              'The server terminated an operation because it encountered '
              'an infinite loop while processing a request with '
              '"Depth: infinity". This status indicates that the entire '
              'operation failed.',
            ),
          );
          expect(HttpStatus.code508LoopDetected, HttpStatus.loopDetected);
          expect(HttpStatus.loopDetected.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.loopDetected.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.loopDetected.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.loopDetected.isClientErrorHttpStatusCode, isFalse);
          expect(HttpStatus.loopDetected.isServerErrorHttpStatusCode, isTrue);
        });
        test('510 Not Extended', () {
          expect(
            HttpStatus.notExtended.code,
            equals(HttpStatusCode.notExtended),
          );
          expect(HttpStatus.notExtended.name, equals('Not Extended'));
          expect(
            HttpStatus.notExtended.description,
            equals(
              'The policy for accessing the resource has not been met in '
              'the request. The server should send back all the information '
              'necessary for the client to issue an extended request',
            ),
          );
          expect(HttpStatus.code510NotExtended, HttpStatus.notExtended);
          expect(HttpStatus.notExtended.isInformationHttpStatusCode, isFalse);
          expect(HttpStatus.notExtended.isSuccessfulHttpStatusCode, isFalse);
          expect(HttpStatus.notExtended.isRedirectHttpStatusCode, isFalse);
          expect(HttpStatus.notExtended.isClientErrorHttpStatusCode, isFalse);
          expect(HttpStatus.notExtended.isServerErrorHttpStatusCode, isTrue);
        });
        test('511 Network Authentication Required', () {
          expect(
            HttpStatus.networkAuthenticationRequired.code,
            equals(HttpStatusCode.networkAuthenticationRequired),
          );
          expect(
            HttpStatus.networkAuthenticationRequired.name,
            equals('Network Authentication Required'),
          );
          expect(
            HttpStatus.networkAuthenticationRequired.description,
            equals('The client needs to authenticate to gain network access.'),
          );
          expect(
            HttpStatus.code511NetworkAuthenticationRequired,
            HttpStatus.networkAuthenticationRequired,
          );
          expect(
            HttpStatus
                .networkAuthenticationRequired.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.networkAuthenticationRequired.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.networkAuthenticationRequired.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus
                .networkAuthenticationRequired.isClientErrorHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus
                .networkAuthenticationRequired.isServerErrorHttpStatusCode,
            isTrue,
          );
        });
        test('599 Network Connect Timeout Error', () {
          expect(
            HttpStatus.networkConnectTimeoutError.code,
            equals(HttpStatusCode.networkConnectTimeoutError),
          );
          expect(
            HttpStatus.networkConnectTimeoutError.name,
            equals('Network Connect Timeout Error'),
          );
          expect(
            HttpStatus.networkConnectTimeoutError.description,
            equals(
              'This status code is not specified in any RFCs, but is used '
              'by some HTTP proxies to signal a network connect timeout behind '
              'the proxy to a client in front of the proxy.',
            ),
          );
          expect(
            HttpStatus.code599NetworkConnectTimeoutError,
            HttpStatus.networkConnectTimeoutError,
          );
          expect(
            HttpStatus.networkConnectTimeoutError.isInformationHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.networkConnectTimeoutError.isSuccessfulHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.networkConnectTimeoutError.isRedirectHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.networkConnectTimeoutError.isClientErrorHttpStatusCode,
            isFalse,
          );
          expect(
            HttpStatus.networkConnectTimeoutError.isServerErrorHttpStatusCode,
            isTrue,
          );
        });
      });
    });

    test('== and hashCode', () {
      final a = HttpStatus(
        code: 999,
        name: 'Status Code',
        description: '',
      );
      final b = HttpStatus(
        code: 999,
        name: 'Status Code',
        description: '',
      );
      final c = HttpStatus(
        code: 999,
        name: 'Status Code',
        description: '',
      );
      final d = HttpStatus(
        code: 998,
        name: 'Status',
        description: '',
      );

      // Reflexive.
      expect(a, equals(a));
      expect(a.hashCode, equals(a.hashCode));

      // Symmetric.
      expect(a, equals(b));
      expect(a.hashCode, equals(b.hashCode));
      expect(b, equals(a));
      expect(b.hashCode, equals(a.hashCode));

      // Transitive.
      expect(b, equals(c));
      expect(b.hashCode, equals(c.hashCode));
      expect(a, equals(c));
      expect(a.hashCode, equals(c.hashCode));

      expect(a, isNot(equals(d)));
      expect(a.hashCode, isNot(equals(d.hashCode)));
      expect(b, isNot(equals(d)));
      expect(b.hashCode, isNot(equals(d.hashCode)));
      expect(c, isNot(equals(d)));
      expect(c.hashCode, isNot(equals(d.hashCode)));
    });

    test('code range', () {
      expect(
        () => HttpStatus(
          code: 0,
          name: 'Status',
          description: '',
        ),
        isNot(throwsArgumentError),
      );
      expect(
        () => HttpStatus(
          code: 1,
          name: 'Status',
          description: '',
        ),
        isNot(throwsArgumentError),
      );
      expect(
        () => HttpStatus(
          code: 580,
          name: 'Status',
          description: '',
        ),
        isNot(throwsArgumentError),
      );
      expect(
        () => HttpStatus(
          code: 347,
          name: 'Status',
          description: '',
        ),
        isNot(throwsArgumentError),
      );
      expect(
        () => HttpStatus(
          code: 999,
          name: 'Status',
          description: '',
        ),
        isNot(throwsArgumentError),
      );
    });

    test('cannot create HttpStatus with negative code', () {
      expect(
        () => HttpStatus(
          code: -15,
          name: 'Status',
          description: '',
        ),
        throwsArgumentError,
      );
      expect(
        () => HttpStatus(
          code: -1,
          name: 'Status',
          description: '',
        ),
        throwsArgumentError,
      );
      expect(
        () => HttpStatus(
          code: -99,
          name: 'Status',
          description: '',
        ),
        throwsArgumentError,
      );
    });

    test('fromCode constructor throws on unknown status code', () {
      expect(() => HttpStatus.fromCode(999), throwsArgumentError);
      expect(() => HttpStatus.fromCode(998), throwsArgumentError);
      expect(() => HttpStatus.fromCode(1), throwsArgumentError);
    });

    test('fromCode constructor returns correct status', () {
      expect(
        HttpStatus.fromCode(HttpStatusCode.continue_),
        equals(HttpStatus.continue_),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.switchingProtocols),
        equals(HttpStatus.switchingProtocols),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.processing),
        equals(HttpStatus.processing),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.earlyHints),
        equals(HttpStatus.earlyHints),
      );

      expect(HttpStatus.fromCode(HttpStatusCode.ok), equals(HttpStatus.ok));

      expect(
        HttpStatus.fromCode(HttpStatusCode.created),
        equals(HttpStatus.created),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.accepted),
        equals(HttpStatus.accepted),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.nonAuthoritativeInformation),
        equals(HttpStatus.nonAuthoritativeInformation),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.noContent),
        equals(HttpStatus.noContent),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.resetContent),
        equals(HttpStatus.resetContent),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.partialContent),
        equals(HttpStatus.partialContent),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.multiStatus),
        equals(HttpStatus.multiStatus),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.alreadyReported),
        equals(HttpStatus.alreadyReported),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.imUsed),
        equals(HttpStatus.imUsed),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.multipleChoices),
        equals(HttpStatus.multipleChoices),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.movedPermanently),
        equals(HttpStatus.movedPermanently),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.found),
        equals(HttpStatus.found),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.movedTemporarily),
        equals(HttpStatus.found),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.seeOther),
        equals(HttpStatus.seeOther),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.notModified),
        equals(HttpStatus.notModified),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.useProxy),
        equals(HttpStatus.useProxy),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.temporaryRedirect),
        equals(HttpStatus.temporaryRedirect),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.permanentRedirect),
        equals(HttpStatus.permanentRedirect),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.badRequest),
        equals(HttpStatus.badRequest),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.unauthorized),
        equals(HttpStatus.unauthorized),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.paymentRequired),
        equals(HttpStatus.paymentRequired),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.forbidden),
        equals(HttpStatus.forbidden),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.notFound),
        equals(HttpStatus.notFound),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.methodNotAllowed),
        equals(HttpStatus.methodNotAllowed),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.notAcceptable),
        equals(HttpStatus.notAcceptable),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.proxyAuthenticationRequired),
        equals(HttpStatus.proxyAuthenticationRequired),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.requestTimeout),
        equals(HttpStatus.requestTimeout),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.conflict),
        equals(HttpStatus.conflict),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.gone),
        equals(HttpStatus.gone),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.lengthRequired),
        equals(HttpStatus.lengthRequired),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.preconditionFailed),
        equals(HttpStatus.preconditionFailed),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.requestEntityTooLarge),
        equals(HttpStatus.requestEntityTooLarge),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.requestUriTooLong),
        equals(HttpStatus.requestUriTooLong),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.unsupportedMediaType),
        equals(HttpStatus.unsupportedMediaType),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.requestedRangeNotSatisfiable),
        equals(HttpStatus.requestedRangeNotSatisfiable),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.expectationFailed),
        equals(HttpStatus.expectationFailed),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.imATeapot),
        equals(HttpStatus.imATeapot),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.insufficientSpaceOnResource),
        equals(HttpStatus.insufficientSpaceOnResource),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.methodFailure),
        equals(HttpStatus.methodFailure),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.misdirectedRequest),
        equals(HttpStatus.misdirectedRequest),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.unprocessableEntity),
        equals(HttpStatus.unprocessableEntity),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.locked),
        equals(HttpStatus.locked),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.failedDependency),
        equals(HttpStatus.failedDependency),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.upgradeRequired),
        equals(HttpStatus.upgradeRequired),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.preconditionRequired),
        equals(HttpStatus.preconditionRequired),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.tooManyRequests),
        equals(HttpStatus.tooManyRequests),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.requestHeaderFieldsTooLarge),
        equals(HttpStatus.requestHeaderFieldsTooLarge),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.connectionClosedWithoutResponse),
        equals(HttpStatus.connectionClosedWithoutResponse),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.unavailableForLegalReasons),
        equals(HttpStatus.unavailableForLegalReasons),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.clientClosedRequest),
        equals(HttpStatus.clientClosedRequest),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.internalServerError),
        equals(HttpStatus.internalServerError),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.notImplemented),
        equals(HttpStatus.notImplemented),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.badGateway),
        equals(HttpStatus.badGateway),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.serviceUnavailable),
        equals(HttpStatus.serviceUnavailable),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.gatewayTimeout),
        equals(HttpStatus.gatewayTimeout),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.httpVersionNotSupported),
        equals(HttpStatus.httpVersionNotSupported),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.variantAlsoNegotiates),
        equals(HttpStatus.variantAlsoNegotiates),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.insufficientStorage),
        equals(HttpStatus.insufficientStorage),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.loopDetected),
        equals(HttpStatus.loopDetected),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.notExtended),
        equals(HttpStatus.notExtended),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.networkAuthenticationRequired),
        equals(HttpStatus.networkAuthenticationRequired),
      );

      expect(
        HttpStatus.fromCode(HttpStatusCode.networkConnectTimeoutError),
        equals(HttpStatus.networkConnectTimeoutError),
      );
    });
    test('fromCode constructor returns correct check methods', () {
      final HttpStatus httpStatus = HttpStatus.fromCode(599);
      expect(httpStatus, equals(HttpStatus.networkConnectTimeoutError));
      expect(httpStatus.isInformationHttpStatusCode, isFalse);
      expect(httpStatus.isSuccessfulHttpStatusCode, isFalse);
      expect(httpStatus.isRedirectHttpStatusCode, isFalse);
      expect(httpStatus.isClientErrorHttpStatusCode, isFalse);
      expect(httpStatus.isServerErrorHttpStatusCode, isTrue);
    });
  });
}
