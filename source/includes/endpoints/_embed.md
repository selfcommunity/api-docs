<h1 id="selfcommunity-api-embed">Embed</h1>

## Get All Embeds

<a id="opIdlistEmbeds"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/embed/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/embed/',
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

This endpoint retrieves all embeds.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/embed/`

<h3 id="listembeds-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|

> Example responses

> 200 Response

```json
{
  "count": 123,
  "next": "http://api.example.org/accounts/?offset=400&limit=100",
  "previous": "http://api.example.org/accounts/?offset=200&limit=100",
  "results": [
    {
      "id": 0,
      "embed_type": "string",
      "embed_id": "string",
      "url": "http://example.com",
      "metadata": {}
    }
  ]
}
```

<h3 id="listembeds-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listembeds-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|list([Embed](#schemaembed))|false|none|none|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

## Create an Embed

<a id="opIdcreateEmbed"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/embed/ \
  --H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
    "embed_type": "string",
    "embed_id": "string",
    "url": "http://example.com",
    "metadata": {}
}'

```

```javascript
const inputBody = '{
  "embed_type": "string",
  "embed_id": "string",
  "url": "http://example.com",
  "metadata": {}
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/embed/',
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

This endpoint create an Embed.

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/embed/`

> Body parameter

```json
{
  "embed_type": "string",
  "embed_id": "string",
  "url": "http://example.com",
  "metadata": {}
}
```

<h3 id="createembed-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|» id|body|integer|false|none|
|» embed_type|body|string|true|Type of the embed, can be any string except `sc_vimeo` or `sc_link` that are used for embedded objects auomatically created by the community|
|» embed_id|body|string|true|External id for the embed object|
|» url|body|string(uri)¦null|false|Url for the resource, if any|
|» metadata|body|json|false|Metadata associated to this embed. It mus be a valid json object|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "embed_type": "string",
  "embed_id": "string",
  "url": "http://example.com",
  "metadata": {}
}
```

<h3 id="createembed-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Embed](#schemaembed)|

<aside class="notice">
This operation require authentication and admin role.
</aside>

## Search an Embed

<a id="opIdsearchEmbed"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/embed/search/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/embed/search/',
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

This endpoint perform search to Embeds

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/embed/search/`

<h3 id="searchembed-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|embed_type|query|string|false|embed_type|
|embed_id|query|string|false|embed_id|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|

> Example responses

> 200 Response

```json
{
  "count": 123,
  "next": "http://api.example.org/accounts/?offset=400&limit=100",
  "previous": "http://api.example.org/accounts/?offset=200&limit=100",
  "results": [
    {
      "id": 0,
      "embed_type": "string",
      "embed_id": "string",
      "url": "http://example.com",
      "metadata": {}
    }
  ]
}
```

<h3 id="searchembed-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="searchembed-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|list([Embed](#schemaembed))|false|none|none|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

## Get a specific Embed

<a id="opIdretrieveEmbed"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/embed/{id}/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/embed/{id}/',
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
This endpoint retrieves a specific embed using ID.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/embed/{id}/`

<h3 id="retrieveembed-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this embed.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "embed_type": "string",
  "embed_id": "string",
  "url": "http://example.com",
  "metadata": {}
}
```

<h3 id="retrieveembed-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Embed](#schemaembed)|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

## Update a specific Embed

<a id="opIdupdateEmbed"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/embed/{id}/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
    "url": "http://example.com",
    "metadata": {}
  }'

```

```javascript
const inputBody = '{
  "url": "http://example.com",
  "metadata": {}
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/embed/{id}/',
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

This endpoint update a specific Embed.

<h3 id="http-request">HTTP Request</h3>

`PUT /api/v2/embed/{id}/`

> Body parameter

```json
{
  "url": "http://example.com",
  "metadata": {}
}
```

<h3 id="updateembed-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this embed.|
|» url|string(uri)¦null|false|none|Url for the resource, if any|
|» metadata|json|false|none|Metadata associated to this embed. It mus be a valid json object|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "embed_type": "string",
  "embed_id": "string",
  "url": "http://example.com",
  "metadata": {}
}
```

<h3 id="updateembed-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[UpdateEmbed](#schemaupdateembed)|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

## Patch a Specific Embed

<a id="opIdpartialUpdateEmbed"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/embed/{id}/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
    "url": "http://example.com"
  }'

```

```javascript
const inputBody = '{
  "url": "http://example.com",
  "metadata": {}
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/embed/{id}/',
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
This endpoint patch a specific endpoint.

*NOTE:* You can use this endpoint to edit a single field passing only the id and the needed field (without mandatory fields).

<h3 id="http-request">HTTP Request</h3>

`PATCH /api/v2/embed/{id}/`

> Body parameter

```json
{
  "url": "http://example.com",
  "metadata": {}
}
```

<h3 id="partialupdateembed-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this embed.|
|» url|string(uri)¦null|false|none|Url for the resource, if any|
|» metadata|json|false|none|Metadata associated to this embed. It mus be a valid json object|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "embed_type": "string",
  "embed_id": "string",
  "url": "http://example.com",
  "metadata": {}
}
```

<h3 id="partialupdateembed-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[UpdateEmbed](#schemaupdateembed)|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>