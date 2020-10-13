## JWT Access Token

<a id="selfcommunity-api-authentication-jwt"></a>

> Example of a JWT Access Token

```shell
eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.
eyJleHAiOjE2MDI0OTYwMjksInVzZXJfaWQiOjcsImlhdCI6MTYwMjQ5NDIyOX0.
v9H5nkbu_J0ysGqY2YUeufn1ypHmvvTc2k2WoDdztvw
```

JSON Web Tokens are strings of text which are passed on every request to verify the authorization of the server. 
They contain a combination of secrets from the API and payload data in the form of a JSON object.

### Generating JWTs

A single JWT consists of three components: Header, Payload, and Signature with a `.` separating each. 

For example, a JWT typically looks like the following: 

`aaaaa.bbbbb.ccccc`

The SelfCommunity API recommends and supports libraries provided on [jwt.io](https://jwt.io/). While other libraries can create JWT, these recommended libraries are the most robust.

**Header**

```json
{
  "alg": "HS256",
  "typ": "JWT"
}
```

The Header includes the specification of the signing algorithm and type of token.
 
* alg notes the algorithm being used. SelfCommunity APIs use HMAC SHA256 (HS256). 
* typ refers to the token type: JWT.

Then, this JSON is Base64Url encoded to form the first part of the JWT.

<aside class="notice">
Note: The SelfCommunity API uses HS256 to sign the token. Use of other algorithms is not supported.
</aside>


**Payload**

The payload of a token contains the claims or the pieces of information being passed about the user and any metadata required. 
While there are three types of claims, registered, public, and private, we highly recommend using registered claims for interoperability.

```json
{
  "user_id": "id community user",
  "ext_id": "id application user",
  "jti": "random unique identifier of the token",
  "iat": 1496091964000,
  "exp": 1496091964200
}
```
 
A payload will require an user id (user_id), an expiration time (exp), an issued at a time (iat) and a JWT ID (jti).

* user_id, the user id identified by the token.
* exp is the expiration timestamp of the token in seconds since Epoch (unix epoch time).
* iat is the issued time timestamp of the token in seconds since Epoch (unix epoch time).
* jti is a random string that identified uni It is used internally to prevent Replays.

> Note: The expiration time (exp) can be defined in a numeric date and time format.

It is highly recommended to set the exp timestamp for a short period, i.e. a matter of seconds. 
This way, if a token is intercepted or shared, the token will only be valid for a short period of time.

<aside class="notice">
Note: Though protected against tampering, the information contained in the Header and Payload is readable by anyone. 
Do not store confidential information in either of these elements.
</aside>


**Signature**

```
HMACSHA256(
    base64UrlEncode(header) + "." +
    base64UrlEncode(payload),
    API_SECRET)
```

The Signature of the token base64 encodes the header and payload, then includes the API Secret within the HMACSHA256 
algorithm to securely sign the entire package.

The signature is used to verify the message wasn't changed along the way, and, in the case of tokens signed with a private key, 
it can also verify that the sender of the JWT is who it says it is.


**Putting all together**

The output is three Base64-URL strings separated by dots that can be easily passed in the Authorization header.  

`
<header>.<payload>.<signature>
`

Whenever the user wants to access a protected route or resource, the user agent should send the JWT, 
typically in the Authorization header using the Bearer schema. 

The content of the header should look like the following:

`
Authorization: Bearer <token>
`


```
Authorization: Bearer <token>
```

This can be, in certain cases, a stateless authorization mechanism. 
The server's protected routes will check for a valid JWT in the Authorization header, and if it's present, the user 
will be allowed to access protected resources. 
If the JWT contains the necessary data, the need to query the database for certain operations may be reduced, 
though this may not always be the case.


### Verify JWTs

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/jwt/verify_token/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/jwt/verify_token/',
{
  method: 'GET',
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

This Endpoint test the validity of the token.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/jwt/verify_token/`

<h3 id="Captcha-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Token is valid|none|
|400|[KO](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Token is not valid|none|

<aside class="notice">
This operation does not require authentication
</aside>
