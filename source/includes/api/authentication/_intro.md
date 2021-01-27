<h2 id="selfcommunity-api-authentication">Authentication</h2>

### Intro

<a id="selfcommunity-api-authentication-intro"></a>

Selfcommunity supports two types of authentication methods:

* JWT Token
* OAuth 2.0

Both methods are suitable for different scenarios (Authorization, Information Exchange, etc.).

Depending on the type of interaction with the community APIs, it might be more convenient to use one method rather than another. 
If access to APIs communities occurs only on server side, we recommend using JWT authentication. 
In all other cases, for security reasons, use OAuth 2.0 authentication.
