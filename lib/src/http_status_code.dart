// Copyright (c) 2017, Era Productions.
// Copyright (c) 2024, TECH-ANDGAR.
// All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

// ignore_for_file: constant_identifier_names
// TODO: Remove this line `ignore_for_file: constant_identifier_names` in the next version (v3.0.0)
// Reason: This constant's name violates the lint rule. Refactor it to comply with the Dart style guide

import 'dart:io';

/// HTTP Status Codes.
abstract class HttpStatusCode {
  /// {@template http_status_code_100_continue_}
  /// **continue_ = 100**.
  ///
  /// This interim response indicates that everything so far is OK
  /// and that the client should continue with the request or
  /// ignore it if it is already finished.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.2.1
  ///
  /// {@endtemplate}
  static const int continue_ = HttpStatus.continue_;

  /// {@macro http_status_code_100_continue_}
  @Deprecated("Use [continue_] instead.")
  static const int Continue = continue_;

  /// {@macro http_status_code_100_continue_}
  @Deprecated("Use [continue_] instead.")
  static const int CONTINUE = continue_;

  /// {@template http_status_code_101_switchingProtocols}
  /// **switchingProtocols = 101**.
  ///
  /// This code is sent in response to an Upgrade request header by the client,
  /// and indicates the protocol the server is switching too.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.2.2
  ///
  /// {@endtemplate}
  static const int switchingProtocols = HttpStatus.switchingProtocols;

  /// {@macro http_status_code_101_switchingProtocols}
  @Deprecated("Use [switchingProtocols] instead.")
  static const int Switching_Protocols = switchingProtocols;

  /// {@macro http_status_code_101_switchingProtocols}
  @Deprecated("Use [switchingProtocols] instead.")
  static const int SWITCHING_PROTOCOLS = Switching_Protocols;

  /// {@template http_status_code_102_processing}
  /// **processing = 102**.
  ///
  /// This code indicates that the server has received and is processing
  /// the request, but no response is available yet.
  ///
  /// https://tools.ietf.org/html/rfc2518#section-10.1
  ///
  /// {@endtemplate}
  static const int processing = HttpStatus.processing;

  /// {@macro http_status_code_102_processing}
  @Deprecated("Use [processing] instead.")
  static const int Processing = processing;

  /// {@macro http_status_code_102_processing}
  @Deprecated("Use [processing] instead.")
  static const int PROCESSING = Processing;

  /// {@template http_status_code_103_earlyHints}
  /// **earlyHints = 103**.
  ///
  /// This code indicates that the server is likely to send a final response
  /// with the headers included in this informational response,
  /// but is still processing the request.
  /// This allows the client to start processing the headers early.
  ///
  /// **RFC 8297:** https://tools.ietf.org/html/rfc8297
  ///
  /// {@endtemplate}
  static const int earlyHints = 103;

  /// {@macro http_status_code_103_earlyHints}
  @Deprecated("Use [earlyHints] instead.")
  static const int Early_Hints = earlyHints;

  /// {@macro http_status_code_103_earlyHints}
  @Deprecated("Use [earlyHints] instead.")
  static const int EARLY_HINTS = earlyHints;

  /// {@template http_status_code_200_ok}
  /// **ok = 200**.
  ///
  /// The request has succeeded. The meaning of a success varies
  /// depending on the HTTP method:
  ///
  /// GET: The resource has been fetched and is transmitted in the message body.
  ///
  /// HEAD: The entity headers are in the message body.
  ///
  /// POST: The resource describing the result of the action is transmitted in
  /// the message body.
  ///
  /// TRACE: The message body contains the request message as received by the
  /// server
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.3.1
  ///
  /// {@endtemplate}
  static const int ok = HttpStatus.ok;

  /// {@macro http_status_code_200_ok}
  @Deprecated("Use [ok] instead.")
  static const int OK = ok;

  /// {@macro http_status_code_200_ok}
  @Deprecated("Use [ok] instead.")
  static const int Ok = ok;

  /// {@template http_status_code_201_created}
  /// **created = 201**.
  ///
  /// The request has succeeded and a new resource has been created
  /// as a result of it. This is typically the response sent
  /// after a PUT request.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.3.2
  ///
  /// {@endtemplate}
  static const int created = HttpStatus.created;

  /// {@macro http_status_code_201_created}
  @Deprecated("Use [created] instead.")
  static const int Created = created;

  /// {@macro http_status_code_201_created}
  @Deprecated("Use [created] instead.")
  static const int CREATED = Created;

  /// {@template http_status_code_202_accepted}
  /// **accepted = 202**.
  ///
  /// The request has been received but not yet acted upon.
  /// It is non-committal, meaning that there is no way in HTTP to later send
  /// an asynchronous response indicating the outcome of processing the request.
  /// It is intended for cases where another process or server handles
  /// the request, or for batch processing.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.3.3
  ///
  /// {@endtemplate}
  static const int accepted = HttpStatus.accepted;

  /// {@macro http_status_code_202_accepted}
  @Deprecated("Use [accepted] instead.")
  static const int Accepted = accepted;

  /// {@macro http_status_code_202_accepted}
  @Deprecated("Use [accepted] instead.")
  static const int ACCEPTED = accepted;

  /// {@template http_status_code_203_nonAuthoritativeInformation}
  /// **nonAuthoritativeInformation = 203**.
  ///
  /// This response code means returned meta-information set
  /// is not exact set as available from the origin server, but collected
  /// from a local or a third party copy.
  ///
  /// Except this condition, 200 OK response should be preferred
  /// instead of this response.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.3.4
  ///
  /// {@endtemplate}
  static const int nonAuthoritativeInformation =
      HttpStatus.nonAuthoritativeInformation;

  /// {@macro http_status_code_203_nonAuthoritativeInformation}
  @Deprecated("Use [NonAuthoritative_Information] instead.")
  static const int NonAuthoritative_Information = nonAuthoritativeInformation;

  /// {@macro http_status_code_203_nonAuthoritativeInformation}
  @Deprecated("Use [NonAuthoritative_Information] instead.")
  static const int NON_AUTHORITATIVE_INFORMATION = NonAuthoritative_Information;

  /// {@template http_status_code_204_noContent}
  /// **noContent = 204**.
  ///
  /// There is no content to send for this request, but the headers
  /// may be useful. The user-agent may update its cached headers
  /// for this resource with the new ones.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.3.5
  ///
  /// {@endtemplate}
  static const int noContent = HttpStatus.noContent;

  /// {@macro http_status_code_204_noContent}
  @Deprecated("Use [noContent] instead.")
  static const int No_Content = noContent;

  /// {@macro http_status_code_204_noContent}
  @Deprecated("Use [noContent] instead.")
  static const int NO_CONTENT = noContent;

  /// {@template http_status_code_205_resetContent}
  /// **resetContent = 205**.
  ///
  /// This response code is sent after accomplishing request to tell
  /// user agent reset document view which sent this request.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.3.6
  ///
  /// {@endtemplate}
  static const int resetContent = HttpStatus.resetContent;

  /// {@macro http_status_code_205_resetContent}
  @Deprecated("Use [resetContent] instead.")
  static const int Reset_Content = resetContent;

  /// {@macro http_status_code_205_resetContent}
  @Deprecated("Use [resetContent] instead.")
  static const int RESET_CONTENT = Reset_Content;

  /// {@template http_status_code_206_partialContent}
  /// **partialContent = 206**.
  ///
  /// This response code is used because of range header sent by the client
  /// to separate download into multiple streams.
  ///
  /// https://tools.ietf.org/html/rfc7233#section-4.1
  ///
  /// {@endtemplate}
  static const int partialContent = HttpStatus.partialContent;

  /// {@macro http_status_code_206_partialContent}
  @Deprecated("Use [partialContent] instead.")
  static const int Partial_Content = partialContent;

  /// {@macro http_status_code_206_partialContent}
  @Deprecated("Use [partialContent] instead.")
  static const int PARTIAL_CONTENT = Partial_Content;

  /// {@template http_status_code_207_multiStatus}
  /// **multiStatus = 207**.
  ///
  /// A Multi-Status response conveys information about multiple resources
  /// in situations where multiple status codes might be appropriate.
  ///
  /// https://tools.ietf.org/html/rfc2518#section-10.2
  ///
  /// {@endtemplate}
  static const int multiStatus = HttpStatus.multiStatus;

  /// {@macro http_status_code_207_multiStatus}
  @Deprecated("Use [multiStatus] instead.")
  static const int MultiStatus = multiStatus;

  /// {@macro http_status_code_207_multiStatus}
  @Deprecated("Use [multiStatus] instead.")
  static const int MULTISTATUS = MultiStatus;

  /// {@template http_status_code_208_alreadyReported}
  /// **alreadyReported = 208**.
  ///
  /// This status code is used to indicate that the members of a DAV binding
  /// have already been enumerated in a previous reply to this request,
  /// and are not being included again.
  ///
  /// https://tools.ietf.org/html/rfc5842#section-7.1
  ///
  /// {@endtemplate}
  static const int alreadyReported = HttpStatus.alreadyReported;

  /// {@macro http_status_code_208_alreadyReported}
  @Deprecated("Use [alreadyReported] instead.")
  static const int Already_Reported = alreadyReported;

  /// {@macro http_status_code_208_alreadyReported}
  @Deprecated("Use [alreadyReported] instead.")
  static const int ALREADY_REPORTED = Already_Reported;

  /// {@template http_status_code_226_imUsed}
  /// **imUsed = 226**.
  ///
  /// This code is used in a response to a method invocation on a resource to
  /// indicate that the resource was successfully created and that the server
  /// has returned a representation of the result of that creation.
  ///
  /// https://tools.ietf.org/html/rfc3229#section-10.4.1
  ///
  /// {@endtemplate}
  static const int imUsed = HttpStatus.imUsed;

  /// {@macro http_status_code_226_imUsed}
  @Deprecated("Use [imUsed] instead.")
  static const int IM_Used = imUsed;

  /// {@macro http_status_code_226_imUsed}
  @Deprecated("Use [imUsed] instead.")
  static const int IM_USED = IM_Used;

  /// {@template http_status_code_300_multipleChoices}
  /// **multipleChoices = 300**.
  ///
  /// The request has more than one possible responses.
  /// User-agent or user should choose one of them.
  ///
  /// There is no standardized way to choose one of the responses.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.4.1
  ///
  /// {@endtemplate}
  static const int multipleChoices = HttpStatus.multipleChoices;

  /// {@macro http_status_code_300_multipleChoices}
  @Deprecated("Use [multipleChoices] instead.")
  static const int Multiple_Choices = multipleChoices;

  /// {@macro http_status_code_300_multipleChoices}
  @Deprecated("Use [multipleChoices] instead.")
  static const int MULTIPLE_CHOICES = Multiple_Choices;

  /// {@template http_status_code_301_movedPermanently}
  /// **movedPermanently = 301**.
  ///
  /// This response code means that URI of requested resource has been changed.
  /// Probably, new URI would be given in the response.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.4.2
  ///
  /// {@endtemplate}
  static const int movedPermanently = HttpStatus.movedPermanently;

  /// {@macro http_status_code_301_movedPermanently}
  @Deprecated("Use [movedPermanently] instead.")
  static const int Moved_Permanently = movedPermanently;

  /// {@macro http_status_code_301_movedPermanently}
  @Deprecated("Use [movedPermanently] instead.")
  static const int MOVED_PERMANENTLY = Moved_Permanently;

  /// {@template http_status_code_302_found}
  /// **found = 302**.
  ///
  /// This response code means that URI of requested resource has been
  /// changed temporarily. New changes in the URI might be made in the future.
  /// Therefore, this same URI should be used by the client in future requests.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.4.3
  ///
  /// {@endtemplate}
  static const int found = HttpStatus.found;

  /// {@macro http_status_code_302_found}
  @Deprecated("Use [found] instead.")
  static const int Found = found;

  /// {@macro http_status_code_302_found}
  @Deprecated("Use [found] instead.")
  static const int FOUND = Found;

  /// {@template http_status_code_302_movedTemporarily}
  /// **movedTemporarily = 302**.
  ///
  /// This response code means that URI of requested resource has been
  /// changed temporarily. New changes in the URI might be made in the future.
  /// Therefore, this same URI should be used by the client in future requests.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.4.3
  ///
  /// {@endtemplate}
  static const int movedTemporarily = HttpStatus.movedTemporarily;

  /// {@macro http_status_code_302_movedTemporarily}
  @Deprecated("Use [movedTemporarily] instead.")
  static const int Moved_Temporarily = movedTemporarily;
  // Common alias for FOUND.

  /// {@macro http_status_code_302_movedTemporarily}
  @Deprecated("Use [movedTemporarily] instead.")
  static const int MOVED_TEMPORARILY = movedTemporarily;
  // Common alias for FOUND.

  /// {@template http_status_code_303_seeOther}
  /// **seeOther = 303**.
  ///
  /// Server sent this response to directing client to get requested resource
  /// to another URI with an GET request.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.4.4
  ///
  /// {@endtemplate}
  static const int seeOther = HttpStatus.seeOther;

  /// {@macro http_status_code_303_seeOther}
  @Deprecated("Use [seeOther] instead.")
  static const int See_Other = seeOther;

  /// {@macro http_status_code_303_seeOther}
  @Deprecated("Use [seeOther] instead.")
  static const int SEE_OTHER = See_Other;

  /// {@template http_status_code_304_notModified}
  /// **notModified = 304**.
  ///
  /// This is used for caching purposes. It is telling to client that
  /// response has not been modified. So, client can continue to use
  /// same cached version of response.
  ///
  /// https://tools.ietf.org/html/rfc7232#section-4.1
  ///
  /// {@endtemplate}
  static const int notModified = HttpStatus.notModified;

  /// {@macro http_status_code_304_notModified}
  @Deprecated("Use [notModified] instead.")
  static const int Not_Modified = notModified;

  /// {@macro http_status_code_304_notModified}
  @Deprecated("Use [notModified] instead.")
  static const int NOT_MODIFIED = Not_Modified;

  /// {@template http_status_code_305_useProxy}
  /// **useProxy = 305**.
  ///
  /// @deprecated
  /// Was defined in a previous version of the HTTP specification to indicate
  /// that a requested response must be accessed by a proxy.
  ///
  /// It has been deprecated due to security concerns regarding
  /// in-band configuration of a proxy.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.4.6
  ///
  /// {@endtemplate}
  static const int useProxy = HttpStatus.useProxy;

  /// {@macro http_status_code_305_useProxy}
  @Deprecated("Use [useProxy] instead.")
  static const int Use_Proxy = useProxy;

  /// {@macro http_status_code_305_useProxy}
  @Deprecated("Use [useProxy] instead.")
  static const int USE_PROXY = Use_Proxy;

  /// {@template http_status_code_307_temporaryRedirect}
  /// **temporaryRedirect = 307**.
  ///
  /// Server sent this response to directing client to get requested resource
  /// to another URI with same method that used prior request.
  ///
  /// This has the same semantic than the 302 Found HTTP response code,
  /// with the exception that the user agent must not change
  /// the HTTP method used:
  ///
  /// if a POST was used in the first request, a POST must be used
  /// in the second request.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.4.7
  ///
  /// {@endtemplate}
  static const int temporaryRedirect = HttpStatus.temporaryRedirect;

  /// {@macro http_status_code_307_temporaryRedirect}
  @Deprecated("Use [Temporary_Redirect] instead.")
  static const int Temporary_Redirect = temporaryRedirect;

  /// {@macro http_status_code_307_temporaryRedirect}
  @Deprecated("Use [Temporary_Redirect] instead.")
  static const int TEMPORARY_REDIRECT = Temporary_Redirect;

  /// {@template http_status_code_308_permanentRedirect}
  /// **permanentRedirect = 308**.
  ///
  /// This means that the resource is now permanently located at another URI,
  /// specified by the Location: HTTP Response header.
  ///
  /// This has the same semantics as the 301 Moved Permanently HTTP
  /// response code, with the exception that the user agent must not change
  /// the HTTP method used: if a POST was used in the first request,
  /// a POST must be used in the second request.
  ///
  /// https://tools.ietf.org/html/rfc7538#section-3
  ///
  /// {@endtemplate}
  static const int permanentRedirect = HttpStatus.permanentRedirect;

  /// {@macro http_status_code_308_permanentRedirect}
  @Deprecated("Use [permanentRedirect] instead.")
  static const int Permanent_Redirect = permanentRedirect;

  /// {@macro http_status_code_308_permanentRedirect}
  @Deprecated("Use [permanentRedirect] instead.")
  static const int PERMANENT_REDIRECT = Permanent_Redirect;

  /// {@template http_status_code_400_badRequest}
  /// **badRequest = 400**.
  ///
  /// This response means that server could not understand
  /// the request due to invalid syntax.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.5.1
  ///
  /// {@endtemplate}
  static const int badRequest = HttpStatus.badRequest;

  /// {@macro http_status_code_400_badRequest}
  @Deprecated("Use [badRequest] instead.")
  static const int Bad_Request = badRequest;

  /// {@macro http_status_code_400_badRequest}
  @Deprecated("Use [badRequest] instead.")
  static const int BAD_REQUEST = badRequest;

  /// {@template http_status_code_401_unauthorized}
  /// **unauthorized = 401**.
  ///
  /// Although the HTTP standard specifies "unauthorized", semantically
  /// this response means "unauthenticated". That is, the client must
  /// authenticate itself to get the requested response.
  ///
  /// https://tools.ietf.org/html/rfc7235#section-3.1
  ///
  /// {@endtemplate}
  static const int unauthorized = HttpStatus.unauthorized;

  /// {@macro http_status_code_401_unauthorized}
  @Deprecated("Use [unauthorized] instead.")
  static const int Unauthorized = unauthorized;

  /// {@macro http_status_code_401_unauthorized}
  @Deprecated("Use [unauthorized] instead.")
  static const int UNAUTHORIZED = Unauthorized;

  /// {@template http_status_code_402_paymentRequired}
  /// **paymentRequired = 402**.
  ///
  /// This response code is reserved for future use. Initial aim for creating
  /// this code was using it for digital payment systems
  /// however this is not used currently.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.5.2
  ///
  /// {@endtemplate}
  static const int paymentRequired = HttpStatus.paymentRequired;

  /// {@macro http_status_code_402_paymentRequired}
  @Deprecated("Use [paymentRequired] instead.")
  static const int Payment_Required = paymentRequired;

  /// {@macro http_status_code_402_paymentRequired}
  @Deprecated("Use [paymentRequired] instead.")
  static const int PAYMENT_REQUIRED = paymentRequired;

  /// {@template http_status_code_403_forbidden}
  /// **forbidden = 403**.
  ///
  /// The client does not have access rights to the content, i.e.
  /// they are unauthorized, so server is rejecting to give proper response.
  /// Unlike 401, the client's identity is known to the server.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.5.3
  ///
  /// {@endtemplate}
  static const int forbidden = HttpStatus.forbidden;

  /// {@macro http_status_code_403_forbidden}
  @Deprecated("Use [forbidden] instead.")
  static const int Forbidden = forbidden;

  /// {@macro http_status_code_403_forbidden}
  @Deprecated("Use [forbidden] instead.")
  static const int FORBIDDEN = forbidden;

  /// {@template http_status_code_404_notFound}
  /// **notFound = 404**.
  ///
  /// The server can not find requested resource.
  ///
  /// In the browser, this means the URL is not recognized.
  /// In an API, this can also mean that the endpoint is valid but
  /// the resource itself does not exist.
  ///
  /// Servers may also send this response instead of 403 to hide
  /// the existence of a resource from an unauthorized client.
  ///
  /// This response code is probably the most famous one due to
  /// its frequent occurence on the web.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.5.4
  ///
  /// {@endtemplate}
  static const int notFound = HttpStatus.notFound;

  /// {@macro http_status_code_404_notFound}
  @Deprecated("Use [notFound] instead.")
  static const int Not_Found = notFound;

  /// {@macro http_status_code_404_notFound}
  @Deprecated("Use [notFound] instead.")
  static const int NOT_FOUND = notFound;

  /// {@template http_status_code_405_methodNotAllowed}
  /// **methodNotAllowed = 405**.
  ///
  /// The request method is known by the server but has been disabled
  /// and cannot be used. For example, an API may forbid DELETE-ing a resource.
  /// The two mandatory methods, GET and HEAD, must never be disabled and
  /// should not return this error code.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.5.5
  ///
  /// {@endtemplate}
  static const int methodNotAllowed = HttpStatus.methodNotAllowed;

  /// {@macro http_status_code_405_methodNotAllowed}
  @Deprecated("Use [methodNotAllowed] instead.")
  static const int Method_Not_Allowed = methodNotAllowed;

  /// {@macro http_status_code_405_methodNotAllowed}
  @Deprecated("Use [methodNotAllowed] instead.")
  static const int METHOD_NOT_ALLOWED = methodNotAllowed;

  /// {@template http_status_code_406_notAcceptable}
  /// **notAcceptable = 406**.
  ///
  /// This response is sent when the web server, after performing
  /// server-driven content negotiation, doesn't find any content
  /// following the criteria given by the user agent.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.5.6
  ///
  /// {@endtemplate}
  static const int notAcceptable = HttpStatus.notAcceptable;

  /// {@macro http_status_code_406_notAcceptable}
  @Deprecated("Use [notAcceptable] instead.")
  static const int Not_Acceptable = notAcceptable;

  /// {@macro http_status_code_406_notAcceptable}
  @Deprecated("Use [notAcceptable] instead.")
  static const int NOT_ACCEPTABLE = notAcceptable;

  /// {@template http_status_code_407_proxyAuthenticationRequired}
  /// **proxyAuthenticationRequired = 407**.
  ///
  /// This is similar to 401 but authentication is needed to be done by a proxy.
  ///
  /// https://tools.ietf.org/html/rfc7235#section-3.2
  ///
  /// {@endtemplate}
  static const int proxyAuthenticationRequired =
      HttpStatus.proxyAuthenticationRequired;

  /// {@macro http_status_code_407_proxyAuthenticationRequired}
  @Deprecated("Use [proxyAuthenticationRequired] instead.")
  static const int Proxy_Authentication_Required = proxyAuthenticationRequired;

  /// {@macro http_status_code_407_proxyAuthenticationRequired}
  @Deprecated("Use [proxyAuthenticationRequired] instead.")
  static const int PROXY_AUTHENTICATION_REQUIRED = proxyAuthenticationRequired;

  /// {@template http_status_code_408_requestTimeout}
  /// **requestTimeout = 408**.
  ///
  /// This response is sent on an idle connection by some servers,
  /// even without any previous request by the client.
  ///
  /// It means that the server would like to shut down this unused connection.
  ///
  /// This response is used much more since some browsers, like Chrome,
  /// Firefox 27+, or IE9, use HTTP pre-connection mechanisms
  /// to speed up surfing.
  ///
  /// Also note that some servers merely shut down the connection
  /// without sending this message.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.5.7
  ///
  /// {@endtemplate}
  static const int requestTimeout = HttpStatus.requestTimeout;

  /// {@macro http_status_code_408_requestTimeout}
  @Deprecated("Use [requestTimeout] instead.")
  static const int Request_Timeout = requestTimeout;

  /// {@macro http_status_code_408_requestTimeout}
  @Deprecated("Use [requestTimeout] instead.")
  static const int REQUEST_TIMEOUT = requestTimeout;

  /// {@template http_status_code_409_conflict}
  /// **conflict = 409**.
  ///
  /// This response is sent when a request conflicts with
  /// the current state of the server.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.5.8
  ///
  /// {@endtemplate}
  static const int conflict = HttpStatus.conflict;

  /// {@macro http_status_code_409_conflict}
  @Deprecated("Use [conflict] instead.")
  static const int Conflict = conflict;

  /// {@macro http_status_code_409_conflict}
  @Deprecated("Use [conflict] instead.")
  static const int CONFLICT = conflict;

  /// {@template http_status_code_410_gone}
  /// **gone = 410**.
  ///
  /// This response would be sent when the requested content has been
  /// permenantly deleted from server, with no forwarding address.
  ///
  /// Clients are expected to remove their caches and links to the resource.
  ///
  /// The HTTP specification intends this status code to be used for
  /// "limited-time, promotional services".
  ///
  /// APIs should not feel compelled to indicate resources that have been
  /// deleted with this status code.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.5.9
  ///
  /// {@endtemplate}
  static const int gone = HttpStatus.gone;

  /// {@macro http_status_code_410_gone}
  @Deprecated("Use [gone] instead.")
  static const int Gone = gone;

  /// {@macro http_status_code_410_gone}
  @Deprecated("Use [gone] instead.")
  static const int GONE = gone;

  /// {@template http_status_code_411_lengthRequired}
  /// **lengthRequired = 411**.
  ///
  /// The server rejected the request because the Content-Length header
  /// field is not defined and the server requires it.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.5.10
  ///
  /// {@endtemplate}
  static const int lengthRequired = HttpStatus.lengthRequired;

  /// {@macro http_status_code_411_lengthRequired}
  @Deprecated("Use [lengthRequired] instead.")
  static const int Length_Required = lengthRequired;

  /// {@macro http_status_code_411_lengthRequired}
  @Deprecated("Use [lengthRequired] instead.")
  static const int LENGTH_REQUIRED = lengthRequired;

  /// {@template http_status_code_412_preconditionFailed}
  /// **preconditionFailed = 412**.
  ///
  /// The client has indicated preconditions in its headers
  /// which the server does not meet.
  ///
  /// https://tools.ietf.org/html/rfc7232#section-4.2
  ///
  /// {@endtemplate}
  static const int preconditionFailed = HttpStatus.preconditionFailed;

  /// {@macro http_status_code_412_preconditionFailed}
  @Deprecated("Use [preconditionFailed] instead.")
  static const int Precondition_Failed = preconditionFailed;

  /// {@macro http_status_code_412_preconditionFailed}
  @Deprecated("Use [preconditionFailed] instead.")
  static const int PRECONDITION_FAILED = preconditionFailed;

  /// {@template http_status_code_413_requestEntityTooLarge}
  /// **requestEntityTooLarge = 413**.
  ///
  /// Request entity is larger than limits defined by server; the server
  /// might close the connection or return an Retry-After header field.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.5.11
  ///
  /// {@endtemplate}
  static const int requestEntityTooLarge = HttpStatus.requestEntityTooLarge;

  /// {@macro http_status_code_413_requestEntityTooLarge}
  @Deprecated("Use [requestEntityTooLarge] instead.")
  static const int Payload_Too_Large = requestEntityTooLarge;

  /// {@macro http_status_code_413_requestEntityTooLarge}
  @Deprecated("Use [requestEntityTooLarge] instead.")
  static const int PAYLOAD_TOO_LARGE = requestEntityTooLarge;

  /// {@macro http_status_code_413_requestEntityTooLarge}
  @Deprecated("Use [requestEntityTooLarge] instead.")
  static const int Request_Entity_Too_Large = requestEntityTooLarge;

  /// {@macro http_status_code_413_requestEntityTooLarge}
  @Deprecated("Use [requestEntityTooLarge] instead.")
  static const int REQUEST_ENTITY_TOO_LARGE = requestEntityTooLarge;

  /// {@template http_status_code_414_requestUriTooLong}
  /// **requestUriTooLong = 414**.
  ///
  /// The URI requested by the client is longer than the server is
  /// willing to interpret.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.5.12
  ///
  /// {@endtemplate}
  static const int requestUriTooLong = HttpStatus.requestUriTooLong;

  /// {@macro http_status_code_414_requestUriTooLong}
  @Deprecated("Use [requestUriTooLong] instead.")
  static const int RequestURI_Too_Long = requestUriTooLong;

  /// {@macro http_status_code_414_requestUriTooLong}
  @Deprecated("Use [requestUriTooLong] instead.")
  static const int REQUESTURI_TOO_LONG = requestUriTooLong;

  /// {@macro http_status_code_414_requestUriTooLong}
  @Deprecated("Use [requestUriTooLong] instead.")
  static const int Request_Uri_Too_Long = requestUriTooLong;

  /// {@macro http_status_code_414_requestUriTooLong}
  @Deprecated("Use [requestUriTooLong] instead.")
  static const int REQUEST_URI_TOO_LONG = requestUriTooLong;

  /// {@template http_status_code_415_unsupportedMediaType}
  /// **unsupportedMediaType = 415**.
  ///
  /// The media format of the requested data is not supported by the server,
  /// so the server is rejecting the request.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.5.13
  ///
  /// {@endtemplate}
  static const int unsupportedMediaType = HttpStatus.unsupportedMediaType;

  /// {@macro http_status_code_415_unsupportedMediaType}
  @Deprecated("Use [unsupportedMediaType] instead.")
  static const int Unsupported_Media_Type = unsupportedMediaType;

  /// {@macro http_status_code_415_unsupportedMediaType}
  @Deprecated("Use [unsupportedMediaType] instead.")
  static const int UNSUPPORTED_MEDIA_TYPE = unsupportedMediaType;

  /// {@template http_status_code_416_requestedRangeNotSatisfiable}
  /// **requestedRangeNotSatisfiable = 416**.
  ///
  /// The range specified by the Range header field in the request
  /// can't be fulfilled; it's possible that the range is outside
  /// the size of the target URI's data.
  ///
  /// https://tools.ietf.org/html/rfc7233#section-4.4
  ///
  /// {@endtemplate}
  static const int requestedRangeNotSatisfiable =
      HttpStatus.requestedRangeNotSatisfiable;

  /// {@macro http_status_code_416_requestedRangeNotSatisfiable}
  @Deprecated("Use [requestedRangeNotSatisfiable] instead.")
  static const int Requested_Range_Not_Satisfiable =
      requestedRangeNotSatisfiable;

  /// {@macro http_status_code_416_requestedRangeNotSatisfiable}
  @Deprecated("Use [requestedRangeNotSatisfiable] instead.")
  static const int REQUESTED_RANGE_NOT_SATISFIABLE =
      requestedRangeNotSatisfiable;

  /// {@template http_status_code_417_expectationFailed}
  /// **expectationFailed = 417**.
  ///
  /// This response code means the expectation indicated by the Expect
  /// request header field can't be met by the server.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.5.14
  ///
  /// {@endtemplate}
  static const int expectationFailed = HttpStatus.expectationFailed;

  /// {@macro http_status_code_417_expectationFailed}
  @Deprecated("Use [expectationFailed] instead.")
  static const int Expectation_Failed = expectationFailed;

  /// {@macro http_status_code_417_expectationFailed}
  @Deprecated("Use [expectationFailed] instead.")
  static const int EXPECTATION_FAILED = expectationFailed;

  /// {@template http_status_code_418_imATeapot}
  /// **imATeapot = 418**.
  ///
  /// Any attempt to brew coffee with a teapot should result in
  /// the error code "418 I'm a teapot".
  ///
  /// The resulting entity body MAY be short and stout.
  ///
  /// https://tools.ietf.org/html/rfc2324#section-2.3.2
  ///
  /// {@endtemplate}
  static const int imATeapot = 418;

  /// {@template http_status_code_419_insufficientSpaceOnResource}
  /// **insufficientSpaceOnResource = 419**.
  ///
  /// The 507 (Insufficient Storage) status code means the method could not
  /// be performed on the resource because the server is unable to store
  /// the representation needed to successfully complete the request.
  ///
  /// This condition is considered to be temporary.
  ///
  /// If the request which received this status code was the result
  /// of a user action, the request MUST NOT be repeated until
  /// it is requested by a separate user action.
  ///
  /// https://tools.ietf.org/html/rfc2518#section-10.6
  ///
  /// {@endtemplate}
  static const int insufficientSpaceOnResource = 419;

  /// {@template http_status_code_420_methodFailure}
  /// **methodFailure = 420**.
  ///
  /// @deprecated
  /// A deprecated response used by the Spring Framework when a method has
  /// failed.
  ///
  /// https://tools.ietf.org/rfcdiff?difftype=--hwdiff&url2=draft-ietf-webdav-protocol-06.txt
  ///
  /// {@endtemplate}
  static const int methodFailure = 420;

  /// {@template http_status_code_421_misdirectedRequest}
  /// **misdirectedRequest = 421**.
  ///
  /// This response code is used in a situation where the server is not able to
  /// produce a response for the request that has been received. This might be
  /// possible if a connection is reused or if an alternative service
  /// is selected.
  ///
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/421
  ///
  /// {@endtemplate}
  static const int misdirectedRequest = HttpStatus.misdirectedRequest;

  /// {@macro http_status_code_421_misdirectedRequest}
  @Deprecated("Use [misdirectedRequest] instead.")
  static const int Misdirected_Request = misdirectedRequest;

  /// {@macro http_status_code_421_misdirectedRequest}
  @Deprecated("Use [misdirectedRequest] instead.")
  static const int MISDIRECTED_REQUEST = misdirectedRequest;

  /// {@template http_status_code_422_unprocessableEntity}
  /// **unprocessableEntity = 422**.
  ///
  /// The request was well-formed but was unable to be followed
  /// due to semantic errors.
  ///
  /// https://tools.ietf.org/html/rfc2518#section-10.3
  ///
  /// {@endtemplate}
  static const int unprocessableEntity = HttpStatus.unprocessableEntity;

  /// {@macro http_status_code_422_unprocessableEntity}
  @Deprecated("Use [unprocessableEntity] instead.")
  static const int Unprocessable_Entity = unprocessableEntity;

  /// {@macro http_status_code_422_unprocessableEntity}
  @Deprecated("Use [unprocessableEntity] instead.")
  static const int UNPROCESSABLE_ENTITY = unprocessableEntity;

  /// {@template http_status_code_423_locked}
  /// **locked = 423**.
  ///
  /// The resource that is being accessed is locked.
  ///
  /// https://tools.ietf.org/html/rfc2518#section-10.4
  ///
  /// {@endtemplate}
  static const int locked = HttpStatus.locked;

  /// {@macro http_status_code_423_locked}
  @Deprecated("Use [locked] instead.")
  static const int Locked = locked;

  /// {@macro http_status_code_423_locked}
  @Deprecated("Use [locked] instead.")
  static const int LOCKED = locked;

  /// {@template http_status_code_424_failedDependency}
  /// **failedDependency = 424**.
  ///
  /// The request failed due to failure of a previous request.
  ///
  /// https://tools.ietf.org/html/rfc2518#section-10.5
  ///
  /// {@endtemplate}
  static const int failedDependency = HttpStatus.failedDependency;

  /// {@macro http_status_code_424_failedDependency}
  @Deprecated("Use [failedDependency] instead.")
  static const int Failed_Dependency = failedDependency;

  /// {@macro http_status_code_424_failedDependency}
  @Deprecated("Use [failedDependency] instead.")
  static const int FAILED_DEPENDENCY = failedDependency;

  /// {@template http_status_code_426_upgradeRequired}
  /// **upgradeRequired = 426**.
  ///
  /// This response code is used when the server refuses to perform the request
  /// using the current protocol but might be willing to do so after the client
  /// upgrades to a different protocol. The server sends an Upgrade header with
  /// this response to indicate the required protocol(s).
  ///
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/426
  ///
  /// {@endtemplate}
  static const int upgradeRequired = HttpStatus.upgradeRequired;

  /// {@macro http_status_code_426_upgradeRequired}
  @Deprecated("Use [upgradeRequired] instead.")
  static const int Upgrade_Required = upgradeRequired;

  /// {@macro http_status_code_426_upgradeRequired}
  @Deprecated("Use [upgradeRequired] instead.")
  static const int UPGRADE_REQUIRED = upgradeRequired;

  /// {@template http_status_code_428_preconditionRequired}
  /// **preconditionRequired = 428**.
  ///
  /// The origin server requires the request to be conditional.
  ///
  /// Intended to prevent the 'lost update' problem, where a client GETs
  /// a resource's state, modifies it, and PUTs it back to the server,
  /// when meanwhile a third party has modified the state
  /// on the server, leading to a conflict.
  ///
  /// https://tools.ietf.org/html/rfc6585#section-3
  ///
  /// {@endtemplate}
  static const int preconditionRequired = HttpStatus.preconditionRequired;

  /// {@macro http_status_code_428_preconditionRequired}
  @Deprecated("Use [preconditionRequired] instead.")
  static const int Precondition_Required = preconditionRequired;

  /// {@macro http_status_code_428_preconditionRequired}
  @Deprecated("Use [preconditionRequired] instead.")
  static const int PRECONDITION_REQUIRED = preconditionRequired;

  /// {@template http_status_code_429_tooManyRequests}
  /// **tooManyRequests = 429**.
  ///
  /// The user has sent too many requests
  /// in a given amount of time ("rate limiting").
  ///
  /// https://tools.ietf.org/html/rfc6585#section-4
  ///
  /// {@endtemplate}
  static const int tooManyRequests = HttpStatus.tooManyRequests;

  /// {@macro http_status_code_429_tooManyRequests}
  @Deprecated("Use [tooManyRequests] instead.")
  static const int Too_Many_Requests = tooManyRequests;

  /// {@macro http_status_code_429_tooManyRequests}
  @Deprecated("Use [tooManyRequests] instead.")
  static const int TOO_MANY_REQUESTS = tooManyRequests;

  /// {@template http_status_code_431_requestHeaderFieldsTooLarge}
  /// **requestHeaderFieldsTooLarge = 431**.
  ///
  /// The server is unwilling to process the request because its header fields
  /// are too large. The request MAY be resubmitted after reducing
  /// the size of the request header fields.
  ///
  /// https://tools.ietf.org/html/rfc6585#section-5
  ///
  /// {@endtemplate}
  static const int requestHeaderFieldsTooLarge =
      HttpStatus.requestHeaderFieldsTooLarge;

  /// {@macro http_status_code_431_requestHeaderFieldsTooLarge}
  @Deprecated("Use [requestHeaderFieldsTooLarge] instead.")
  static const int Request_Header_Fields_Too_Large =
      requestHeaderFieldsTooLarge;

  /// {@macro http_status_code_431_requestHeaderFieldsTooLarge}
  @Deprecated("Use [requestHeaderFieldsTooLarge] instead.")
  static const int REQUEST_HEADER_FIELDS_TOO_LARGE =
      requestHeaderFieldsTooLarge;

  /// {@template http_status_code_444_connectionClosedWithoutResponse}
  /// **connectionClosedWithoutResponse = 444**.
  ///
  /// This response code is used when the server has closed the connection
  /// without sending any response to the client. This is often used in
  /// association with a load balancer or reverse proxy.
  ///
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/444
  ///
  /// {@endtemplate}
  static const int connectionClosedWithoutResponse =
      HttpStatus.connectionClosedWithoutResponse;

  /// {@macro http_status_code_444_connectionClosedWithoutResponse}
  @Deprecated("Use [connectionClosedWithoutResponse] instead.")
  static const int Connection_Closed_Without_Response =
      connectionClosedWithoutResponse;

  /// {@macro http_status_code_444_connectionClosedWithoutResponse}
  @Deprecated("Use [connectionClosedWithoutResponse] instead.")
  static const int CONNECTION_CLOSED_WITHOUT_RESPONSE =
      connectionClosedWithoutResponse;

  /// {@template http_status_code_451_unavailableForLegalReasons}
  /// **unavailableForLegalReasons = 451**.
  ///
  /// The user-agent requested a resource that cannot legally be provided,
  /// such as a web page censored by a government.
  ///
  /// https://tools.ietf.org/html/rfc7725
  ///
  /// {@endtemplate}
  static const int unavailableForLegalReasons = 451;

  /// {@macro http_status_code_451_unavailableForLegalReasons}
  @Deprecated("Use [unavailableForLegalReasons] instead.")
  static const int Unavailable_For_Legal_Reasons = unavailableForLegalReasons;

  /// {@macro http_status_code_451_unavailableForLegalReasons}
  @Deprecated("Use [unavailableForLegalReasons] instead.")
  static const int UNAVAILABLE_FOR_LEGAL_REASONS = unavailableForLegalReasons;

  /// {@template http_status_code_499_clientClosedRequest}
  /// **clientClosedRequest = 499**.
  ///
  /// This response code is used when the client has closed the connection
  /// before the server could send a response. This is often used in
  /// association with a load balancer or reverse proxy.
  ///
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/499
  ///
  /// {@endtemplate}
  static const int clientClosedRequest = HttpStatus.clientClosedRequest;

  /// {@macro http_status_code_499_clientClosedRequest}
  @Deprecated("Use [clientClosedRequest] instead.")
  static const int Client_Closed_Request = clientClosedRequest;

  /// {@macro http_status_code_499_clientClosedRequest}
  @Deprecated("Use [clientClosedRequest] instead.")
  static const int CLIENT_CLOSED_REQUEST = clientClosedRequest;

  /// {@template http_status_code_500_internalServerError}
  /// **internalServerError = 500**.
  ///
  /// The server encountered an unexpected condition that prevented it
  /// from fulfilling the request.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.6.1
  ///
  /// {@endtemplate}
  static const int internalServerError = HttpStatus.internalServerError;

  /// {@macro http_status_code_500_internalServerError}
  @Deprecated("Use [internalServerError] instead.")
  static const int Internal_Server_Error = internalServerError;

  /// {@macro http_status_code_500_internalServerError}
  @Deprecated("Use [internalServerError] instead.")
  static const int INTERNAL_SERVER_ERROR = internalServerError;

  /// {@template http_status_code_501_notImplemented}
  /// **notImplemented = 501**.
  ///
  /// The request method is not supported by the server and cannot be handled.
  ///
  /// The only methods that servers are required to support (and therefore
  /// that must not return this code) are GET and HEAD.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.6.2
  ///
  /// {@endtemplate}
  static const int notImplemented = HttpStatus.notImplemented;

  /// {@macro http_status_code_501_notImplemented}
  @Deprecated("Use [notImplemented] instead.")
  static const int Not_Implemented = notImplemented;

  /// {@macro http_status_code_501_notImplemented}
  @Deprecated("Use [notImplemented] instead.")
  static const int NOT_IMPLEMENTED = notImplemented;

  /// {@template http_status_code_502_badGateway}
  /// **badGateway = 502**.
  ///
  /// This error response means that the server, while working as a gateway
  /// to get a response needed to handle the request, got an invalid response.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.6.3
  ///
  /// {@endtemplate}
  static const int badGateway = HttpStatus.badGateway;

  /// {@macro http_status_code_502_badGateway}
  @Deprecated("Use [badGateway] instead.")
  static const int Bad_Gateway = badGateway;

  /// {@macro http_status_code_502_badGateway}
  @Deprecated("Use [badGateway] instead.")
  static const int BAD_GATEWAY = badGateway;

  /// {@template http_status_code_503_serviceUnavailable}
  /// **serviceUnavailable = 503**.
  ///
  /// The server is not ready to handle the request.
  ///
  /// Common causes are a server that is down for maintenance or that is
  /// overloaded. Note that together with this response, a user-friendly page
  /// explaining the problem should be sent.
  ///
  /// This responses should be used for temporary conditions
  /// and the Retry-After: HTTP header should, if possible, contain
  /// the estimated time before the recovery of the service.
  ///
  /// The webmaster must also take care about the caching-related headers
  /// that are sent along with this response, as these temporary condition
  /// responses should usually not be cached.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.6.4
  ///
  /// {@endtemplate}
  static const int serviceUnavailable = HttpStatus.serviceUnavailable;

  /// {@macro http_status_code_503_serviceUnavailable}
  @Deprecated("Use [serviceUnavailable] instead.")
  static const int Service_Unavailable = serviceUnavailable;

  /// {@macro http_status_code_503_serviceUnavailable}
  @Deprecated("Use [serviceUnavailable] instead.")
  static const int SERVICE_UNAVAILABLE = serviceUnavailable;

  /// {@template http_status_code_504_gatewayTimeout}
  /// **gatewayTimeout = 504**.
  ///
  /// This error response is given when the server is acting as a gateway
  /// and cannot get a response in time.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.6.5
  ///
  /// {@endtemplate}
  static const int gatewayTimeout = HttpStatus.gatewayTimeout;

  /// {@macro http_status_code_504_gatewayTimeout}
  @Deprecated("Use [gatewayTimeout] instead.")
  static const int Gateway_Timeout = gatewayTimeout;

  /// {@macro http_status_code_504_gatewayTimeout}
  @Deprecated("Use [gatewayTimeout] instead.")
  static const int GATEWAY_TIMEOUT = gatewayTimeout;

  /// {@template http_status_code_505_httpVersionNotSupported}
  /// **httpVersionNotSupported = 505**.
  ///
  /// The HTTP version used in the request is not supported by the server.
  ///
  /// https://tools.ietf.org/html/rfc7231#section-6.6.6
  ///
  /// {@endtemplate}
  static const int httpVersionNotSupported = HttpStatus.httpVersionNotSupported;

  /// {@macro http_status_code_505_httpVersionNotSupported}
  @Deprecated("Use [httpVersionNotSupported] instead.")
  static const int HTTP_Version_Not_Supported = httpVersionNotSupported;

  /// {@macro http_status_code_505_httpVersionNotSupported}
  @Deprecated("Use [httpVersionNotSupported] instead.")
  static const int HTTP_VERSION_NOT_SUPPORTED = httpVersionNotSupported;

  /// {@template http_status_code_506_variantAlsoNegotiates}
  /// **variantAlsoNegotiates = 506**.
  ///
  /// This response code is used when the server has an internal configuration
  /// error: the chosen variant resource is configured to engage in transparent
  /// content negotiation itself, and is therefore not a proper end point in
  /// the negotiation process.
  ///
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/506
  ///
  /// {@endtemplate}
  static const int variantAlsoNegotiates = HttpStatus.variantAlsoNegotiates;

  /// {@macro http_status_code_506_variantAlsoNegotiates}
  @Deprecated("Use [variantAlsoNegotiates] instead.")
  static const int Variant_Also_Negotiates = variantAlsoNegotiates;

  /// {@macro http_status_code_506_variantAlsoNegotiates}
  @Deprecated("Use [variantAlsoNegotiates] instead.")
  static const int VARIANT_ALSO_NEGOTIATES = variantAlsoNegotiates;

  /// {@template http_status_code_507_insufficientStorage}
  /// **insufficientStorage = 507**.
  ///
  /// The server has an internal configuration error: the chosen variant
  /// resource is configured to engage in transparent content negotiation
  /// itself, and is therefore not a proper end point
  /// in the negotiation process.
  ///
  /// https://tools.ietf.org/html/rfc2518#section-10.6
  ///
  /// {@endtemplate}
  static const int insufficientStorage = HttpStatus.insufficientStorage;

  /// {@macro http_status_code_507_insufficientStorage}
  @Deprecated("Use [insufficientStorage] instead.")
  static const int Insufficient_Storage = insufficientStorage;

  /// {@macro http_status_code_507_insufficientStorage}
  @Deprecated("Use [insufficientStorage] instead.")
  static const int INSUFFICIENT_STORAGE = insufficientStorage;

  /// {@template http_status_code_508_loopDetected}
  /// **loopDetected = 508**.
  ///
  /// This response code is used when the server detected an infinite loop
  /// while processing the request.
  ///
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/508
  ///
  /// {@endtemplate}
  static const int loopDetected = HttpStatus.loopDetected;

  /// {@macro http_status_code_508_loopDetected}
  @Deprecated("Use [loopDetected] instead.")
  static const int Loop_Detected = loopDetected;

  /// {@macro http_status_code_508_loopDetected}
  @Deprecated("Use [loopDetected] instead.")
  static const int LOOP_DETECTED = loopDetected;

  /// {@template http_status_code_510_notExtended}
  /// **notExtended = 510**.
  ///
  /// This response code is used when further extensions to the request are
  /// required for the server to fulfill it.
  ///
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/510
  ///
  /// {@endtemplate}
  static const int notExtended = HttpStatus.notExtended;

  /// {@macro http_status_code_510_notExtended}
  @Deprecated("Use [notExtended] instead.")
  static const int Not_Extended = notExtended;

  /// {@macro http_status_code_510_notExtended}
  @Deprecated("Use [notExtended] instead.")
  static const int NOT_EXTENDED = notExtended;

  /// {@template http_status_code_511_networkAuthenticationRequired}
  /// **networkAuthenticationRequired = 511**.
  ///
  /// The 511 status code indicates that the client needs to authenticate
  /// to gain network access.
  ///
  /// https://tools.ietf.org/html/rfc6585#section-6
  ///
  /// {@endtemplate}
  static const int networkAuthenticationRequired = 511;

  /// {@macro http_status_code_511_networkAuthenticationRequired}
  @Deprecated("Use [networkAuthenticationRequired] instead.")
  static const int Network_Authentication_Required =
      networkAuthenticationRequired;

  /// {@macro http_status_code_511_networkAuthenticationRequired}
  @Deprecated("Use [networkAuthenticationRequired] instead.")
  static const int NETWORK_AUTHENTICATION_REQUIRED =
      networkAuthenticationRequired;

  /// {@template http_status_code_599_networkConnectTimeoutError}
  /// **networkConnectTimeoutError = 599**.
  ///
  /// This response code is used when the client fails to establish a network
  /// connection to the server within the allowed time limit.
  ///
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/599
  ///
  /// {@endtemplate}
  static const int networkConnectTimeoutError =
      HttpStatus.networkConnectTimeoutError;

  /// {@macro http_status_code_599_networkConnectTimeoutError}
  @Deprecated("Use [networkConnectTimeoutError] instead.")
  static const int Network_Connect_Timeout_Error = networkConnectTimeoutError;

  /// {@macro http_status_code_599_networkConnectTimeoutError}
  @Deprecated("Use [networkConnectTimeoutError] instead.")
  static const int NETWORK_CONNECT_TIMEOUT_ERROR = networkConnectTimeoutError;
}
