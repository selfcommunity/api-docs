<h1 id="selfcommunity-api-sso">SSO</h1>

## Signin

<a id="opIdcreatesignin"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/sso/signin/ \
  -H 'Authorization: Bearer {access_token}'

```

```python
import requests
headers = {
  'Authorization': 'Bearer {access_token}'
}

r = requests.post('/api/v2/sso/signin/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{}';
const headers = {
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/sso/signin/',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`POST /api/v2/sso/signin/`

Signin the user authenticated with the access token.

> Example responses

> 200 Response

```json
{
  "id": 0,
  "ext_id": 0,
  "username": "string",
  "role": "string",
  "tags": [
    0
  ]
}
```

<h3 id="createsignin-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listusers-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» id|integer|true|none|A unique internal id identifying the authenticated user|
|» ext_id|integer¦null|true|none|A unique external id identifying the authenticated user|
|» username|string|true|none|Username of the authenticated user|
|» role|string¦null|false|none|Role of the user; it can be: admin, moderator, editor|
|» tags|[integer]¦null|false|none|List of tags id|

<aside class="notice">
This operation requires authentication.
</aside>

## Signup

<a id="opIdcreatesignup"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/sso/signup/ \
  -H 'Authorization: Bearer {access_token}'
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'
  -d '{
    "username": "string",
    "ext_id": 0
 }'
```

```python
import requests
headers = {
  'Authorization': 'Bearer {access_token}',
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}
payload = '{"username": "string","ext_id": 0}'

r = requests.post('/api/v2/sso/signup/', headers = headers, data = payload)

print(r.json())

```

```javascript
const inputBody = '{
  "username": "string",
  "ext_id": 0
}';
const headers = {
  'Authorization':'Bearer {access_token}',
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v2/sso/signup/',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`POST /api/v2/sso/signup/`

Create a new account.

**Note:** only users with the admin role can register new users.

> Body parameter

```json
{
  "ext_id": 0,
  "username": "string",
  "role": "string",
  "tags": [
    0
  ]
}
```

```yaml
ext_id: 0
username: string
role: string
tags:
  - 0

```

<h3 id="createsignup-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|ext_id|body|integer|true|A unique external id identifying the user|
|username|body|string|true|The username of the user. Max 255 characters. Letters, numbers and -/_ characters|
|role|body|string¦null|false|Role of the user; it can be: admin, moderator, editor|
|tags|body|[integer]¦null|false|List of tags id|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "ext_id": 0,
  "username": "string",
  "role": "string",
  "tags": [
    0
  ]
}
```

<h3 id="createsignup-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|Inline|

<h3 id="listusers-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» id|integer|true|none|The unique internal id associated to the created user|
|» ext_id|integer¦null|true|none|A unique external id identifying the user|
|» username|string|true|none|Username of the registered user|
|» role|string¦null|false|none|Role of the user; it can be: admin, moderator, editor|
|» tags|[integer]¦null|false|none|List of tags id|

<aside class="notice">
This operation requires authentication and admin role.
</aside>
