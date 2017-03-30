// Copyright (c) 2017, Era Productions. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// Each [HttpStatusCode] is described below, including a description of which
/// method(s) it can follow and any metainformation required in the response.
///
/// * __Informational 1xx__
///
///   This class of status code indicates a provisional response, consisting
///   only of the Status-Line and optional headers, and is terminated by an
///   empty line. There are no required headers for this class of status code.
///   Since __HTTP/1.0__ did not define any __1xx__ status codes, servers
///   __MUST NOT__ send a __1xx__ response to an __HTTP/1.0__ client except
///   under experimental conditions.
///
///   A client __MUST__ be prepared to accept one or more __1xx__ status
///   responses prior to a regular response, even if the client does not expect
///   a __100__ (Continue) status message. Unexpected __1xx__ status responses
///   __MAY__ be ignored by a user agent.
///
///   Proxies __MUST__ forward __1xx__ responses, unless the connection between
///   the proxy and its client has been closed, or unless the proxy itself
///   requested the generation of the __1xx__ response. (For example, if a proxy
///   adds a _"Expect: 100-continue"_ field when it forwards a request, then it
///   need not forward the corresponding __100__ (Continue) response(s).)
///
/// * __Successful 2xx__
///
///   This class of status code indicates that the client's request was
///   successfully received, understood, and accepted.
///
/// * __Redirection 3xx__
///
///   This class of status code indicates that further action needs to be taken
///   by the user agent in order to fulfill the request. The action required
///   __MAY__ be carried out by the user agent without interaction with the user
///   if and only if the method used in the second request is __GET__ or
///   __HEAD__. A client __SHOULD__ detect infinite redirection loops, since
///   such loops generate network traffic for each redirection.
///
///   > Note: previous versions of this specification recommended a maximum of
///     five redirections. Content developers should be aware that there might
///     be clients that implement such a fixed limitation.
///
/// * __Client Error 4xx__
///
///   The __4xx__ class of status code is intended for cases in which the client
///   seems to have erred. Except when responding to a __HEAD__ request, the
///   server __SHOULD__ include an entity containing an explanation of the error
///   situation, and whether it is a temporary or permanent condition. These
///   status codes are applicable to any request method. User agents __SHOULD__
///   display any included entity to the user.
///
///   If the client is sending data, a server implementation using __TCP__
///   __SHOULD__ be careful to ensure that the client acknowledges receipt of
///   the packet(s) containing the response, before the server closes the input
///   connection. If the client continues sending data to the server after the
///   close, the server's __TCP__ stack will send a reset packet to the client,
///   which may erase the client's unacknowledged input buffers before they can
///   be read and interpreted by the __HTTP__ application.
///
/// * __Server Error 5xx__
///
///   Response status codes beginning with the digit _"5"_ indicate cases in
///   which the server is aware that it has erred or is incapable of
///   performing the request. Except when responding to a __HEAD__ request,
///   the server __SHOULD__ include an entity containing an explanation of the
///   error situation, and whether it is a temporary or permanent condition.
///   User agents __SHOULD__ display any included entity to the user.
///   These response codes are applicable to any request method.
///
class HttpStatus {
  /// 100 CONTINUE
  ///
  /// The initial part of a request has been received and has not yet been
  /// rejected by the server. The server intends to send a final response after
  /// the request has been fully received and acted upon.
  ///
  /// When the request contains an Expect header field that includes a
  /// 100-continue expectation, the 100 response indicates that the server
  /// wishes to receive the request payload body1. The client ought to continue
  /// sending the request and discard the 100 response.
  /// If the request did not contain an Expect header field containing the
  /// 100-continue expectation, the client can simply discard this interim
  /// response.
  static const HttpStatus Continue =
      const HttpStatus(HttpStatusCode.Continue, 'Continue');

  /// 101 SWITCHING PROTOCOLS
  ///
  /// The server understands and is willing to comply with the client's request,
  /// via the Upgrade header field1, for a change in the application protocol
  /// being used on this connection.
  /// The server MUST generate an Upgrade header field in the response that
  /// indicates which protocol(s) will be switched to immediately after the
  /// empty line that terminates the 101 response.
  ///
  /// It is assumed that the server will only agree to switch protocols when it
  /// is advantageous to do so. For example, switching to a newer version of
  /// HTTP might be advantageous over older versions, and switching to a
  /// real-time, synchronous protocol might be advantageous when delivering
  /// resources that use such features.
  static const HttpStatus Switching_Protocols = const HttpStatus(
      HttpStatusCode.Switching_Protocols, 'Switching Protocols');

  /// 102 PROCESSING
  ///
  /// An interim response used to inform the client that the server has accepted
  /// the complete request, but has not yet completed it.
  ///
  /// This status code SHOULD only be sent when the server has a reasonable
  /// expectation that the request will take significant time to complete. As
  /// guidance, if a method is taking longer than 20 seconds (a reasonable, but
  /// arbitrary value) to process the server SHOULD return a 102 (Processing)
  /// response. The server MUST send a final response after the request has been
  /// completed.
  ///
  /// Methods can potentially take a long period of time to process, especially
  /// methods that support the Depth header. In such cases the client may
  /// time-out the connection while waiting for a response. To prevent this the
  /// server may return a 102 Processing status code to indicate to the client
  /// that the server is still processing the method.
  static const HttpStatus Processing =
      const HttpStatus(HttpStatusCode.Processing, 'Processing');

  /// 200 OK
  ///
  /// The request has succeeded.
  ///
  /// The payload sent in a 200 response depends on the request method. For the
  /// methods defined by this specification, the intended meaning of the payload
  /// can be summarized as:
  ///
  /// * GET a representation of the target resource
  ///
  /// * HEAD the same representation as GET, but without the representation data
  ///
  /// * POST a representation of the status of, or results obtained from, the
  ///   action;
  ///
  /// * PUT DELETE a representation of the status of the action;
  ///
  /// * OPTIONS a representation of the communications options;
  ///
  /// * TRACE a representation of the request message as received by the end
  ///   server.
  ///
  /// Aside from responses to CONNECT, a 200 response always has a payload,
  /// though an origin server MAY generate a payload body of zero length. If no
  /// payload is desired, an origin server ought to send 204 No Content instead.
  /// For CONNECT, no payload is allowed because the successful result is a
  /// tunnel, which begins immediately after the 200 response header section.
  ///
  /// A 200 response is cacheable by default; i.e., unless otherwise indicated
  /// by the method definition or explicit cache controls.
  static const HttpStatus OK = const HttpStatus(HttpStatusCode.OK, 'OK');

  /// 201 CREATED
  ///
  /// The request has been fulfilled and has resulted in one or more new
  /// resources being created.
  ///
  /// The primary resource created by the request is identified by either a
  /// Location header field in the response or, if no Location field is
  /// received, by the effective request URI.
  ///
  /// The 201 response payload typically describes and links to the resource(s)
  /// created. See Section 7.2 of RFC7231 for a discussion of the meaning and
  /// purpose of validator header fields, such as ETag and Last-Modified, in a
  /// 201 response.
  static const HttpStatus Created =
      const HttpStatus(HttpStatusCode.Created, 'Created');

  /// 202 ACCEPTED
  ///
  /// The request has been accepted for processing, but the processing has not
  /// been completed. The request might or might not eventually be acted upon,
  /// as it might be disallowed when processing actually takes place.
  ///
  /// There is no facility in HTTP for re-sending a status code from an
  /// asynchronous operation.
  ///
  /// The 202 response is intentionally noncommittal. Its purpose is to allow a
  /// server to accept a request for some other process (perhaps a
  /// batch-oriented process that is only run once per day) without requiring
  /// that the user agent's connection to the server persist until the process
  /// is completed. The representation sent with this response ought to describe
  /// the request's current status and point to (or embed) a status monitor that
  /// can provide the user with an estimate of when the request will be
  /// fulfilled.
  static const HttpStatus Accepted =
      const HttpStatus(HttpStatusCode.Accepted, 'Accepted');

  /// 203 NON-AUTHORITATIVE INFORMATION
  ///
  /// The request was successful but the enclosed payload has been modified from
  /// that of the origin server's 200 OK response by a transforming proxy.
  ///
  /// This status code allows the proxy to notify recipients when a
  /// transformation has been applied, since that knowledge might impact later
  /// decisions regarding the content. For example, future cache validation
  /// requests for the content might only be applicable along the same request
  /// path (through the same proxies).
  ///
  /// The 203 response is similar to the Warning code of 214 Transformation
  /// Applied, which has the advantage of being applicable to responses with any
  /// status code.
  ///
  /// A 203 response is cacheable by default; i.e., unless otherwise indicated
  /// by the method definition or explicit cache controls.
  static const HttpStatus NonAuthoritative_Information = const HttpStatus(
      HttpStatusCode.NonAuthoritative_Information,
      'Non-authoritative Information');

  /// 204 NO CONTENT
  ///
  /// The server has successfully fulfilled the request and that there is no
  /// additional content to send in the response payload body.
  ///
  /// Metadata in the response header fields refer to the target resource and
  /// its selected representation after the requested action was applied.
  ///
  /// For example, if a 204 status code is received in response to a PUT request
  /// and the response contains an ETag header field, then the PUT was
  /// successful and the ETag field-value contains the entity-tag for the new
  /// representation of that target resource.
  ///
  /// The 204 response allows a server to indicate that the action has been
  /// successfully applied to the target resource, while implying that the user
  /// agent does not need to traverse away from its current "document view"
  /// (if any). The server assumes that the user agent will provide some
  /// indication of the success to its user, in accord with its own interface,
  /// and apply any new or updated metadata in the response to its active
  /// representation.
  ///
  /// For example, a 204 status code is commonly used with document editing
  /// interfaces corresponding to a "save" action, such that the document being
  /// saved remains available to the user for editing. It is also frequently
  /// used with interfaces that expect automated data transfers to be prevalent,
  /// such as within distributed version control systems.
  ///
  /// A 204 response is terminated by the first empty line after the header
  /// fields because it cannot contain a message body.
  ///
  /// A 204 response is cacheable by default; i.e., unless otherwise indicated
  /// by the method definition or explicit cache controls.
  static const HttpStatus No_Content =
      const HttpStatus(HttpStatusCode.No_Content, 'No Content');

  /// 205 RESET CONTENT
  ///
  /// The server has fulfilled the request and desires that the user agent reset
  /// the "document view", which caused the request to be sent, to its original
  /// state as received from the origin server.
  ///
  /// This response is intended to support a common data entry use case where
  /// the user receives content that supports data entry (a form, notepad,
  /// canvas, etc.), enters or manipulates data in that space, causes the
  /// entered data to be submitted in a request, and then the data entry
  /// mechanism is reset for the next entry so that the user can easily initiate
  /// another input action.
  ///
  /// Since the 205 status code implies that no additional content will be
  /// provided, a server MUST NOT generate a payload in a 205 response. In other
  /// words, a server MUST do one of the following for a 205 response:
  ///
  /// * indicate a zero-length body for the response by including a
  ///   Content-Length header field with a value of 0;
  ///
  /// * indicate a zero-length payload for the response by including a
  ///   Transfer-Encoding header field with a value of chunked and a message body
  ///   consisting of a single chunk of zero-length; or,
  ///
  ///  * close the connection immediately after sending the blank line
  ///    terminating the header section.
  static const HttpStatus Reset_Content =
      const HttpStatus(HttpStatusCode.Reset_Content, 'Reset Content');

  /// 206 PARTIAL CONTENT
  ///
  /// The server is successfully fulfilling a range request for the target
  /// resource by transferring one or more parts of the selected representation
  /// that correspond to the satisfiable ranges found in the request's Range
  /// header field.
  ///
  /// If a single part is being transferred, the server generating the 206
  /// response MUST generate a Content-Range header field, describing what range
  /// of the selected representation is enclosed, and a payload consisting of
  /// the range. For example:
  ///
  /// ```
  /// HTTP/1.1 206 Partial Content
  /// Date: Wed, 15 Nov 1995 06:25:24 GMT
  /// Last-Modified: Wed, 15 Nov 1995 04:58:08 GMT
  /// Content-Range: bytes 21010-47021/47022
  /// Content-Length: 26012
  /// Content-Type: image/gif
  ///
  /// ... 26012 bytes of partial image data ...
  /// ```
  ///
  /// If multiple parts are being transferred, the server generating the 206
  /// response MUST generate a "multipart/byteranges" payload, and a
  /// Content-Type header field containing the multipart/byteranges media type
  /// and its required boundary parameter. To avoid confusion with single-part
  /// responses, a server MUST NOT generate a Content-Range header field in the
  /// HTTP header section of a multiple part response (this field will be sent
  /// in each part instead).
  ///
  /// Within the header area of each body part in the multipart payload, the
  /// server MUST generate a Content-Range header field corresponding to the
  /// range being enclosed in that body part. If the selected representation
  /// would have had a Content-Type header field in a 200 OK response, the
  /// server SHOULD generate that same Content-Type field in the header area of
  /// each body part. For example:
  ///
  /// ```
  /// HTTP/1.1 206 Partial Content
  /// Date: Wed, 15 Nov 1995 06:25:24 GMT
  /// Last-Modified: Wed, 15 Nov 1995 04:58:08 GMT
  /// Content-Length: 1741
  /// Content-Type: multipart/byteranges; boundary=THIS_STRING_SEPARATES
  ///
  /// --THIS_STRING_SEPARATES
  /// Content-Type: application/pdf
  /// Content-Range: bytes 500-999/8000
  ///
  /// ...the first range...
  /// --THIS_STRING_SEPARATES
  /// Content-Type: application/pdf
  /// Content-Range: bytes 7000-7999/8000
  ///
  /// ...the second range
  /// --THIS_STRING_SEPARATES--
  /// ```
  ///
  /// When multiple ranges are requested, a server MAY coalesce any of the
  /// ranges that overlap, or that are separated by a gap that is smaller than
  /// the overhead of sending multiple parts, regardless of the order in which
  /// the corresponding byte-range-spec appeared in the received Range header
  /// field. Since the typical overhead between parts of a multipart/byteranges
  /// payload is around 80 bytes, depending on the selected representation's
  /// media type and the chosen boundary parameter length, it can be less
  /// efficient to transfer many small disjoint parts than it is to transfer the
  /// entire selected representation.
  ///
  /// A server MUST NOT generate a multipart response to a request for a single
  /// range, since a client that does not request multiple parts might not
  /// support multipart responses. However, a server MAY generate a
  /// multipart/byteranges payload with only a single body part if multiple
  /// ranges were requested and only one range was found to be satisfiable or
  /// only one range remained after coalescing. A client that cannot process a
  /// multipart/byteranges response MUST NOT generate a request that asks for
  /// multiple ranges.
  ///
  /// When a multipart response payload is generated, the server SHOULD send the
  /// parts in the same order that the corresponding byte-range-spec appeared in
  /// the received Range header field, excluding those ranges that were deemed
  /// unsatisfiable or that were coalesced into other ranges. A client that
  /// receives a multipart response MUST inspect the Content-Range header field
  /// present in each body part in order to determine which range is contained
  /// in that body part; a client cannot rely on receiving the same ranges that
  /// it requested, nor the same order that it requested.
  ///
  /// When a 206 response is generated, the server MUST generate the following
  /// header fields, in addition to those required above, if the field would
  /// have been sent in a 200 OK response to the same request: Date,
  /// Cache-Control, ETag, Expires, Content-Location, and Vary.
  ///
  /// If a 206 is generated in response to a request with an If-Range header
  /// field, the sender SHOULD NOT generate other representation header fields
  /// beyond those required above, because the client is understood to already
  /// have a prior response containing those header fields. Otherwise, the
  /// sender MUST generate all of the representation header fields that would
  /// have been sent in a 200 OK response to the same request.
  ///
  /// A 206 response is cacheable by default; i.e., unless otherwise indicated
  /// by explicit cache controls.
  static const HttpStatus Partial_Content =
      const HttpStatus(HttpStatusCode.Partial_Content, 'Partial Content');

  /// 207 MULTI-STATUS
  ///
  /// A Multi-Status response conveys information about multiple resources in
  /// situations where multiple status codes might be appropriate.
  ///
  /// The default Multi-Status response body is a text/xml or application/xml
  /// HTTP entity with a 'multistatus' root element. Further elements contain
  /// 200, 300, 400, and 500 series status codes generated during the method
  /// invocation. 100 series status codes SHOULD NOT be recorded in a 'response'
  /// XML element.
  ///
  /// Although '207' is used as the overall response status code, the recipient
  /// needs to consult the contents of the multistatus response body for further
  /// information about the success or failure of the method execution. The
  /// response MAY be used in success, partial success and also in failure
  /// situations.
  ///
  /// The 'multistatus' root element holds zero or more 'response' elements in
  /// any order, each with information about an individual resource. Each
  /// 'response' element MUST have an 'href' element to identify the resource.
  ///
  /// A Multi-Status response uses one out of two distinct formats for
  /// representing the status:
  ///
  /// 1. A 'status' element as child of the 'response' element indicates the
  ///    status of the message execution for the identified resource as a whole.
  ///    Some method definitions provide information about specific status codes
  ///    clients should be prepared to see in a response. However, clients MUST be
  ///    able to handle other status codes, using the generic rules defined in
  ///    RFC2616 Section 10.
  ///
  /// 2. For PROPFIND and PROPPATCH, the format has been extended using the
  ///    'propstat' element instead of 'status', providing information about
  ///    individual properties of a resource. This format is specific to PROPFIND
  ///    and PROPPATCH, and is described in detail in RFC4918 Section 9.1 and
  ///    RFC4918 Section 9.2.
  static const HttpStatus MultiStatus =
      const HttpStatus(HttpStatusCode.MultiStatus, 'Multi-Status');

  /// 208 ALREADY REPORTED
  ///
  /// Used inside a DAV: propstat response element to avoid enumerating the
  /// internal members of multiple bindings to the same collection repeatedly.
  ///
  /// For each binding to a collection inside the request's scope, only one will
  /// be reported with a 200 status, while subsequent DAV:response elements for
  /// all other bindings will use the 208 status, and no DAV:response elements
  /// for their descendants are included.
  ///
  /// Note that the 208 status will only occur for "Depth: infinity" requests,
  /// and that it is of particular importance when the multiple collection
  /// bindings cause a bind loop.
  ///
  /// A client can request the DAV:resource-id property in a PROPFIND request to
  /// guarantee that they can accurately reconstruct the binding structure of a
  /// collection with multiple bindings to a single resource.
  ///
  /// For backward compatibility with clients not aware of the 208 status code
  /// appearing in multistatus response bodies, it SHOULD NOT be used unless the
  /// client has signaled support for this specification using the "DAV" request
  /// header. Instead, a 508 Loop Detected status should be returned when a
  /// binding loop is discovered. This allows the server to return the 508 as
  /// the top-level return status, if it discovers it before it started the
  /// response, or in the middle of a multistatus, if it discovers it in the
  /// middle of streaming out a multistatus response.
  static const HttpStatus Already_Reported =
      const HttpStatus(HttpStatusCode.Already_Reported, 'Already Reported');

  /// 226 IM USED
  ///
  /// The server has fulfilled a GET request for the resource, and the response
  /// is a representation of the result of one or more instance-manipulations
  /// applied to the current instance.
  ///
  /// The actual current instance might not be available except by combining
  /// this response with other previous or future responses, as appropriate for
  /// the specific instance-manipulation(s). If so, the headers of the resulting
  /// instance are the result of combining the headers from the 226 response and
  /// the other instances, following the rules in section 13.5.3 of the HTTP/1.1
  /// specification.
  ///
  /// The request MUST have included an A-IM header field listing at least one
  /// instance-manipulation. The response MUST include an Etag header field
  /// giving the entity tag of the current instance.
  ///
  /// A response received with a status code of 226 MAY be stored by a cache and
  /// used in reply to a subsequent request, subject to the HTTP expiration
  /// mechanism and any Cache-Control headers, and to the requirements in
  /// section 10.6.
  ///
  /// A response received with a status code of 226 MAY be used by a cache, in
  /// conjunction with a cache entry for the base instance, to create a cache
  /// entry for the current instance.
  static const HttpStatus IM_Used =
      const HttpStatus(HttpStatusCode.IM_Used, 'IM Used');

  /// 300 MULTIPLE CHOICES
  ///
  /// The target resource has more than one representation, each with its own
  /// more specific identifier, and information about the alternatives is being
  /// provided so that the user (or user agent) can select a preferred r
  /// epresentation by redirecting its request to one or more of those
  /// identifiers.
  ///
  /// In other words, the server desires that the user agent engage in reactive
  /// negotiation to select the most appropriate representation(s) for its
  /// needs.
  ///
  /// If the server has a preferred choice, the server SHOULD generate a
  /// Location header field containing a preferred choice's URI reference.
  /// The user agent MAY use the Location field value for automatic redirection.
  ///
  /// For request methods other than HEAD, the server SHOULD generate a payload
  /// in the 300 response containing a list of representation metadata and URI
  /// reference(s) from which the user or user agent can choose the one most
  /// preferred. The user agent MAY make a selection from that list
  /// automatically if it understands the provided media type. A specific forma
  /// t for automatic selection is not defined by this specification because
  /// HTTP tries to remain orthogonal to the definition of its payloads.
  /// In practice, the representation is provided in some easily parsed format
  /// believed to be acceptable to the user agent, as determined by shared
  /// design or content negotiation, or in some commonly accepted hypertext
  /// format.
  ///
  /// A 300 response is cacheable by default; i.e., unless otherwise indicated
  /// by the method definition or explicit cache controls.
  ///
  /// Note: The original proposal for the 300 status code defined the URI header
  /// field as providing a list of alternative representations, such that it
  /// would be usable for 200, 300, and 406 responses and be transferred in
  /// responses to the HEAD method. However, lack of deployment and disagreement
  /// over syntax led to both URI and Alternates (a subsequent proposal) being
  /// dropped from this specification. It is possible to communicate the list
  /// using a set of Link header fields, each with a relationship of
  /// "alternate", though deployment is a chicken-and-egg problem.
  static const HttpStatus Multiple_Choices =
      const HttpStatus(HttpStatusCode.Multiple_Choices, 'Multiple Choices');

  /// 301 MOVED PERMANENTLY
  ///
  /// The target resource has been assigned a new permanent URI and any future
  /// references to this resource ought to use one of the enclosed URIs.
  ///
  /// Clients with link-editing capabilities ought to automatically re-link
  /// references to the effective request URI to one or more of the new
  /// references sent by the server, where possible.
  ///
  /// The server SHOULD generate a Location header field in the response
  /// containing a preferred URI reference for the new permanent URI. The user
  /// agent MAY use the Location field value for automatic redirection. The
  /// server's response payload usually contains a short hypertext note with a
  /// hyperlink to the new URI(s).
  ///
  /// Note: For historical reasons, a user agent MAY change the request method
  /// from POST to GET for the subsequent request. If this behavior is
  /// undesired, the 307 Temporary Redirect status code can be used instead.
  ///
  /// A 301 response is cacheable by default; i.e., unless otherwise indicated
  /// by the method definition or explicit cache controls.
  static const HttpStatus Moved_Permanently =
      const HttpStatus(HttpStatusCode.Moved_Permanently, 'Moved Permanently');

  /// 302 FOUND
  ///
  /// The target resource resides temporarily under a different URI. Since the
  /// redirection might be altered on occasion, the client ought to continue to
  /// use the effective request URI for future requests.
  ///
  /// The server SHOULD generate a Location header field in the response
  /// containing a URI reference for the different URI. The user agent MAY use
  /// the Location field value for automatic redirection. The server's response
  /// payload usually contains a short hypertext note with a hyperlink to the
  /// different URI(s).
  ///
  /// Note: For historical reasons, a user agent MAY change the request method
  /// from POST to GET for the subsequent request. If this behavior is
  /// undesired, the 307 Temporary Redirect status code can be used instead.
  static const HttpStatus Found =
      const HttpStatus(HttpStatusCode.Found, 'Found');

  /// 303 SEE OTHER
  ///
  /// The server is redirecting the user agent to a different resource, as
  /// indicated by a URI in the Location header field, which is intended to
  /// provide an indirect response to the original request.
  ///
  /// A user agent can perform a retrieval request targeting that URI (a GET or
  /// HEAD request if using HTTP), which might also be redirected, and present
  /// the eventual result as an answer to the original request. Note that the
  /// new URI in the Location header field is not considered equivalent to the
  /// effective request URI.
  ///
  /// This status code is applicable to any HTTP method. It is primarily used to
  /// allow the output of a POST action to redirect the user agent to a selected
  /// resource, since doing so provides the information corresponding to the
  /// POST response in a form that can be separately identified, bookmarked, and
  /// cached, independent of the original request.
  ///
  /// A 303 response to a GET request indicates that the origin server does not
  /// have a representation of the target resource that can be transferred by
  /// the server over HTTP. However, the Location field value refers to a
  /// resource that is descriptive of the target resource, such that making a
  /// retrieval request on that other resource might result in a representation
  /// that is useful to recipients without implying that it represents the
  /// original target resource. Note that answers to the questions of what can
  /// be represented, what representations are adequate, and what might be a
  /// useful description are outside the scope of HTTP.
  ///
  /// Except for responses to a HEAD request, the representation of a 303
  /// response ought to contain a short hypertext note with a hyperlink to the
  /// same URI reference provided in the Location header field.
  static const HttpStatus See_Other =
      const HttpStatus(HttpStatusCode.See_Other, 'See Other');

  /// A conditional GET or HEAD request has been received and would have
  /// resulted in a 200 OK response if it were not for the fact that the
  /// condition evaluated to false.
  ///
  /// In other words, there is no need for the server to transfer a
  /// representation of the target resource because the request indicates that
  /// the client, which made the request conditional, already has a valid
  /// representation; the server is therefore redirecting the client to make use
  /// of that stored representation as if it were the payload of a 200 OK
  /// response.
  ///
  /// The server generating a 304 response MUST generate any of the following
  /// header fields that would have been sent in a 200 OK response to the same
  /// request: Cache-Control, Content-Location, Date, ETag, Expires, and Vary.
  ///
  /// Since the goal of a 304 response is to minimize information transfer when
  /// the recipient already has one or more cached representations, a sender
  /// SHOULD NOT generate representation metadata other than the above listed
  /// fields unless said metadata exists for the purpose of guiding cache
  /// updates (e.g., Last-Modified might be useful if the response does not have
  /// an ETag field).
  ///
  /// Requirements on a cache that receives a 304 response are defined in
  /// Section 4.3.4 of RFC7234. If the conditional request originated with an
  /// outbound client, such as a user agent with its own cache sending a
  /// conditional GET to a shared proxy, then the proxy SHOULD forward the 304
  /// response to that client.
  ///
  /// A 304 response cannot contain a message-body; it is always terminated by
  /// the first empty line after the header fields.
  static const HttpStatus Not_Modified =
      const HttpStatus(HttpStatusCode.Not_Modified, 'Not Modified');

  /// 305 USE PROXY
  ///
  /// Defined in a previous version of this specification and is now deprecated, due
  /// to security concerns regarding in-band configuration of a proxy.
  static const HttpStatus Use_Proxy =
      const HttpStatus(HttpStatusCode.Use_Proxy, 'Use Proxy');

  /// 307 TEMPORARY REDIRECT
  ///
  /// The target resource resides temporarily under a different URI and the user
  /// agent MUST NOT change the request method if it performs an automatic
  /// redirection to that URI.
  ///
  /// Since the redirection can change over time, the client ought to continue
  /// using the original effective request URI for future requests.
  ///
  /// The server SHOULD generate a Location header field in the response
  /// containing a URI reference for the different URI. The user agent MAY use
  /// the Location field value for automatic redirection. The server's response
  /// payload usually contains a short hypertext note with a hyperlink to the
  /// different URI(s).
  ///
  /// Note: This status code is similar to 302 Found, except that it does not
  /// allow changing the request method from POST to GET. This specification
  /// defines no equivalent counterpart for 301 Moved Permanently (RFC7238,
  /// however, proposes defining the status code 308 Permanent Redirect for this
  /// purpose).
  static const HttpStatus Temporary_Redirect =
      const HttpStatus(HttpStatusCode.Temporary_Redirect, 'Temporary Redirect');

  /// 308 PERMANENT REDIRECT
  ///
  /// The target resource has been assigned a new permanent URI and any future
  /// references to this resource ought to use one of the enclosed URIs.
  ///
  /// Clients with link editing capabilities ought to automatically re-link
  /// references to the effective request URI to one or more of the new
  /// references sent by the server, where possible.
  ///
  /// The server SHOULD generate a Location header field in the response
  /// containing a preferred URI reference for the new permanent URI. The user
  /// agent MAY use the Location field value for automatic redirection. The
  /// server's response payload usually contains a short hypertext note with a
  /// hyperlink to the new URI(s).
  ///
  /// A 308 response is cacheable by default; i.e., unless otherwise indicated
  /// by the method definition or explicit cache controls.
  ///
  /// Note: This status code is similar to 301 Moved Permanently, except that it
  /// does not allow changing the request method from POST to GET.
  static const HttpStatus Permanent_Redirect =
      const HttpStatus(HttpStatusCode.Permanent_Redirect, 'Permanent Redirect');

  /// 400 BAD REQUEST
  ///
  /// The server cannot or will not process the request due to something that is
  /// perceived to be a client error (e.g., malformed request syntax, invalid
  /// request message framing, or deceptive request routing).
  static const HttpStatus Bad_Request =
      const HttpStatus(HttpStatusCode.Bad_Request, 'Bad Request');

  /// 401 UNAUTHORIZED
  ///
  /// The request has not been applied because it lacks valid authentication
  /// credentials for the target resource.
  ///
  /// The server generating a 401 response MUST send a WWW-Authenticate header
  /// field containing at least one challenge applicable to the target resource.
  ///
  /// If the request included authentication credentials, then the 401 response
  /// indicates that authorization has been refused for those credentials. The
  /// user agent MAY repeat the request with a new or replaced Authorization
  /// header field2. If the 401 response contains the same challenge as the
  /// prior response, and the user agent has already attempted authentication at
  /// least once, then the user agent SHOULD present the enclosed representation
  /// to the user, since it usually contains relevant diagnostic information.
  static const HttpStatus Unauthorized =
      const HttpStatus(HttpStatusCode.Unauthorized, 'Unauthorized');

  /// 402 PAYMENT REQUIRED
  ///
  /// Reserved for future use.
  static const HttpStatus Payment_Required =
      const HttpStatus(HttpStatusCode.Payment_Required, 'Payment Required');

  /// 403 FORBIDDEN
  ///
  /// The server understood the request but refuses to authorize it.
  ///
  /// A server that wishes to make public why the request has been forbidden can
  /// describe that reason in the response payload (if any).
  ///
  /// If authentication credentials were provided in the request, the server
  /// considers them insufficient to grant access. The client SHOULD NOT
  /// automatically repeat the request with the same credentials. The client MAY
  /// repeat the request with new or different credentials. However, a request
  /// might be forbidden for reasons unrelated to the credentials.
  ///
  /// An origin server that wishes to "hide" the current existence of a
  /// forbidden target resource MAY instead respond with a status code of 404
  /// Not Found.
  static const HttpStatus Forbidden =
      const HttpStatus(HttpStatusCode.Forbidden, 'Forbidden');

  /// 404 NOT FOUND
  ///
  /// The origin server did not find a current representation for the target
  /// resource or is not willing to disclose that one exists.
  ///
  /// A 404 status code does not indicate whether this lack of representation is
  /// temporary or permanent; the 410 Gone status code is preferred over 404 if
  /// the origin server knows, presumably through some configurable means, that
  /// the condition is likely to be permanent.
  ///
  /// A 404 response is cacheable by default; i.e., unless otherwise indicated
  /// by the method definition or explicit cache controls.
  static const HttpStatus Not_Found =
      const HttpStatus(HttpStatusCode.Not_Found, 'Not Found');

  /// 405 METHOD NOT ALLOWED
  ///
  /// The method received in the request-line is known by the origin server but
  /// not supported by the target resource.
  ///
  /// The origin server MUST generate an Allow header field in a 405 response
  /// containing a list of the target resource's currently supported methods.
  ///
  /// A 405 response is cacheable by default; i.e., unless otherwise indicated
  /// by the method definition or explicit cache controls.
  static const HttpStatus Method_Not_Allowed =
      const HttpStatus(HttpStatusCode.Method_Not_Allowed, 'Method Not Allowed');

  /// 406 NOT ACCEPTABLE
  ///
  /// The target resource does not have a current representation that would be
  /// acceptable to the user agent, according to the proactive negotiation
  /// header fields received in the request1, and the server is unwilling to
  /// supply a default representation.
  ///
  /// The server SHOULD generate a payload containing a list of available
  /// representation characteristics and corresponding resource identifiers from
  /// which the user or user agent can choose the one most appropriate. A user
  /// agent MAY automatically select the most appropriate choice from that list.
  /// However, this specification does not define any standard for such
  /// automatic selection, as described in RFC7231 Section 6.4.1.
  static const HttpStatus Not_Acceptable =
      const HttpStatus(HttpStatusCode.Not_Acceptable, 'Not Acceptable');

  /// 407 PROXY AUTHENTICATION REQUIRED
  ///
  /// Similar to 401 Unauthorized, but it indicates that the client needs to
  /// authenticate itself in order to use a proxy.
  ///
  /// The proxy MUST send a Proxy-Authenticate header field containing a
  /// challenge applicable to that proxy for the target resource. The client MAY
  /// repeat the request with a new or replaced Proxy-Authorization header
  /// field.
  static const HttpStatus Proxy_Authentication_Required = const HttpStatus(
      HttpStatusCode.Proxy_Authentication_Required,
      'Proxy Authentication Required');

  /// 408 REQUEST TIMEOUT
  ///
  /// The server did not receive a complete request message within the time that
  /// it was prepared to wait.
  ///
  /// A server SHOULD send the "close" connection option in the response, since
  /// 408 implies that the server has decided to close the connection rather
  /// than continue waiting. If the client has an outstanding request in
  /// transit, the client MAY repeat that request on a new connection.
  static const HttpStatus Request_Timeout =
      const HttpStatus(HttpStatusCode.Request_Timeout, 'Request Timeout');

  /// 409 CONFLICT
  ///
  /// The request could not be completed due to a conflict with the current
  /// state of the target resource. This code is used in situations where the
  /// user might be able to resolve the conflict and resubmit the request.
  ///
  /// The server SHOULD generate a payload that includes enough information for
  /// a user to recognize the source of the conflict.
  ///
  /// Conflicts are most likely to occur in response to a PUT request. For
  /// example, if versioning were being used and the representation being PUT
  /// included changes to a resource that conflict with those made by an earlier
  /// (third-party) request, the origin server might use a 409 response to
  /// indicate that it can't complete the request. In this case, the response
  /// representation would likely contain information useful for merging the
  /// differences based on the revision history.
  static const HttpStatus Conflict =
      const HttpStatus(HttpStatusCode.Conflict, 'Conflict');

  /// 410 GONE
  ///
  /// The target resource is no longer available at the origin server and that
  /// this condition is likely to be permanent.
  ///
  /// If the origin server does not know, or has no facility to determine,
  /// whether or not the condition is permanent, the status code 404 Not Found
  /// ought to be used instead.
  ///
  /// The 410 response is primarily intended to assist the task of web
  /// maintenance by notifying the recipient that the resource is intentionally
  /// unavailable and that the server owners desire that remote links to that
  /// resource be removed. Such an event is common for limited-time, promotional
  /// services and for resources belonging to individuals no longer associated
  /// with the origin server's site. It is not necessary to mark all permanently
  /// unavailable resources as "gone" or to keep the mark for any length of time
  /// -- that is left to the discretion of the server owner.
  ///
  /// A 410 response is cacheable by default; i.e., unless otherwise indicated
  /// by the method definition or explicit cache controls.
  static const HttpStatus Gone = const HttpStatus(HttpStatusCode.Gone, 'Gone');

  /// 411 LENGTH REQUIRED
  ///
  /// The server refuses to accept the request without a defined Content-Length.
  ///
  /// The client MAY repeat the request if it adds a valid Content-Length header
  /// field containing the length of the message body in the request message.
  static const HttpStatus Length_Required =
      const HttpStatus(HttpStatusCode.Length_Required, 'Length Required');

  /// 412 PRECONDITION FAILED
  ///
  /// One or more conditions given in the request header fields evaluated to
  /// false when tested on the server.
  ///
  /// This response code allows the client to place preconditions on the current
  /// resource state (its current representations and metadata) and, thus,
  /// prevent the request method from being applied if the target resource is in
  /// an unexpected state.
  static const HttpStatus Precondition_Failed = const HttpStatus(
      HttpStatusCode.Precondition_Failed, 'Precondition Failed');

  /// 413 PAYLOAD TOO LARGE
  ///
  /// The server is refusing to process a request because the request payload is
  /// larger than the server is willing or able to process.
  ///
  /// The server MAY close the connection to prevent the client from continuing
  /// the request.
  ///
  /// If the condition is temporary, the server SHOULD generate a Retry-After
  /// header field to indicate that it is temporary and after what time the
  /// client MAY try again.
  static const HttpStatus Payload_Too_Large =
      const HttpStatus(HttpStatusCode.Payload_Too_Large, 'Payload Too Large');

  /// 414 REQUEST-URI TOO LONG
  ///
  /// The server is refusing to service the request because the request-target
  /// is longer than the server is willing to interpret.
  ///
  /// This rare condition is only likely to occur when a client has improperly
  /// converted a POST request to a GET request with long query information,
  /// when the client has descended into a "black hole" of redirection (e.g., a
  /// redirected URI prefix that points to a suffix of itself) or when the
  /// server is under attack by a client attempting to exploit potential
  /// security holes.
  ///
  /// A 414 response is cacheable by default; i.e., unless otherwise indicated
  /// by the method definition or explicit cache controls.
  static const HttpStatus RequestURI_Too_Long = const HttpStatus(
      HttpStatusCode.RequestURI_Too_Long, 'Request-URI Too Long');

  /// 415 UNSUPPORTED MEDIA TYPE
  ///
  /// The origin server is refusing to service the request because the payload
  /// is in a format not supported by this method on the target resource.
  ///
  /// The format problem might be due to the request's indicated Content-Type or
  /// Content-Encoding, or as a result of inspecting the data directly.
  static const HttpStatus Unsupported_Media_Type = const HttpStatus(
      HttpStatusCode.Unsupported_Media_Type, 'Unsupported Media Type');

  /// 416 REQUESTED RANGE NOT SATISFIABLE
  ///
  /// None of the ranges in the request's Range header field overlap the current
  /// extent of the selected resource or that the set of ranges requested has
  /// been rejected due to invalid ranges or an excessive request of small or
  /// overlapping ranges.
  ///
  /// For byte ranges, failing to overlap the current extent means that the
  /// first-byte-pos of all of the byte-range-spec values were greater than the
  /// current length of the selected representation. When this status code is
  /// generated in response to a byte-range request, the sender SHOULD generate
  /// a Content-Range header field specifying the current length of the selected
  /// representation.
  ///
  /// For example:
  ///
  /// ```
  /// HTTP/1.1 416 Range Not Satisfiable
  /// Date: Fri, 20 Jan 2012 15:41:54 GMT
  /// Content-Range: bytes */47022
  /// ```
  ///
  /// Note: Because servers are free to ignore Range, many implementations will
  /// simply respond with the entire selected representation in a 200 OK
  /// response. That is partly because most clients are prepared to receive a
  /// 200 OK to complete the task (albeit less efficiently) and partly because
  /// clients might not stop making an invalid partial request until they have
  /// received a complete representation. Thus, clients cannot depend on
  /// receiving a 416 Range Not Satisfiable response even when it is most
  /// appropriate.
  static const HttpStatus Requested_Range_Not_Satisfiable = const HttpStatus(
      HttpStatusCode.Requested_Range_Not_Satisfiable,
      'Requested Range Not Satisfiable');

  /// 417 EXPECTATION FAILED
  /// The expectation given in the request's Expect header field could not be
  /// met by at least one of the inbound servers.
  static const HttpStatus Expectation_Failed =
      const HttpStatus(417, 'Expectation Failed');

  /// 421 MISDIRECTED REQUEST
  ///
  /// The request was directed at a server that is not able to produce a
  /// response. This can be sent by a server that is not configured to produce
  /// responses for the combination of scheme and authority that are included in
  /// the request URI.
  ///
  /// Clients receiving a 421 Misdirected Request response from a server MAY
  /// retry the request -- whether the request method is idempotent or not --
  /// over a different connection. This is possible if a connection is reused or
  /// if an alternative service is selected ALT-SVC.
  ///
  /// This status code MUST NOT be generated by proxies.
  ///
  /// A 421 response is cacheable by default, i.e., unless otherwise indicated
  /// by the method definition or explicit cache controls.
  static const HttpStatus Misdirected_Request = const HttpStatus(
      HttpStatusCode.Misdirected_Request, 'Misdirected Request');

  /// 422 UNPROCESSABLE ENTITY
  ///
  /// The server understands the content type of the request entity (hence a 415
  /// Unsupported Media Type status code is inappropriate), and the syntax of
  /// the request entity is correct (thus a 400 Bad Request status code is
  /// inappropriate) but was unable to process the contained instructions.
  ///
  /// For example, this error condition may occur if an XML request body
  /// contains well-formed (i.e., syntactically correct), but semantically
  /// erroneous, XML instructions.
  static const HttpStatus Unprocessable_Entity = const HttpStatus(
      HttpStatusCode.Unprocessable_Entity, 'Unprocessable Entity');

  /// 423 LOCKED
  ///
  /// The source or destination resource of a method is locked.
  ///
  /// This response SHOULD contain an appropriate precondition or postcondition
  /// code, such as 'lock-token-submitted' or 'no-conflicting-lock'.
  static const HttpStatus Locked =
      const HttpStatus(HttpStatusCode.Locked, 'Locked');

  /// 424 FAILED DEPENDENCY
  ///
  /// The method could not be performed on the resource because the requested
  /// action depended on another action and that action failed.
  ///
  /// For example, if a command in a PROPPATCH method fails, then, at minimum,
  /// the rest of the commands will also fail with 424 Failed Dependency.
  static const HttpStatus Failed_Dependency =
      const HttpStatus(HttpStatusCode.Failed_Dependency, 'Failed Dependency');

  /// 426 UPGRADE REQUIRED
  ///
  /// The server refuses to perform the request using the current protocol but
  /// might be willing to do so after the client upgrades to a different
  /// protocol.
  ///
  /// The server MUST send an Upgrade header field in a 426 response to indicate
  /// the required protocol(s)
  ///
  /// Example:
  ///
  /// ```
  /// HTTP/1.1 426 Upgrade Required
  /// Upgrade: HTTP/3.0
  /// Connection: Upgrade
  /// Content-Length: 53
  /// Content-Type: text/plain
  ///
  /// This service requires use of the HTTP/3.0 protocol.
  /// ```
  static const HttpStatus Upgrade_Required =
      const HttpStatus(HttpStatusCode.Upgrade_Required, 'Upgrade Required');

  /// 428 PRECONDITION REQUIRED
  ///
  /// The origin server requires the request to be conditional.
  ///
  /// Its typical use is to avoid the "lost update" problem, where a client GETs
  /// a resource's state, modifies it, and PUTs it back to the server, when
  /// meanwhile a third party has modified the state on the server, leading to a
  /// conflict. By requiring requests to be conditional, the server can assure
  /// that clients are working with the correct copies.
  ///
  /// Responses using this status code SHOULD explain how to resubmit the
  /// request successfully. For example:
  ///
  /// ```
  /// HTTP/1.1 428 Precondition Required
  /// Content-Type: text/html
  /// <html>
  ///   <head>
  ///     <title>Precondition Required</title>
  ///   </head>
  ///   <body>
  ///     <h1>Precondition Required</h1>
  ///     <p>This request is required to be conditional; try using "If-Match".
  ///     </p>
  ///   </body>
  /// </html>
  /// ```
  ///
  /// Responses with the 428 status code MUST NOT be stored by a cache.
  static const HttpStatus Precondition_Required = const HttpStatus(
      HttpStatusCode.Precondition_Required, 'Precondition Required');

  /// 429 TOO MANY REQUESTS
  ///
  /// The user has sent too many requests in a given amount of time
  /// ("rate limiting").
  ///
  /// The response representations SHOULD include details explaining the
  /// condition, and MAY include a Retry-After header indicating how long to
  /// wait before making a new request.
  ///
  /// For example:
  ///
  /// ```
  /// HTTP/1.1 429 Too Many Requests
  /// Content-Type: text/html
  /// Retry-After: 3600
  ///
  /// <html>
  ///   <head>
  ///     <title>Too Many Requests</title>
  ///   </head>
  ///   <body>
  ///     <h1>Too Many Requests</h1>
  ///     <p>I only allow 50 requests per hour to this Web site per logged in
  ///     user. Try again soon.</p>
  ///   </body>
  /// </html>
  /// ```
  ///
  /// Note that this specification does not define how the origin server
  /// identifies the user, nor how it counts requests. For example, an origin
  /// server that is limiting request rates can do so based upon counts of
  /// requests on a per-resource basis, across the entire server, or even among
  /// a set of servers. Likewise, it might identify the user by its
  /// authentication credentials, or a stateful cookie.
  ///
  /// Responses with the 429 status code MUST NOT be stored by a cache.
  static const HttpStatus Too_Many_Requests =
      const HttpStatus(HttpStatusCode.Too_Many_Requests, 'Too Many Requests');

  /// 431 REQUEST HEADER FIELDS TOO LARGE
  ///
  /// The server is unwilling to process the request because its header fields
  /// are too large. The request MAY be resubmitted after reducing the size of
  /// the request header fields.
  ///
  /// It can be used both when the set of request header fields in total is too
  /// large, and when a single header field is at fault. In the latter case, the
  /// response representation SHOULD specify which header field was too large.
  ///
  /// For example:
  ///
  /// ```
  /// HTTP/1.1 431 Request Header Fields Too Large
  /// Content-Type: text/html
  ///
  /// <html>
  ///   <head>
  ///     <title>Request Header Fields Too Large</title>
  ///   </head>
  ///   <body>
  ///     <h1>Request Header Fields Too Large</h1>
  ///     <p>The "Example" header was too large.</p>
  ///   </body>
  /// </html>
  /// ```
  ///
  /// Responses with the 431 status code MUST NOT be stored by a cache.
  static const HttpStatus Request_Header_Fields_Too_Large = const HttpStatus(
      HttpStatusCode.Request_Header_Fields_Too_Large,
      'Request Header Fields Too Large');

  /// 444 CONNECTION CLOSED WITHOUT RESPONSE
  ///
  /// A non-standard status code used to instruct nginx to close the connection
  /// without sending a response to the client, most commonly used to deny
  /// malicious or malformed requests.
  ///
  /// This status code is not seen by the client, it only appears in nginx log files.
  static const HttpStatus Connection_Closed_Without_Response = const HttpStatus(
      HttpStatusCode.Connection_Closed_Without_Response,
      'Connection Closed Without Response');

  /// 451 UNAVAILABLE FOR LEGAL REASONS
  ///
  /// The server is denying access to the resource as a consequence of a legal
  /// demand.
  ///
  /// The server in question might not be an origin server. This type of legal
  /// demand typically most directly affects the operations of ISPs and search
  /// engines.
  ///
  /// Responses using this status code SHOULD include an explanation, in the
  /// response body, of the details of the legal demand: the party making it,
  /// the applicable legislation or regulation, and what classes of person and
  /// resource it applies to. For example:
  ///
  /// ```
  /// HTTP/1.1 451 Unavailable For Legal Reasons
  /// Link: <https://spqr.example.org/legislatione>; rel="blocked-by"
  /// Content-Type: text/html
  ///
  /// <html>
  ///   <head>
  ///     <title>Unavailable For Legal Reasons</title>
  ///   </head>
  ///   <body>
  ///     <h1>Unavailable For Legal Reasons</h1>
  ///     <p>This request may not be serviced in the Roman Province of Judea due
  ///     to the Lex Julia Majestatis, which disallowsaccess to resources hosted
  ///     on servers deemed to be operated by the People's Front of Judea.</p>
  ///   </body>
  /// </html>
  /// ```
  ///
  /// The use of the 451 status code implies neither the existence nor
  /// non-existence of the resource named in the request. That is to say, it is
  /// possible that if the legal demands were removed, a request for the
  /// resource still might not succeed.
  ///
  /// Note that in many cases clients can still access the denied resource by
  /// using technical countermeasures such as a VPN or the Tor network.
  ///
  /// A 451 response is cacheable by default; i.e., unless otherwise indicated
  /// by the method definition or explicit cache controls; see RFC7234.
  static const HttpStatus Unavailable_For_Legal_Reasons = const HttpStatus(
      HttpStatusCode.Unavailable_For_Legal_Reasons,
      'Unavailable For Legal Reasons');

  /// 499 CLIENT CLOSED REQUEST
  ///
  /// A non-standard status code introduced by nginx for the case when a client
  /// closes the connection while nginx is processing the request.
  static const HttpStatus Client_Closed_Request = const HttpStatus(
      HttpStatusCode.Client_Closed_Request, 'Client Closed Request');

  /// 500 INTERNAL SERVER ERROR
  ///
  /// The server encountered an unexpected condition that prevented it from
  /// fulfilling the request.
  static const HttpStatus Internal_Server_Error = const HttpStatus(
      HttpStatusCode.Internal_Server_Error, 'Internal Server Error');

  /// 501 NOT IMPLEMENTED
  ///
  /// The server does not support the functionality required to fulfill the
  /// request.
  ///
  /// This is the appropriate response when the server does not recognize the
  /// request method and is not capable of supporting it for any resource.
  ///
  /// A 501 response is cacheable by default; i.e., unless otherwise indicated
  /// by the method definition or explicit cache controls.
  static const HttpStatus Not_Implemented =
      const HttpStatus(HttpStatusCode.Not_Implemented, 'Not Implemented');

  /// 502 BAD GATEWAY
  ///
  /// The server, while acting as a gateway or proxy, received an invalid
  /// response from an inbound server it accessed while attempting to fulfill
  /// the request.
  static const HttpStatus Bad_Gateway =
      const HttpStatus(HttpStatusCode.Bad_Gateway, 'Bad Gateway');

  /// 503 SERVICE UNAVAILABLE
  ///
  /// The server is currently unable to handle the request due to a temporary
  /// overload or scheduled maintenance, which will likely be alleviated after
  /// some delay.
  ///
  /// The server MAY send a Retry-After header field to suggest an appropriate
  /// amount of time for the client to wait before retrying the request.
  ///
  /// Note: The existence of the 503 status code does not imply that a server
  /// has to use it when becoming overloaded. Some servers might simply refuse
  /// the connection.
  static const HttpStatus Service_Unavailable = const HttpStatus(
      HttpStatusCode.Service_Unavailable, 'Service Unavailable');

  /// 504 GATEWAY TIMEOUT
  ///
  /// The server, while acting as a gateway or proxy, did not receive a timely
  /// response from an upstream server it needed to access in order to complete
  /// the request.
  static const HttpStatus Gateway_Timeout =
      const HttpStatus(HttpStatusCode.Gateway_Timeout, 'Gateway Timeout');

  /// 505 HTTP VERSION NOT SUPPORTED
  ///
  /// The server does not support, or refuses to support, the major version of
  /// HTTP that was used in the request message.
  ///
  /// The server is indicating that it is unable or unwilling to complete the
  /// request using the same major version as the client, as described in
  /// Section 2.6 of RFC7230, other than with this error message. The server
  /// SHOULD generate a representation for the 505 response that describes why
  /// that version is not supported and what other protocols are supported by
  /// that server.
  static const HttpStatus HTTP_Version_Not_Supported = const HttpStatus(
      HttpStatusCode.HTTP_Version_Not_Supported, 'HTTP Version Not Supported');

  /// 506 VARIANT ALSO NEGOTIATES
  ///
  /// The server has an internal configuration error: the chosen variant
  /// resource is configured to engage in transparent content negotiation
  /// itself, and is therefore not a proper end point in the negotiation
  /// process.
  static const HttpStatus Variant_Also_Negotiates = const HttpStatus(
      HttpStatusCode.Variant_Also_Negotiates, 'Variant Also Negotiates');

  /// 507 INSUFFICIENT STORAGE
  ///
  /// The method could not be performed on the resource because the server is
  /// unable to store the representation needed to successfully complete the
  /// request.
  ///
  /// This condition is considered to be temporary. If the request that received
  /// this status code was the result of a user action, the request MUST NOT be
  /// repeated until it is requested by a separate user action.
  static const HttpStatus Insufficient_Storage = const HttpStatus(
      HttpStatusCode.Insufficient_Storage, 'Insufficient Storage');

  /// 508 LOOP DETECTED
  ///
  /// The server terminated an operation because it encountered an infinite loop
  /// while processing a request with "Depth: infinity". This status indicates
  /// that the entire operation failed.
  static const HttpStatus Loop_Detected =
      const HttpStatus(HttpStatusCode.Loop_Detected, 'Loop Detected');

  /// 510 NOT EXTENDED
  ///
  /// The policy for accessing the resource has not been met in the request.
  /// The server should send back all the information necessary for the client
  /// to issue an extended request.
  ///
  /// It is outside the scope of this specification to specify how the
  /// extensions inform the client.
  ///
  /// If the 510 response contains information about extensions that were not
  /// present in the initial request then the client MAY repeat the request if
  /// it has reason to believe it can fulfill the extension policy by modifying
  /// the request according to the information provided in the 510 response.
  /// Otherwise the client MAY present any entity included in the 510 response
  /// to the user, since that entity may include relevant diagnostic
  /// information.
  static const HttpStatus Not_Extended =
      const HttpStatus(HttpStatusCode.Not_Extended, 'Not Extended');

  /// 511 NETWORK AUTHENTICATION REQUIRED
  ///
  /// The client needs to authenticate to gain network access.
  ///
  /// The response representation SHOULD contain a link to a resource that
  /// allows the user to submit credentials (e.g., with an HTML form).
  ///
  /// Note that the 511 response SHOULD NOT contain a challenge or the login
  /// interface itself, because browsers would show the login interface as being
  /// associated with the originally requested URL, which may cause confusion.
  ///
  /// The 511 status SHOULD NOT be generated by origin servers; it is intended
  /// for use by intercepting proxies that are interposed as a means of
  /// controlling access to the network.
  ///
  /// Responses with the 511 status code MUST NOT be stored by a cache.
  ///
  /// The 511 status code is designed to mitigate problems caused by
  /// "captive portals" to software (especially non-browser agents) that is
  /// expecting a response from the server that a request was made to, not the
  /// intervening network infrastructure. It is not intended to encourage
  /// deployment of captive portals -- only to limit the damage caused by them.
  ///
  /// A network operator wishing to require some authentication, acceptance of
  /// terms, or other user interaction before granting access usually does so by
  /// identifying clients who have not done so ("unknown clients") using their
  /// Media Access Control (MAC) addresses.
  ///
  /// Unknown clients then have all traffic blocked, except for that on TCP port
  /// 80, which is sent to an HTTP server (the "login server") dedicated to
  /// "logging in" unknown clients, and of course traffic to the login server
  /// itself.
  ///
  /// For example, a user agent might connect to a network and make the
  /// following HTTP request on TCP port 80:
  ///
  /// ```
  /// GET /index.htm HTTP/1.1
  /// Host: www.example.com
  /// ```
  ///
  /// Upon receiving such a request, the login server would generate a 511
  /// response:
  ///
  /// ```
  /// HTTP/1.1 511 Network Authentication Required
  /// Content-Type: text/html
  ///
  /// <html>
  ///   <head>
  ///     <title>Network Authentication Required</title>
  ///     <meta http-equiv="refresh" content="0;
  ///       url=https://login.example.net/">
  ///   </head>
  ///   <body>
  ///     <p>You need to <a href="https://login.example.net/"> authenticate with
  ///     the local network</a> in order to gain access.</p>
  ///   </body>
  /// </html>
  /// ```
  ///
  /// Here, the 511 status code assures that non-browser clients will not
  /// interpret the response as being from the origin server, and the META HTML
  /// element redirects the user agent to the login server.
  static const HttpStatus Network_Authentication_Required = const HttpStatus(
      HttpStatusCode.Network_Authentication_Required,
      'Network Authentication Required');

  /// 599 NETWORK CONNECT TIMEOUT ERROR
  ///
  /// This status code is not specified in any RFCs, but is used by some HTTP
  /// proxies to signal a network connect timeout behind the proxy to a client
  /// in front of the proxy.
  static const HttpStatus Network_Connect_Timeout_Error = const HttpStatus(
      HttpStatusCode.Network_Connect_Timeout_Error,
      'Network Connect Timeout Error');

  final int code;

  final String name;

  const HttpStatus(this.code, this.name);

  @override
  int get hashCode => code.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HttpStatus &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  String toString() => 'HttpStatus{code: $code, name: $name}';
}

abstract class HttpStatusCode {
  static const int Continue = 100;

  static const int Switching_Protocols = 101;

  static const int Processing = 102;

  static const int OK = 200;

  static const int Created = 201;

  static const int Accepted = 202;

  static const int NonAuthoritative_Information = 203;

  static const int No_Content = 204;

  static const int Reset_Content = 205;

  static const int Partial_Content = 206;

  static const int MultiStatus = 207;

  static const int Already_Reported = 208;

  static const int IM_Used = 226;

  static const int Multiple_Choices = 300;

  static const int Moved_Permanently = 301;

  static const int Found = 302;

  static const int See_Other = 303;

  static const int Not_Modified = 304;

  static const int Use_Proxy = 305;

  static const int Temporary_Redirect = 307;

  static const int Permanent_Redirect = 308;

  static const int Bad_Request = 400;

  static const int Unauthorized = 401;

  static const int Payment_Required = 402;

  static const int Forbidden = 403;

  static const int Not_Found = 404;

  static const int Method_Not_Allowed = 405;

  static const int Not_Acceptable = 406;

  static const int Proxy_Authentication_Required = 407;

  static const int Request_Timeout = 408;

  static const int Conflict = 409;

  static const int Gone = 410;

  static const int Length_Required = 411;

  static const int Precondition_Failed = 412;

  static const int Payload_Too_Large = 413;

  static const int RequestURI_Too_Long = 414;

  static const int Unsupported_Media_Type = 415;

  static const int Requested_Range_Not_Satisfiable = 416;

  static const int Expectation_Failed = 417;

  static const int Misdirected_Request = 421;

  static const int Unprocessable_Entity = 422;

  static const int Locked = 423;

  static const int Failed_Dependency = 424;

  static const int Upgrade_Required = 426;

  static const int Precondition_Required = 428;

  static const int Too_Many_Requests = 429;

  static const int Request_Header_Fields_Too_Large = 431;

  static const int Connection_Closed_Without_Response = 444;

  static const int Unavailable_For_Legal_Reasons = 451;

  static const int Client_Closed_Request = 499;

  static const int Internal_Server_Error = 500;

  static const int Not_Implemented = 501;

  static const int Bad_Gateway = 502;

  static const int Service_Unavailable = 503;

  static const int Gateway_Timeout = 504;

  static const int HTTP_Version_Not_Supported = 505;

  static const int Variant_Also_Negotiates = 506;

  static const int Insufficient_Storage = 507;

  static const int Loop_Detected = 508;

  static const int Not_Extended = 510;

  static const int Network_Authentication_Required = 511;

  static const int Network_Connect_Timeout_Error = 599;
}
