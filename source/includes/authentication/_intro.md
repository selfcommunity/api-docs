<h1 id="selfcommunity-api-authentication">Authentication</h1>

## Intro

<a id="selfcommunity-api-authentication-intro"></a>

Selfcommunity supports JWT Access Token as authorization methods. 
This is suitable for different scenarios (Authorization, Information Exchange, etc.).

JSON Web Token (JWT) is an open standard [RFC 7519](https://tools.ietf.org/html/rfc7519) that defines a compact and self-contained way for securely transmitting information between parties as a JSON object. This information can be verified and trusted because it is digitally signed.

JWTs can be signed using a shared secret (with the HMAC algorithm).
If your product support JWT access token, you need to first **request for the secret** by [contacting us](mailto: developers@selfcommunity.com).
 
Signed tokens can verify the integrity of the claims contained within it, while encrypted tokens hide those claims from other parties.

If you want to learn more about JWTs, we recommend the full documentation at [jwt.io](https://jwt.io/).

