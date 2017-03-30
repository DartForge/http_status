// Copyright (c) 2017, Era Productions. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:http_status/http_status.dart';
import 'package:test/test.dart';

void main() {
  group('All Tests', () {
    test('HttpStatusCode', () {
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
    });

    test('HttpStatus', () {
      expect(HttpStatus.Continue.code, equals(HttpStatusCode.Continue));
      expect(HttpStatus.Continue.name, equals('Continue'));

      expect(HttpStatus.Switching_Protocols.code,
          equals(HttpStatusCode.Switching_Protocols));
      expect(
          HttpStatus.Switching_Protocols.name, equals('Switching Protocols'));

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

      expect(
          HttpStatus.Reset_Content.code, equals(HttpStatusCode.Reset_Content));
      expect(HttpStatus.Reset_Content.name, equals('Reset Content'));

      expect(HttpStatus.Partial_Content.code,
          equals(HttpStatusCode.Partial_Content));
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

      expect(HttpStatus.Not_Acceptable.code,
          equals(HttpStatusCode.Not_Acceptable));
      expect(HttpStatus.Not_Acceptable.name, equals('Not Acceptable'));

      expect(HttpStatus.Proxy_Authentication_Required.code,
          equals(HttpStatusCode.Proxy_Authentication_Required));
      expect(HttpStatus.Proxy_Authentication_Required.name,
          equals('Proxy Authentication Required'));

      expect(HttpStatus.Request_Timeout.code,
          equals(HttpStatusCode.Request_Timeout));
      expect(HttpStatus.Request_Timeout.name, equals('Request Timeout'));

      expect(HttpStatus.Conflict.code, equals(HttpStatusCode.Conflict));
      expect(HttpStatus.Conflict.name, equals('Conflict'));

      expect(HttpStatus.Gone.code, equals(HttpStatusCode.Gone));
      expect(HttpStatus.Gone.name, equals('Gone'));

      expect(HttpStatus.Length_Required.code,
          equals(HttpStatusCode.Length_Required));
      expect(HttpStatus.Length_Required.name, equals('Length Required'));

      expect(HttpStatus.Precondition_Failed.code,
          equals(HttpStatusCode.Precondition_Failed));
      expect(
          HttpStatus.Precondition_Failed.name, equals('Precondition Failed'));

      expect(HttpStatus.Payload_Too_Large.code,
          equals(HttpStatusCode.Payload_Too_Large));
      expect(HttpStatus.Payload_Too_Large.name, equals('Payload Too Large'));

      expect(HttpStatus.RequestURI_Too_Long.code,
          equals(HttpStatusCode.RequestURI_Too_Long));
      expect(
          HttpStatus.RequestURI_Too_Long.name, equals('Request-URI Too Long'));

      expect(HttpStatus.Unsupported_Media_Type.code,
          equals(HttpStatusCode.Unsupported_Media_Type));
      expect(HttpStatus.Unsupported_Media_Type.name,
          equals('Unsupported Media Type'));

      expect(HttpStatus.Requested_Range_Not_Satisfiable.code,
          equals(HttpStatusCode.Requested_Range_Not_Satisfiable));
      expect(HttpStatus.Requested_Range_Not_Satisfiable.name,
          equals('Requested Range Not Satisfiable'));

      expect(HttpStatus.Expectation_Failed.code,
          equals(HttpStatusCode.Expectation_Failed));
      expect(HttpStatus.Expectation_Failed.name, equals('Expectation Failed'));

      expect(HttpStatus.Misdirected_Request.code,
          equals(HttpStatusCode.Misdirected_Request));
      expect(
          HttpStatus.Misdirected_Request.name, equals('Misdirected Request'));

      expect(HttpStatus.Unprocessable_Entity.code,
          equals(HttpStatusCode.Unprocessable_Entity));
      expect(
          HttpStatus.Unprocessable_Entity.name, equals('Unprocessable Entity'));

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
      expect(HttpStatus.Precondition_Required.name,
          equals('Precondition Required'));

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
      expect(HttpStatus.Client_Closed_Request.name,
          equals('Client Closed Request'));

      expect(HttpStatus.Internal_Server_Error.code,
          equals(HttpStatusCode.Internal_Server_Error));
      expect(HttpStatus.Internal_Server_Error.name,
          equals('Internal Server Error'));

      expect(HttpStatus.Not_Implemented.code,
          equals(HttpStatusCode.Not_Implemented));
      expect(HttpStatus.Not_Implemented.name, equals('Not Implemented'));

      expect(HttpStatus.Bad_Gateway.code, equals(HttpStatusCode.Bad_Gateway));
      expect(HttpStatus.Bad_Gateway.name, equals('Bad Gateway'));

      expect(HttpStatus.Service_Unavailable.code,
          equals(HttpStatusCode.Service_Unavailable));
      expect(
          HttpStatus.Service_Unavailable.name, equals('Service Unavailable'));

      expect(HttpStatus.Gateway_Timeout.code,
          equals(HttpStatusCode.Gateway_Timeout));
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
      expect(
          HttpStatus.Insufficient_Storage.name, equals('Insufficient Storage'));

      expect(
          HttpStatus.Loop_Detected.code, equals(HttpStatusCode.Loop_Detected));
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
    });
  });
}
