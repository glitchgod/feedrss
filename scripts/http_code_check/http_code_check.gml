/// @function					http_code_check(argument0)
/// @param {real} code_number	The code number to check
/// @description				return what the code actually means
function http_code_check(argument0){
	var return_text = "";				//place holder for what the text to return will be
	switch (argument0){
		case 100 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: In Progress" + " \n" + "Description: Continue" + " \n" + "Details: The 100 Continue status code means that the initial part of the request has been received by the server and that the client should proceed with the request or ignore the response if the request has already finished.";
		break;
		case 101 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: In Progress" + " \n" + "Description: Switching protocols" + " \n" + "Details: The 101 Switching protocols status code means that the server understands the Upgrade header field request and indicates which protocol it is switching to.";
		break;
		case 102 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: In Progress" + " \n" + "Description: Processing" + " \n" + "Details: The 102 Processing status code means that the server has accepted the full request but has not yet completed it and no response is available as of yet.";
		break;
		case 103 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: In Progress" + " \n" + "Description: Early Hints" + " \n" + "Details: The 103 Early hints status code is intended to be used to allow the user agent to preload resources, while the server prepares a response. It is intended to be primarily used with the Link Header.v";
		break;
		
		
		case 200 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: All Good" + " \n" + "Description: OK" + " \n" + "Details: The 200 OK status code means that the request was successful, but the meaning of success depends on the request method used.";
		break;
		case 201 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: All Good" + " \n" +  "Description: Created" + " \n" + "Details: The 201 Created status code means that the request was successfully fulfilled and resulted in one or possibly multiple new resources being created.";
		break;
		case 202 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: All Good" + " \n" +  "Description: Accepted" + " \n" + "Details: The 202 Accepted status code means that the request has been accepted for processing, but the processing has not been finished yet. The request may or may not be completed when the processing eventually takes place.";
		break;
		case 203 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: All Good" + " \n" +  "Description: Non-Authoritative Information" + " \n" + "Details: The 203 Non-Authoritative Information status code means that the request was successful. However, the meta-information that has been received is different from the one on the origin server and has instead been collected from a 3rd party or local copy. When not used for backups or mirrors of another resource a 200 OK response is preferable.";
		break;
		case 204 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: All Good" + " \n" +  "Description: No Content" + " \n" + "Details: The 204 No Content status code means that while the server has successfully fulfilled the request, there is no available content for this request. But the user agent might want to update its currently cached headers for this resource, for the new one. ";
		break;
		case 205 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: All Good" + " \n" +  "Description: Reset Content" + " \n" + "Details: The 205 Reset Content status code means that the user should reset the document that sent this request.";
		break;
		case 206 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: All Good" + " \n" +  "Description: Partial Content" + " \n" + "Details: The 206 Partial Content response code is a response to a Range header sent from the client when requesting only a part of the resource.";
		break;
		case 207 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: All Good" + " \n" +  "Description: Multi-Status" + " \n" + "Details: The 207 Multi-Status status code conveys information about multiple resources, in situation when multiple status codes are appropriate.";
		break;
		case 208 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: All Good" + " \n" +  "Description: Already Reported" + " \n" + "Details: The 208 Already Reported status code is used inside the response element DAV: propstat, in order to avoid enumerating the internal members of multiple bindings to the same collection repeatedly.";
		break;
		case 226 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: All Good" + " \n" +  "Description: IM Used" + " \n" + "Details: The 226 IM response code means that the server has successfully fulfilled a GET request for the resource, and the response is a representation of the result of one or multiple instance-manipulations applied to the current instance.";
		break;
		
		
		case 300 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: URL Redirected (unknown)" + " \n" +  "Description: Multiple Choices" + " \n" + "Details: The 300 Multiple Choices status code means that the request has multiple possible responses and the user/user agent should choose one.";
		break;
		case 301 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: URL Redirected (unknown)" + " \n" + "Description: Moved Permanently" + " \n" + "Details: The 301 Moved Permanently response code means that the target resource has been assigned a new permanent URL and any references to this resources in the future should use one of the URLs included in the response.";
		break;
		case 302 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: URL Redirected (unknown)" + " \n" + "Description: Found (Previously 'Moved Temporarily')" + " \n" + "Details: The 302 Found status code, previously known as “Moved temporarily”, means that the URI of the request has been changed temporarily, and since changes can be made to the URI in the future, the effective request URI should be used for future requests.";
		break;
		case 303 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: URL Redirected (unknown)" + " \n" + "Description: See Other" + " \n" + "Details: The 303 See Other response code is sent by the server in order to direct the client to get the requested resource at another URI with a GET request.";
		break;
		case 304 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: URL Redirected (unknown)" + " \n" + "Description: Not Modified" + " \n" + "Details: The 304 Not Modified response code informs the client that the response has not been modified. This means that the client can continue to use the already present, cached version of the response.";
		break;
		case 305 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: URL Redirected (unknown)" + " \n" + "Description: Use Proxy" + " \n" + "Details: The 305 Use Proxy status code instructs a client that it should connect to a proxy and then repeat the same request there. This response code is deprecated due to security concerns.";
		break;
		case 306 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: URL Redirected (unknown)" + " \n" + "Description: Switch Proxy" + " \n" + "Details: The 306 Switch proxy status code is no longer in use. It was used to inform the client that the subsequent requests should use the specified proxy.";
		break;
		case 307 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: URL Redirected (unknown)" + " \n" + "Description: Temporary Redirect" + " \n" + "Details: The 307 Temporary Redirect status code gets sent by the server in order to direct the client to the requested resource at another URI. The request method, however, must not be changed.";
		break;
		case 308 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: URL Redirected (unknown)" + " \n" + "Description: Permanent Redirect" + " \n" + "Details: The 308 Permanent Redirect status code means that the requested resource has been permanently assigned a new URI and future references to the resource should be made by using one of the enclosed URIs.";
		break;
		
		
		case 400 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Bad Request" + " \n" + "Details: The 400 Bad Request status code means that the server could not understand the request because of invalid syntax.";
		break;
		case 401 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Unauthorized" + " \n" + "Details: The 401 Unauthorized status code means that the request has not been applied because the server requires user authentication.v";
		break;
		case 402 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Payment Required" + " \n" + "Details: The 402 Payment Required status code is a response reserved for future use. It was originally created to be implemented in digital payment systems, however, it is rarely used and a standard convention of using it does not exist.";
		break;
		case 403 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Forbidden" + " \n" + "Details: The 403 Forbidden status code means that the client request has been rejected because the client does not have rights to access the content. Unlike a 401 error, the client's identity is known to the server, but since they are not authorized to view the content, giving the proper response is rejected by the server.";
		break;
		case 404 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Not Found" + " \n" + "Details: The 404 Not Found status code means that the server either did not find a current representation for the requested resource or is trying to hide its existence from an unauthorized client.";
		break;
		case 405 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Method Not Allowed" + " \n" + "Details: The 405 Method Not Allowed status code means that while the server knows the request method, the method has been disabled and can not be used.";
		break;
		case 406 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Not Acceptable" + " \n" + "Details: The 406 Not Acceptable status code is sent by the server when it does not find any content following the criteria given by the user agent.";
		break;
		case 407 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Proxy Authentication Required" + " \n" + "Details: The 407 Proxy Authentication Required status code means that the client must first be authenticated by a proxy (similar to a 401).";
		break;
		case 408 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Request Timeout" + " \n" + "Details: The 408 Request Timeout status code means that the server did not receive a complete request in the time that it prepared to wait.";
		break;
		case 409 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Conflict" + " \n" + "Details: The 409 Conflict status code means that the request could not be fulfilled due to a conflict with the current state of the target resource and is used in situations where the user might be able to resubmit the request after resolving the conflict.";
		break;
		case 410 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Gone" + " \n" + "Details: The 410 Gone status code means that the target resource has been deleted and the condition seems to be permanent. ";
		break;
		case 411 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Length Required" + " \n" + "Details: The 411 Length Required status code means that the server has rejected the request because it requires the Content-Length header field to be defined.";
		break;
		case 412 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Precondition Failed" + " \n" + "Details: The 412 Precondition Failed status code means the server does not meet one or multiple preconditions that were indicated in the request header fields.";
		break;
		case 413 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Payload Too Large" + " \n" + "Details: The 413 Payload Too Large status code means the server refuses to process the request because the request payload is larger than the server is able or willing to process.";
		break;
		case 414 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: URI Too Long" + " \n" + "Details: The 414 URI Too Long status code means that the server is refusing to service the request because the request-target was longer than the server was willing to interpret.";
		break;
		case 415 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Unsupported Media Type" + " \n" + "Details: The 415 Unsupported Media Type status code means that the server is rejecting the request because it does not support the media format of the requested data.";
		break;
		case 416 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Range Not Satisfiable" + " \n" + "Details: The 416 Range Not Satisfiable status code means that the range specified in the Range header field of the request can't be fulfilled. The reason might be that the given range is outside the size of the target URI's data.";
		break;
		case 417 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Expectation Failed" + " \n" + "Details: The 417 Expectation Failed status code means that the Expectation indicated by the Expect request-header field could not be met by the server.";
		break;
		case 418 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: I'm a Teapot" + " \n" + "Details: The 418 I'm a Teapot status code means that the server refuses to brew coffee because it is, in fact, a teapot. (It is a reference to a 1998 April Fools' joke called ''Hyper Text Coffee Pot Control Protocol'').";
		break;
		case 421 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Misdirected Request" + " \n" + "Details: The 421 Misdirected Request status code means that the client request was directed at a server that is not configured to produce a response.";
		break;
		case 422 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Unprocessable Entity" + " \n" + "Details:The 422 Unprocessable Entity status code means that while the request was well-formed, the server was unable to follow it, due to semantic errors.";
		break;
		case 423 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Locked" + " \n" + "Details: The 423 Locked status code means that the resource that is being accessed is locked.";
		break;
		case 424 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Failed Dependency" + " \n" + "Details: The 424 Failed Dependency status code means that the request failed due to the failure of a previous request.";
		break;
		case 425 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Too Early" + " \n" + "Details: The 425 Too Early status code means that the server is not willing to risk processing a request that might be replayed.";
		break;
		case 426 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Upgrade Required" + " \n" + "Details: The 426 Upgrade Required status code means that while the server refuses to perform the given request using the current protocol, it might be willing to do so after the client has been upgraded to a different protocol.";
		break;
		case 428 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Precondition Required" + " \n" + "Details: The 428 Precondition Required status code means that the origin server requires the request to be conditional.";
		break;
		case 429 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Too Many Requests" + " \n" + "Details: The 429 Too Many Requests response code means that in the given time, the user has sent too many requests.";
		break;
		case 431 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Request Header Fields Too Large" + " \n" + "Details: The 431 Request Header Fields Too Large means that the server is not willing to process the request because its header fields are indeed too large, however, the request may be submitted again once the size of the request header fields is reduced.";
		break;
		case 451 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Error" + " \n" + "Description: Unavailable For Legal Reasons" + " \n" + "Details: The 451 Unavailable For Legal Reasons response code means that the user has requested an illegal resource (such as pages and sites blocked by the government).";
		break;
		
		
		case 500 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Server Error" + " \n" + "Description: Internal Server Error" + " \n" + "Details: The 500 Internal Server Error status code means that the server has encountered a situation that it does not know how to handle.";
		break;
		case 501 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Server Error" + " \n" + "Description: Not Implemented" + " \n" + "Details: The 501 Not Implemented response code means that the request can not be handled because it is not supported by the server.";
		break;
		case 502 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Server Error" + " \n" + "Description: Bad Gateway" + " \n" + "Details: The 502 Bad Gateway response code means that the server received an invalid response while working as a gateway to handle the response.";
		break;
		case 503 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Server Error" + " \n" + "Description: Service Unavailable" + " \n" + "Details: The 503 Service Unavailable response code means that the server is currently not ready to handle the request. This is a common occurrence when the server is down for maintenance or is overloaded.";
		break;
		case 504 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Server Error" + " \n" + "Description: Gateway Timeout" + " \n" + "Details: The 504 Gateway Timeout response code means that the server acting as a gateway could not get a response time.";
		break;
		case 505 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Server Error" + " \n" + "Description: HTTP Version Not Supported" + " \n" + "Details: The 505 HTTP Version Not Supported response code means that the version of HTTP used in the request is not supported by the server.";
		break;
		case 506 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Server Error" + " \n" + "Description: Variant Also Negotiates" + " \n" + "Details: The 506 Variant Also Negotiates response code means that the server has the following internal configuration error: The chosen variant resource is configured to engage in transparent negotiation itself, therefore it cannot be a proper endpoint in the negotiation process.";
		break;
		case 507 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Server Error" + " \n" + "Description: Insufficient Storage" + " \n" + "Details: The 507 Insufficient Storage status code means that the method could not be performed on the resource because the server is not able to store the representation that would be needed to complete the request successfully.";
		break;
		case 508 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Server Error" + " \n" + "Description: Loop Detected" + " \n" + "Details: The 508 Loop Detected response code means that the server has detected an infinite loop while processing the request.";
		break;
		case 510 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Server Error" + " \n" + "Description: Not Extended" + " \n" + "Details: The 510 Not Extended response code means that further extensions are required for the server to be able to fulfil the request.";
		break;
		case 511 :
			return_text = "HTTP Status Code: " + string(argument0) + " \n" + "Status: Server Error" + " \n" + "Description: Network Authentication Required" + " \n" + "Details: The 511 Network Authentication Required response code indicates that the client needs to authenticate to gain network access. ";
		break;
		
		
		default: return_text = "HTTP Status Code: " + "Failed Test" + " \n" + "UNKNOWN ERROR: Make sure internet is setup and working. Make sure it is an actual url. Make sure it is the whole url (http(s)://). Then try again";
	}
	
 return (return_text);
}