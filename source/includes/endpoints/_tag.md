<h1 id="selfcommunity-api-tag">Tag</h1>

## Get All Tags

<a id="opIdlistTags"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/tag/ \
  -H "Authorization: Bearer {access_token}"
  -H 'Accept: application/json'
```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/tag/',
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

`GET /api/v2/tag/`

<h3 id="listtags-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|search|query|string|false|A search term.|

> Example responses

> 200 Response

```json
{
  "count": 123,
  "next": "http://api.example.org/tag/?offset=400&limit=100",
  "previous": "http://api.example.org/tag/?offset=200&limit=100",
  "results": [
    {
      "id": 0,
      "name": "string",
      "description": "string",
      "color": "string",
      "visible": true,
      "active": true,
      "created_at": "2019-08-24T14:15:22Z"
    }
  ]
}
```

<h3 id="listtags-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listtags-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|Count of tags|
|» next|string(uri)¦null|false|none|Next url for pagination|
|» previous|string(uri)¦null|false|none|Previous url for pagination|
|» results|[[Tag](#schematag)]|false|none|Array of tags|


<aside class="warning">
This operation require authentication and admin role
</aside>

## Create a Tag

<a id="opIdcreateTag"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/tag/ \
  -H "Authorization: Bearer {access_token}"
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -d '{"name": "string"}'

```

```javascript
const inputBody = '{
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "active": true
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/tag/',
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

`POST /api/v2/tag/`

> Body parameter

```json
{
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "active": true
}
```

```yaml
name: string
description: string
color: string
visible: true
active: true

```

<h3 id="createtag-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|name|body|string|true|Name of the tag|
|description|body|string¦null|false|Human readable description of the tag|
|color|body|string|false|Hexadecimal color|
|visible|body|boolean|false|Is the tag publicly visible in the frontend?|
|active|body|boolean|false|Is the tag active?|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "active": true,
  "created_at": "2019-08-24T14:15:22Z"
}
```

<h3 id="createtag-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Tag](#schematag)|

<aside class="warning">
This operation require authentication and admin role
</aside>

<a id="opIdretrieveTag"></a>

## Get a Specific Tag

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/tag/{id}/ \
  -H "Authorization: Bearer {access_token}"
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/tag/{id}/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/tag/{id}/',
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

`GET /api/v2/tag/{id}/`

<h3 id="retrievetag-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this tag.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "active": true,
  "created_at": "2019-08-24T14:15:22Z"
}
```

<h3 id="retrievetag-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Tag](#schematag)|

<aside class="warning">
This operation require authentication and admin role
</aside>

## Update a Specific Tag

<a id="opIdupdateTag"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/tag/{id}/ \
  -H "Authorization: Bearer {access_token}"
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -d '{"name": "string"}'
```

```javascript
const inputBody = '{
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "active": true
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/tag/{id}/',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`PUT /api/v2/tag/{id}/`

> Body parameter

```json
{
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "active": true
}
```

```yaml
name: string
description: string
color: string
visible: true
active: true

```

<h3 id="updatetag-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this tag.|
|name|body|string|true|Name of the tag|
|description|body|string¦null|false|Human readable description of the tag|
|color|body|string|false|Hexadecimal color|
|visible|body|boolean|false|Is the tag publicly visible in the frontend?|
|active|body|boolean|false|Is the tag active?|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "active": true,
  "created_at": "2019-08-24T14:15:22Z"
}
```

<h3 id="updatetag-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Tag](#schematag)|

<aside class="warning">
This operation require authentication and admin role
</aside>
