<h1 id="selfcommunity-api-sso">SSO</h1>

## Signin

<a id="opIdcreatesignin"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/sso/signin/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/sso/signin/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
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

Signin the user

> Body parameter

```json
{}
```

```yaml
{}

```

<h3 id="createsignin-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[Empty](#schemaempty)|false|none|

> Example responses

> 201 Response

```json
{}
```

<h3 id="createsignin-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Empty](#schemaempty)|

<aside class="success">
This operation does not require authentication
</aside>

## signup

<a id="opIdcreatesignup"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/sso/signup/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/sso/signup/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "username": "string",
  "ext_id": 0,
  "role": "string",
  "tags": [
    0
  ]
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
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

Create a new account

> Body parameter

```json
{
  "username": "string",
  "ext_id": 0,
  "role": "string",
  "tags": [
    0
  ]
}
```

```yaml
username: string
ext_id: 0
role: string
tags:
  - 0

```

<h3 id="createsignup-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[Signup](#schemasignup)|false|none|

> Example responses

> 201 Response

```json
{
  "username": "string",
  "ext_id": 0,
  "role": "string",
  "tags": [
    0
  ]
}
```

<h3 id="createsignup-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Signup](#schemasignup)|

<aside class="success">
This operation does not require authentication
</aside>
