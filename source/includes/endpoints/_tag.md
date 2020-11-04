<h1 id="selfcommunity-api-tag">Tag</h1>

## Get All Tags

<a id="opIdlistTags"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/tag/ \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
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

This endpoint retrieves all tags.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/tag/`

<h3 id="listtags-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|search|query|string|false|A search term.|
|active|query|string|false|Is the tag active?|
|deleted|query|string|false|Is the tag deleted?|
|visible|query|string|false|Is this tag publicly visible?|
|ordering|query|string|false|Ordering fields (eg: `?ordering=name,created_at`), default is `-created_at` (minus char is used for descending ordering)|

> Example responses

> 200 Response

```json
{
  "count": 123,
  "next": "string(uri)",
  "previous": "string(uri)",
  "results": [
    {
      "id": 0,
      "type": "string",      
      "name": "string",      
      "description": "string",
      "color": "string",
      "visible": true,
      "created_at": "2019-08-24T14:15:22Z",
      "active": true,
      "deleted": false
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
|» count|integer|false|none|Total results count|
|» next|string(uri)¦null|false|none|Next page url|
|» previous|string(uri)¦null|false|none|Previous page url|
|» results|[[Tag](#schematag)]|false|none|List of results|

<aside class="notice">
This operation require authentication and admin role.
</aside>

## Create a Tag

<a id="opIdcreateTag"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/tag/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
  --DATA '{body}'
```

```javascript
const inputBody = '{
  "active": true,
  "type": "string",
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "deleted": false
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
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

This endpoint creates a tag.

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/tag/`


> Body parameter

```json
{
  "active": true,
  "type": "string",
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "deleted": false
}
```

<h3 id="createtag-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[Tag](#schematag)|false|none|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "type": "string",      
  "name": "string",      
  "description": "string",
  "color": "string",
  "visible": true,
  "created_at": "2019-08-24T14:15:22Z",
  "active": true,
  "deleted": false
}
```

<h3 id="createtag-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Tag](#schematag)|

<aside class="notice">
This operation require authentication and admin role.
</aside>

## Get a Specific Tag

<a id="opIdretrieveTag"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/tag/{id}/ \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
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

This endpoint retrieves a specific tag.

<h3 id="http-request">HTTP Request</h3>

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
  "type": "string",      
  "name": "string",      
  "description": "string",
  "color": "string",
  "visible": true,
  "created_at": "2019-08-24T14:15:22Z",
  "active": true,
  "deleted": false
}
```

<h3 id="retrievetag-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Tag](#schematag)|

<aside class="notice">
This operation requires authentication and admin role.
</aside>

## Update a Specific Tag

<a id="opIdupdateTag"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/tag/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
  --DATA '{body}'
```

```javascript
const inputBody = '{
  "active": true,
  "type": "string",
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "deleted": false
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
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

This endpoint updates a specific tag.

<h3 id="http-request">HTTP Request</h3>

`PUT /api/v2/tag/{id}/`

> Body parameter

```json
{
  "active": true,
  "type": "string",
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "deleted": false
}
```

<h3 id="updatetag-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user tag.|
|body|body|[Tag](#schematag)|false|none|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "type": "string",      
  "name": "string",      
  "description": "string",
  "color": "string",
  "visible": true,
  "created_at": "2019-08-24T14:15:22Z",
  "active": true,
  "deleted": false
}
```

<h3 id="updatetag-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Tag](#schematag)|

<aside class="notice">
This operation requires authentication and admin role.
</aside>

## Patch a Specific Tag

<a id="opIdpartialUpdateTag"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/tag/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
  --DATA '{body}'
```

```javascript
const inputBody = '{
  "active": true,
  "type": "string",
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "deleted": false
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/tag/{id}/',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

This endpoint patch a specific tag.
 
**NOTE:**
You can use this endpoint to edit a single field passing only the id and the needed field (without mandatory fields).

For example to change `active` or `visible` flags in an admin list/table interface.

<h3 id="http-request">HTTP Request</h3>

`PATCH /api/v2/tag/{id}/`

> Body parameter

```json
{
  "active": true,
  "type": "string",
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "deleted": false
}
```

<h3 id="partialupdatetag-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this tag.|
|body|body|[Tag](#schematag)|false|none|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "type": "string",      
  "name": "string",      
  "description": "string",
  "color": "string",
  "visible": true,
  "created_at": "2019-08-24T14:15:22Z",
  "active": true,
  "deleted": false
}
```

<h3 id="partialupdatetag-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Tag](#schematag)|

<aside class="notice">
This operation requires authentication and admin role.
</aside>

## Assign a Tag to a User

<a id="opIdassignTag"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/tag/{id}/assign/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
  --DATA '{body}'
```

```javascript
const inputBody = '{
  "user": 123
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/tag/{id}/assign/',
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

Assign a tag to a user.

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/tag/{id}/assign/`

> Body parameter

```json
{
  "user": 123
}
```

<h3 id="assigntag-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this tag.|
|user|body|integer|true|A unique integer value identifying the user.|

<h3 id="assigntag-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation requires authentication and admin role.
</aside>

## Unassign a Tag to a User

<a id="opIdunassignTag"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/tag/{id}/assign/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
  --DATA '{body}'
```

```javascript
const inputBody = '{
  "user": 123
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/tag/{id}/assign/',
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

Unassign a tag to a user.

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/tag/{id}/assign/`

> Body parameter

```json
{
  "user": 123
}
```

<h3 id="unassigntag-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this tag.|
|user|body|integer|true|A unique integer value identifying the user.|

<h3 id="unassigntag-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation requires authentication and admin role.
</aside>
