// Copyright (c) 2017, Era Productions. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:http_status/http_status.dart';
import 'package:test/test.dart';

void main() {
  group('All Tests', () {
    test('HttpStatusCode', testHttpStatusCode);

    group('HttpStatus', () {
      test('values', testHttpStatusValues);

      test('== and hashCode', testHttpStatusEqualsAndHashCode);

      test('code range', () {
        expect(() => new HttpStatus(0, 'Status'), isNot(throwsArgumentError));
        expect(() => new HttpStatus(1, 'Status'), isNot(throwsArgumentError));
        expect(() => new HttpStatus(580, 'Status'), isNot(throwsArgumentError));
        expect(() => new HttpStatus(347, 'Status'), isNot(throwsArgumentError));
        expect(() => new HttpStatus(999, 'Status'), isNot(throwsArgumentError));
      });

      test('cannot create HttpStatus with negative code', () {
        expect(() => new HttpStatus(-15, 'Status'), throwsArgumentError);
        expect(() => new HttpStatus(-1, 'Status'), throwsArgumentError);
        expect(() => new HttpStatus(-99, 'Status'), throwsArgumentError);
      });

      test('cannot create HttpStatus with null code or name', () {
        expect(() => new HttpStatus(null, 'Status'), throwsArgumentError);
        expect(() => new HttpStatus(200, null), throwsArgumentError);
        expect(() => new HttpStatus(null, null), throwsArgumentError);
      });

      test('fromCode constructor throws on unknown status code', () {
        expect(() => new HttpStatus.fromCode(999), throwsArgumentError);
        expect(() => new HttpStatus.fromCode(998), throwsArgumentError);
        expect(() => new HttpStatus.fromCode(1), throwsArgumentError);
      });

      test('fromCode constructor returns correct status',
          testHttpStatusFromCodeConstructor);
    });
  });
}

void testHttpStatusCode() {
  expect(HttpStatusCode.Continue, equals(100));

  expect(HttpStatusCode.Switching_Protocols, equals(101));

  expect(HttpStatusCode.Processing, equals(102));

  expect(HttpStatusCode.OK, equals(200));

  expect(HttpStatusCode.Created, equals(201));

  expect(HttpStatusCode.Accepted, equals(202));

  expect(HttpStatusCode.NonAuthoritative_Information, equals(203));

  expect(HttpStatusCode.No_Content, equals(204));

  expect(HttpStatusCode.Reset_Content, equals(205));

  expect(HttpStatusCode.Partial_Content, equals(206));

  expect(HttpStatusCode.MultiStatus, equals(207));

  expect(HttpStatusCode.Already_Reported, equals(208));

  expect(HttpStatusCode.IM_Used, equals(226));

  expect(HttpStatusCode.Multiple_Choices, equals(300));

  expect(HttpStatusCode.Moved_Permanently, equals(301));

  expect(HttpStatusCode.Found, equals(302));

  expect(HttpStatusCode.See_Other, equals(303));

  expect(HttpStatusCode.Not_Modified, equals(304));

  expect(HttpStatusCode.Use_Proxy, equals(305));

  expect(HttpStatusCode.Temporary_Redirect, equals(307));

  expect(HttpStatusCode.Permanent_Redirect, equals(308));

  expect(HttpStatusCode.Bad_Request, equals(400));

  expect(HttpStatusCode.Unauthorized, equals(401));

  expect(HttpStatusCode.Payment_Required, equals(402));

  expect(HttpStatusCode.Forbidden, equals(403));

  expect(HttpStatusCode.Not_Found, equals(404));

  expect(HttpStatusCode.Method_Not_Allowed, equals(405));

  expect(HttpStatusCode.Not_Acceptable, equals(406));

  expect(HttpStatusCode.Proxy_Authentication_Required, equals(407));

  expect(HttpStatusCode.Request_Timeout, equals(408));

  expect(HttpStatusCode.Conflict, equals(409));

  expect(HttpStatusCode.Gone, equals(410));

  expect(HttpStatusCode.Length_Required, equals(411));

  expect(HttpStatusCode.Precondition_Failed, equals(412));

  expect(HttpStatusCode.Payload_Too_Large, equals(413));

  expect(HttpStatusCode.RequestURI_Too_Long, equals(414));

  expect(HttpStatusCode.Unsupported_Media_Type, equals(415));

  expect(HttpStatusCode.Requested_Range_Not_Satisfiable, equals(416));

  expect(HttpStatusCode.Expectation_Failed, equals(417));

  expect(HttpStatusCode.Misdirected_Request, equals(421));

  expect(HttpStatusCode.Unprocessable_Entity, equals(422));

  expect(HttpStatusCode.Locked, equals(423));

  expect(HttpStatusCode.Failed_Dependency, equals(424));

  expect(HttpStatusCode.Upgrade_Required, equals(426));

  expect(HttpStatusCode.Precondition_Required, equals(428));

  expect(HttpStatusCode.Too_Many_Requests, equals(429));

  expect(HttpStatusCode.Request_Header_Fields_Too_Large, equals(431));

  expect(HttpStatusCode.Connection_Closed_Without_Response, equals(444));

  expect(HttpStatusCode.Unavailable_For_Legal_Reasons, equals(451));

  expect(HttpStatusCode.Client_Closed_Request, equals(499));

  expect(HttpStatusCode.Internal_Server_Error, equals(500));

  expect(HttpStatusCode.Not_Implemented, equals(501));

  expect(HttpStatusCode.Bad_Gateway, equals(502));

  expect(HttpStatusCode.Service_Unavailable, equals(503));

  expect(HttpStatusCode.Gateway_Timeout, equals(504));

  expect(HttpStatusCode.HTTP_Version_Not_Supported, equals(505));

  expect(HttpStatusCode.Variant_Also_Negotiates, equals(506));

  expect(HttpStatusCode.Insufficient_Storage, equals(507));

  expect(HttpStatusCode.Loop_Detected, equals(508));

  expect(HttpStatusCode.Not_Extended, equals(510));

  expect(HttpStatusCode.Network_Authentication_Required, equals(511));

  expect(HttpStatusCode.Network_Connect_Timeout_Error, equals(599));
}

void testHttpStatusEqualsAndHashCode() {
  final a = new HttpStatus(999, 'Status Code');
  final b = new HttpStatus(999, 'Status Code');
  final c = new HttpStatus(999, 'Status Code');
  final d = new HttpStatus(998, 'Status');

  // reflexive
  expect(a, equals(a));
  expect(a.hashCode, equals(a.hashCode));

  // symmetric
  expect(a, equals(b));
  expect(a.hashCode, equals(b.hashCode));
  expect(b, equals(a));
  expect(b.hashCode, equals(a.hashCode));

  // transitive
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
}

void testHttpStatusFromCodeConstructor() {
  expect(new HttpStatus.fromCode(HttpStatusCode.Continue),
      equals(HttpStatus.Continue));

  expect(new HttpStatus.fromCode(HttpStatusCode.Switching_Protocols),
      equals(HttpStatus.Switching_Protocols));

  expect(new HttpStatus.fromCode(HttpStatusCode.Processing),
      equals(HttpStatus.Processing));

  expect(new HttpStatus.fromCode(HttpStatusCode.OK), equals(HttpStatus.OK));

  expect(new HttpStatus.fromCode(HttpStatusCode.Created),
      equals(HttpStatus.Created));

  expect(new HttpStatus.fromCode(HttpStatusCode.Accepted),
      equals(HttpStatus.Accepted));

  expect(new HttpStatus.fromCode(HttpStatusCode.NonAuthoritative_Information),
      equals(HttpStatus.NonAuthoritative_Information));

  expect(new HttpStatus.fromCode(HttpStatusCode.No_Content),
      equals(HttpStatus.No_Content));

  expect(new HttpStatus.fromCode(HttpStatusCode.Reset_Content),
      equals(HttpStatus.Reset_Content));

  expect(new HttpStatus.fromCode(HttpStatusCode.Partial_Content),
      equals(HttpStatus.Partial_Content));

  expect(new HttpStatus.fromCode(HttpStatusCode.MultiStatus),
      equals(HttpStatus.MultiStatus));

  expect(new HttpStatus.fromCode(HttpStatusCode.Already_Reported),
      equals(HttpStatus.Already_Reported));

  expect(new HttpStatus.fromCode(HttpStatusCode.IM_Used),
      equals(HttpStatus.IM_Used));

  expect(new HttpStatus.fromCode(HttpStatusCode.Multiple_Choices),
      equals(HttpStatus.Multiple_Choices));

  expect(new HttpStatus.fromCode(HttpStatusCode.Moved_Permanently),
      equals(HttpStatus.Moved_Permanently));

  expect(
      new HttpStatus.fromCode(HttpStatusCode.Found), equals(HttpStatus.Found));

  expect(new HttpStatus.fromCode(HttpStatusCode.See_Other),
      equals(HttpStatus.See_Other));

  expect(new HttpStatus.fromCode(HttpStatusCode.Not_Modified),
      equals(HttpStatus.Not_Modified));

  expect(new HttpStatus.fromCode(HttpStatusCode.Use_Proxy),
      equals(HttpStatus.Use_Proxy));

  expect(new HttpStatus.fromCode(HttpStatusCode.Temporary_Redirect),
      equals(HttpStatus.Temporary_Redirect));

  expect(new HttpStatus.fromCode(HttpStatusCode.Permanent_Redirect),
      equals(HttpStatus.Permanent_Redirect));

  expect(new HttpStatus.fromCode(HttpStatusCode.Bad_Request),
      equals(HttpStatus.Bad_Request));

  expect(new HttpStatus.fromCode(HttpStatusCode.Unauthorized),
      equals(HttpStatus.Unauthorized));

  expect(new HttpStatus.fromCode(HttpStatusCode.Payment_Required),
      equals(HttpStatus.Payment_Required));

  expect(new HttpStatus.fromCode(HttpStatusCode.Forbidden),
      equals(HttpStatus.Forbidden));

  expect(new HttpStatus.fromCode(HttpStatusCode.Not_Found),
      equals(HttpStatus.Not_Found));

  expect(new HttpStatus.fromCode(HttpStatusCode.Method_Not_Allowed),
      equals(HttpStatus.Method_Not_Allowed));

  expect(new HttpStatus.fromCode(HttpStatusCode.Not_Acceptable),
      equals(HttpStatus.Not_Acceptable));

  expect(new HttpStatus.fromCode(HttpStatusCode.Proxy_Authentication_Required),
      equals(HttpStatus.Proxy_Authentication_Required));

  expect(new HttpStatus.fromCode(HttpStatusCode.Request_Timeout),
      equals(HttpStatus.Request_Timeout));

  expect(new HttpStatus.fromCode(HttpStatusCode.Conflict),
      equals(HttpStatus.Conflict));

  expect(new HttpStatus.fromCode(HttpStatusCode.Gone), equals(HttpStatus.Gone));

  expect(new HttpStatus.fromCode(HttpStatusCode.Length_Required),
      equals(HttpStatus.Length_Required));

  expect(new HttpStatus.fromCode(HttpStatusCode.Precondition_Failed),
      equals(HttpStatus.Precondition_Failed));

  expect(new HttpStatus.fromCode(HttpStatusCode.Payload_Too_Large),
      equals(HttpStatus.Payload_Too_Large));

  expect(new HttpStatus.fromCode(HttpStatusCode.RequestURI_Too_Long),
      equals(HttpStatus.RequestURI_Too_Long));

  expect(new HttpStatus.fromCode(HttpStatusCode.Unsupported_Media_Type),
      equals(HttpStatus.Unsupported_Media_Type));

  expect(
      new HttpStatus.fromCode(HttpStatusCode.Requested_Range_Not_Satisfiable),
      equals(HttpStatus.Requested_Range_Not_Satisfiable));

  expect(new HttpStatus.fromCode(HttpStatusCode.Expectation_Failed),
      equals(HttpStatus.Expectation_Failed));

  expect(new HttpStatus.fromCode(HttpStatusCode.Misdirected_Request),
      equals(HttpStatus.Misdirected_Request));

  expect(new HttpStatus.fromCode(HttpStatusCode.Unprocessable_Entity),
      equals(HttpStatus.Unprocessable_Entity));

  expect(new HttpStatus.fromCode(HttpStatusCode.Locked),
      equals(HttpStatus.Locked));

  expect(new HttpStatus.fromCode(HttpStatusCode.Failed_Dependency),
      equals(HttpStatus.Failed_Dependency));

  expect(new HttpStatus.fromCode(HttpStatusCode.Upgrade_Required),
      equals(HttpStatus.Upgrade_Required));

  expect(new HttpStatus.fromCode(HttpStatusCode.Precondition_Required),
      equals(HttpStatus.Precondition_Required));

  expect(new HttpStatus.fromCode(HttpStatusCode.Too_Many_Requests),
      equals(HttpStatus.Too_Many_Requests));

  expect(
      new HttpStatus.fromCode(HttpStatusCode.Request_Header_Fields_Too_Large),
      equals(HttpStatus.Request_Header_Fields_Too_Large));

  expect(
      new HttpStatus.fromCode(
          HttpStatusCode.Connection_Closed_Without_Response),
      equals(HttpStatus.Connection_Closed_Without_Response));

  expect(new HttpStatus.fromCode(HttpStatusCode.Unavailable_For_Legal_Reasons),
      equals(HttpStatus.Unavailable_For_Legal_Reasons));

  expect(new HttpStatus.fromCode(HttpStatusCode.Client_Closed_Request),
      equals(HttpStatus.Client_Closed_Request));

  expect(new HttpStatus.fromCode(HttpStatusCode.Internal_Server_Error),
      equals(HttpStatus.Internal_Server_Error));

  expect(new HttpStatus.fromCode(HttpStatusCode.Not_Implemented),
      equals(HttpStatus.Not_Implemented));

  expect(new HttpStatus.fromCode(HttpStatusCode.Bad_Gateway),
      equals(HttpStatus.Bad_Gateway));

  expect(new HttpStatus.fromCode(HttpStatusCode.Service_Unavailable),
      equals(HttpStatus.Service_Unavailable));

  expect(new HttpStatus.fromCode(HttpStatusCode.Gateway_Timeout),
      equals(HttpStatus.Gateway_Timeout));

  expect(new HttpStatus.fromCode(HttpStatusCode.HTTP_Version_Not_Supported),
      equals(HttpStatus.HTTP_Version_Not_Supported));

  expect(new HttpStatus.fromCode(HttpStatusCode.Variant_Also_Negotiates),
      equals(HttpStatus.Variant_Also_Negotiates));

  expect(new HttpStatus.fromCode(HttpStatusCode.Insufficient_Storage),
      equals(HttpStatus.Insufficient_Storage));

  expect(new HttpStatus.fromCode(HttpStatusCode.Loop_Detected),
      equals(HttpStatus.Loop_Detected));

  expect(new HttpStatus.fromCode(HttpStatusCode.Not_Extended),
      equals(HttpStatus.Not_Extended));

  expect(
      new HttpStatus.fromCode(HttpStatusCode.Network_Authentication_Required),
      equals(HttpStatus.Network_Authentication_Required));

  expect(new HttpStatus.fromCode(HttpStatusCode.Network_Connect_Timeout_Error),
      equals(HttpStatus.Network_Connect_Timeout_Error));
}

void testHttpStatusValues() {
  expect(HttpStatus.Continue.code, equals(HttpStatusCode.Continue));
  expect(HttpStatus.Continue.name, equals('Continue'));

  expect(HttpStatus.Switching_Protocols.code,
      equals(HttpStatusCode.Switching_Protocols));
  expect(HttpStatus.Switching_Protocols.name, equals('Switching Protocols'));

  expect(HttpStatus.Processing.code, equals(HttpStatusCode.Processing));
  expect(HttpStatus.Processing.name, equals('Processing'));

  expect(HttpStatus.OK.code, equals(HttpStatusCode.OK));
  expect(HttpStatus.OK.name, equals('OK'));

  expect(HttpStatus.Created.code, equals(HttpStatusCode.Created));
  expect(HttpStatus.Created.name, equals('Created'));

  expect(HttpStatus.Accepted.code, equals(HttpStatusCode.Accepted));
  expect(HttpStatus.Accepted.name, equals('Accepted'));

  expect(HttpStatus.NonAuthoritative_Information.code,
      equals(HttpStatusCode.NonAuthoritative_Information));
  expect(HttpStatus.NonAuthoritative_Information.name,
      equals('Non-authoritative Information'));

  expect(HttpStatus.No_Content.code, equals(HttpStatusCode.No_Content));
  expect(HttpStatus.No_Content.name, equals('No Content'));

  expect(HttpStatus.Reset_Content.code, equals(HttpStatusCode.Reset_Content));
  expect(HttpStatus.Reset_Content.name, equals('Reset Content'));

  expect(
      HttpStatus.Partial_Content.code, equals(HttpStatusCode.Partial_Content));
  expect(HttpStatus.Partial_Content.name, equals('Partial Content'));

  expect(HttpStatus.MultiStatus.code, equals(HttpStatusCode.MultiStatus));
  expect(HttpStatus.MultiStatus.name, equals('Multi-Status'));

  expect(HttpStatus.Already_Reported.code,
      equals(HttpStatusCode.Already_Reported));
  expect(HttpStatus.Already_Reported.name, equals('Already Reported'));

  expect(HttpStatus.IM_Used.code, equals(HttpStatusCode.IM_Used));
  expect(HttpStatus.IM_Used.name, equals('IM Used'));

  expect(HttpStatus.Multiple_Choices.code,
      equals(HttpStatusCode.Multiple_Choices));
  expect(HttpStatus.Multiple_Choices.name, equals('Multiple Choices'));

  expect(HttpStatus.Moved_Permanently.code,
      equals(HttpStatusCode.Moved_Permanently));
  expect(HttpStatus.Moved_Permanently.name, equals('Moved Permanently'));

  expect(HttpStatus.Found.code, equals(HttpStatusCode.Found));
  expect(HttpStatus.Found.name, equals('Found'));

  expect(HttpStatus.See_Other.code, equals(HttpStatusCode.See_Other));
  expect(HttpStatus.See_Other.name, equals('See Other'));

  expect(HttpStatus.Not_Modified.code, equals(HttpStatusCode.Not_Modified));
  expect(HttpStatus.Not_Modified.name, equals('Not Modified'));

  expect(HttpStatus.Use_Proxy.code, equals(HttpStatusCode.Use_Proxy));
  expect(HttpStatus.Use_Proxy.name, equals('Use Proxy'));

  expect(HttpStatus.Temporary_Redirect.code,
      equals(HttpStatusCode.Temporary_Redirect));
  expect(HttpStatus.Temporary_Redirect.name, equals('Temporary Redirect'));

  expect(HttpStatus.Permanent_Redirect.code,
      equals(HttpStatusCode.Permanent_Redirect));
  expect(HttpStatus.Permanent_Redirect.name, equals('Permanent Redirect'));

  expect(HttpStatus.Bad_Request.code, equals(HttpStatusCode.Bad_Request));
  expect(HttpStatus.Bad_Request.name, equals('Bad Request'));

  expect(HttpStatus.Unauthorized.code, equals(HttpStatusCode.Unauthorized));
  expect(HttpStatus.Unauthorized.name, equals('Unauthorized'));

  expect(HttpStatus.Payment_Required.code,
      equals(HttpStatusCode.Payment_Required));
  expect(HttpStatus.Payment_Required.name, equals('Payment Required'));

  expect(HttpStatus.Forbidden.code, equals(HttpStatusCode.Forbidden));
  expect(HttpStatus.Forbidden.name, equals('Forbidden'));

  expect(HttpStatus.Not_Found.code, equals(HttpStatusCode.Not_Found));
  expect(HttpStatus.Not_Found.name, equals('Not Found'));

  expect(HttpStatus.Method_Not_Allowed.code,
      equals(HttpStatusCode.Method_Not_Allowed));
  expect(HttpStatus.Method_Not_Allowed.name, equals('Method Not Allowed'));

  expect(HttpStatus.Not_Acceptable.code, equals(HttpStatusCode.Not_Acceptable));
  expect(HttpStatus.Not_Acceptable.name, equals('Not Acceptable'));

  expect(HttpStatus.Proxy_Authentication_Required.code,
      equals(HttpStatusCode.Proxy_Authentication_Required));
  expect(HttpStatus.Proxy_Authentication_Required.name,
      equals('Proxy Authentication Required'));

  expect(
      HttpStatus.Request_Timeout.code, equals(HttpStatusCode.Request_Timeout));
  expect(HttpStatus.Request_Timeout.name, equals('Request Timeout'));

  expect(HttpStatus.Conflict.code, equals(HttpStatusCode.Conflict));
  expect(HttpStatus.Conflict.name, equals('Conflict'));

  expect(HttpStatus.Gone.code, equals(HttpStatusCode.Gone));
  expect(HttpStatus.Gone.name, equals('Gone'));

  expect(
      HttpStatus.Length_Required.code, equals(HttpStatusCode.Length_Required));
  expect(HttpStatus.Length_Required.name, equals('Length Required'));

  expect(HttpStatus.Precondition_Failed.code,
      equals(HttpStatusCode.Precondition_Failed));
  expect(HttpStatus.Precondition_Failed.name, equals('Precondition Failed'));

  expect(HttpStatus.Payload_Too_Large.code,
      equals(HttpStatusCode.Payload_Too_Large));
  expect(HttpStatus.Payload_Too_Large.name, equals('Payload Too Large'));

  expect(HttpStatus.RequestURI_Too_Long.code,
      equals(HttpStatusCode.RequestURI_Too_Long));
  expect(HttpStatus.RequestURI_Too_Long.name, equals('Request-URI Too Long'));

  expect(HttpStatus.Unsupported_Media_Type.code,
      equals(HttpStatusCode.Unsupported_Media_Type));
  expect(
      HttpStatus.Unsupported_Media_Type.name, equals('Unsupported Media Type'));

  expect(HttpStatus.Requested_Range_Not_Satisfiable.code,
      equals(HttpStatusCode.Requested_Range_Not_Satisfiable));
  expect(HttpStatus.Requested_Range_Not_Satisfiable.name,
      equals('Requested Range Not Satisfiable'));

  expect(HttpStatus.Expectation_Failed.code,
      equals(HttpStatusCode.Expectation_Failed));
  expect(HttpStatus.Expectation_Failed.name, equals('Expectation Failed'));

  expect(HttpStatus.Misdirected_Request.code,
      equals(HttpStatusCode.Misdirected_Request));
  expect(HttpStatus.Misdirected_Request.name, equals('Misdirected Request'));

  expect(HttpStatus.Unprocessable_Entity.code,
      equals(HttpStatusCode.Unprocessable_Entity));
  expect(HttpStatus.Unprocessable_Entity.name, equals('Unprocessable Entity'));

  expect(HttpStatus.Locked.code, equals(HttpStatusCode.Locked));
  expect(HttpStatus.Locked.name, equals('Locked'));

  expect(HttpStatus.Failed_Dependency.code,
      equals(HttpStatusCode.Failed_Dependency));
  expect(HttpStatus.Failed_Dependency.name, equals('Failed Dependency'));

  expect(HttpStatus.Upgrade_Required.code,
      equals(HttpStatusCode.Upgrade_Required));
  expect(HttpStatus.Upgrade_Required.name, equals('Upgrade Required'));

  expect(HttpStatus.Precondition_Required.code,
      equals(HttpStatusCode.Precondition_Required));
  expect(
      HttpStatus.Precondition_Required.name, equals('Precondition Required'));

  expect(HttpStatus.Too_Many_Requests.code,
      equals(HttpStatusCode.Too_Many_Requests));
  expect(HttpStatus.Too_Many_Requests.name, equals('Too Many Requests'));

  expect(HttpStatus.Request_Header_Fields_Too_Large.code,
      equals(HttpStatusCode.Request_Header_Fields_Too_Large));
  expect(HttpStatus.Request_Header_Fields_Too_Large.name,
      equals('Request Header Fields Too Large'));

  expect(HttpStatus.Connection_Closed_Without_Response.code,
      equals(HttpStatusCode.Connection_Closed_Without_Response));
  expect(HttpStatus.Connection_Closed_Without_Response.name,
      equals('Connection Closed Without Response'));

  expect(HttpStatus.Unavailable_For_Legal_Reasons.code,
      equals(HttpStatusCode.Unavailable_For_Legal_Reasons));
  expect(HttpStatus.Unavailable_For_Legal_Reasons.name,
      equals('Unavailable For Legal Reasons'));

  expect(HttpStatus.Client_Closed_Request.code,
      equals(HttpStatusCode.Client_Closed_Request));
  expect(
      HttpStatus.Client_Closed_Request.name, equals('Client Closed Request'));

  expect(HttpStatus.Internal_Server_Error.code,
      equals(HttpStatusCode.Internal_Server_Error));
  expect(
      HttpStatus.Internal_Server_Error.name, equals('Internal Server Error'));

  expect(
      HttpStatus.Not_Implemented.code, equals(HttpStatusCode.Not_Implemented));
  expect(HttpStatus.Not_Implemented.name, equals('Not Implemented'));

  expect(HttpStatus.Bad_Gateway.code, equals(HttpStatusCode.Bad_Gateway));
  expect(HttpStatus.Bad_Gateway.name, equals('Bad Gateway'));

  expect(HttpStatus.Service_Unavailable.code,
      equals(HttpStatusCode.Service_Unavailable));
  expect(HttpStatus.Service_Unavailable.name, equals('Service Unavailable'));

  expect(
      HttpStatus.Gateway_Timeout.code, equals(HttpStatusCode.Gateway_Timeout));
  expect(HttpStatus.Gateway_Timeout.name, equals('Gateway Timeout'));

  expect(HttpStatus.HTTP_Version_Not_Supported.code,
      equals(HttpStatusCode.HTTP_Version_Not_Supported));
  expect(HttpStatus.HTTP_Version_Not_Supported.name,
      equals('HTTP Version Not Supported'));

  expect(HttpStatus.Variant_Also_Negotiates.code,
      equals(HttpStatusCode.Variant_Also_Negotiates));
  expect(HttpStatus.Variant_Also_Negotiates.name,
      equals('Variant Also Negotiates'));

  expect(HttpStatus.Insufficient_Storage.code,
      equals(HttpStatusCode.Insufficient_Storage));
  expect(HttpStatus.Insufficient_Storage.name, equals('Insufficient Storage'));

  expect(HttpStatus.Loop_Detected.code, equals(HttpStatusCode.Loop_Detected));
  expect(HttpStatus.Loop_Detected.name, equals('Loop Detected'));

  expect(HttpStatus.Not_Extended.code, equals(HttpStatusCode.Not_Extended));
  expect(HttpStatus.Not_Extended.name, equals('Not Extended'));

  expect(HttpStatus.Network_Authentication_Required.code,
      equals(HttpStatusCode.Network_Authentication_Required));
  expect(HttpStatus.Network_Authentication_Required.name,
      equals('Network Authentication Required'));

  expect(HttpStatus.Network_Connect_Timeout_Error.code,
      equals(HttpStatusCode.Network_Connect_Timeout_Error));
  expect(HttpStatus.Network_Connect_Timeout_Error.name,
      equals('Network Connect Timeout Error'));
}
