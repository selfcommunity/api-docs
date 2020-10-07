<h1 id="selfcommunity-api-media">Media</h1>

## Media Chunk Upload 

<a id="OpIdMediaChunkUpload"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/media/upload/chunk/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/media/upload/chunk/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "upload_id": "string",
  "offset": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/media/upload/chunk/',
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

`POST /api/v2/media/upload/chunk/`

This Endpoint perform a chunk upload of multimedia objects like image or documents (pdf).

> Body parameter

```json
{
  "upload_id": "string",
  "offset": "string"
}
```

```yaml
upload_id: string
offset: string

```

<h3 id="mediachunkupload-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ChunkMedia](#schemachunkmedia)|false|none|

> Example responses

> 201 Response

```json
{
  "upload_id": "string",
  "offset": "string",
  "expires": "string"
}
```

<h3 id="mediachunkupload-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[ChunkMedia](#schemachunkmedia)|

<aside class="success">
This operation does not require authentication
</aside>

## Media Chunk Upload Complete

<a id="OpIdMediaChunkUploadComplete"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/media/upload/complete/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/media/upload/complete/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "type": "vimeo",
  "upload_id": "string",
  "md5": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/media/upload/complete/',
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

`POST /api/v2/media/upload/complete/`

This Endpoint perform the complete operation for chunk upload. It must be called after the chunk file is fully uploaded and perform the creation of a Media of type image, editor_image or document.

> Body parameter

```json
{
  "type": "vimeo",
  "upload_id": "string",
  "md5": "string"
}
```

```yaml
type: vimeo
upload_id: string
md5: string

```

<h3 id="mediachunkuploadcomplete-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ChunkCompleteMedia](#schemachunkcompletemedia)|false|none|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
  "added_at": "2019-08-24T14:15:22Z",
  "type": "vimeo",
  "title": "string",
  "description": "string",
  "url": "http://example.com",
  "keywords": "string",
  "entities": "string",
  "image": "string",
  "image_width": 0,
  "image_height": 0,
  "oembed_type": "link",
  "oembed_url": "http://example.com",
  "oembed_width": 0,
  "oembed_height": 0,
  "oembed_duration": 0,
  "oembed_html": "string",
  "oembed_preview_ready": true,
  "oembed_available": true,
  "order": 0,
  "choice_images": [
    null
  ],
  "embed_type": "string",
  "embed_id": "string"
}
```

<h3 id="mediachunkuploadcomplete-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[ChunkCompleteMedia](#schemachunkcompletemedia)|

<aside class="success">
This operation does not require authentication
</aside>

## Create a Media

<a id="opIdMediaCreate"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/media/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/media/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "type": "vimeo",
  "url": "http://example.com",
  "embed_type": "string",
  "embed_id": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/media/',
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

`POST /api/v2/media/`

The endpoint creates a Media of type vimeo, url or embed.
If the type is embed then embed_type and embed_id parameters are mandatory.
For other types the mandatory parameter is url.

> Body parameter

```json
{
  "type": "vimeo",
  "url": "http://example.com",
  "embed_type": "string",
  "embed_id": "string"
}
```

```yaml
type: vimeo
url: http://example.com
embed_type: string
embed_id: string

```

<h3 id="createmedia-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CreateMedia](#schemacreatemedia)|false|none|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
  "added_at": "2019-08-24T14:15:22Z",
  "type": "vimeo",
  "title": "string",
  "description": "string",
  "url": "http://example.com",
  "keywords": "string",
  "entities": "string",
  "image": "string",
  "image_width": 0,
  "image_height": 0,
  "oembed_type": "link",
  "oembed_url": "http://example.com",
  "oembed_width": 0,
  "oembed_height": 0,
  "oembed_duration": 0,
  "oembed_html": "string",
  "oembed_preview_ready": true,
  "oembed_available": true,
  "order": 0,
  "choice_images": [
    null
  ],
  "embed_type": "string",
  "embed_id": "string"
}
```

<h3 id="createmedia-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[CreateMedia](#schemacreatemedia)|

<aside class="success">
This operation does not require authentication
</aside>

## Update a Media

<a id="opIdMediaUpdate"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/media/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.put('/api/v2/media/{id}/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "image": "http://example.com"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/media/{id}/',
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

`PUT /api/v2/media/{id}/`

The endpoint update a media. It can be used only for media type vimeo or url and allows you to update the image field giving an url.

> Body parameter

```json
{
  "image": "http://example.com"
}
```

```yaml
image: http://example.com

```

<h3 id="updatemedia-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this media object.|
|body|body|[UpdateMedia](#schemaupdatemedia)|false|none|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
  "added_at": "2019-08-24T14:15:22Z",
  "type": "vimeo",
  "title": "string",
  "description": "string",
  "url": "http://example.com",
  "keywords": "string",
  "entities": "string",
  "image": "http://example.com",
  "image_width": 0,
  "image_height": 0,
  "oembed_type": "link",
  "oembed_url": "http://example.com",
  "oembed_width": 0,
  "oembed_height": 0,
  "oembed_duration": 0,
  "oembed_html": "string",
  "oembed_preview_ready": true,
  "oembed_available": true,
  "order": 0,
  "choice_images": [
    null
  ],
  "embed_type": "string",
  "embed_id": "string"
}
```

<h3 id="updatemedia-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[UpdateMedia](#schemaupdatemedia)|

<aside class="success">
This operation require authentication, the user must be the media creator
</aside>

## Partial update a Media

<a id="opIdMediaPartialUpdate"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/media/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.patch('/api/v2/media/{id}/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "image": "http://example.com"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/media/{id}/',
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

`PATCH /api/v2/media/{id}/`

The endpoint update a media. It can be used only for media type vimeo or url and allows you to update the image field giving an url.

> Body parameter

```json
{
  "image": "http://example.com"
}
```

```yaml
image: http://example.com

```

<h3 id="partialupdatemedia-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this media object.|
|body|body|[UpdateMedia](#schemaupdatemedia)|false|none|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
  "added_at": "2019-08-24T14:15:22Z",
  "type": "vimeo",
  "title": "string",
  "description": "string",
  "url": "http://example.com",
  "keywords": "string",
  "entities": "string",
  "image": "http://example.com",
  "image_width": 0,
  "image_height": 0,
  "oembed_type": "link",
  "oembed_url": "http://example.com",
  "oembed_width": 0,
  "oembed_height": 0,
  "oembed_duration": 0,
  "oembed_html": "string",
  "oembed_preview_ready": true,
  "oembed_available": true,
  "order": 0,
  "choice_images": [
    null
  ],
  "embed_type": "string",
  "embed_id": "string"
}
```

<h3 id="partialupdatemedia-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[UpdateMedia](#schemaupdatemedia)|

<aside class="success">
This operation require authentication, the user must be the media creator
</aside>

## Destroy a Media

<a id="opIdmediadestroy"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v2/media/{id}/

```

```python
import requests

r = requests.delete('/api/v2/media/{id}/')

print(r.json())

```

```javascript

fetch('/api/v2/media/{id}/',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`DELETE /api/v2/media/{id}/`

The endpoint destroy the media and all its associations.

<h3 id="destroymedia-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this media object.|

<h3 id="destroymedia-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="success">
This operation require authentication, the user must be the media creator
</aside>


<h1 id="selfcommunity-api-tag">tag</h1>

## listTags

<a id="opIdlistTags"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/tag/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/tag/', headers = headers)

print(r.json())

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

A viewset that provides CRUD actions for the user tag

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
  "next": "http://api.example.org/accounts/?offset=400&limit=100",
  "previous": "http://api.example.org/accounts/?offset=200&limit=100",
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
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|[[Tag](#schematag)]|false|none|none|
|»» id|integer|false|read-only|none|
|»» name|string|true|none|none|
|»» description|string¦null|false|none|none|
|»» color|string|false|none|none|
|»» visible|boolean|false|none|none|
|»» active|boolean|false|none|none|
|»» created_at|string(date-time)|false|read-only|none|

<aside class="success">
This operation does not require authentication
</aside>

## createTag

<a id="opIdcreateTag"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/tag/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/tag/', headers = headers)

print(r.json())

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

A viewset that provides CRUD actions for the user tag

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
|body|body|[Tag](#schematag)|false|none|

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

<aside class="success">
This operation does not require authentication
</aside>

## retrieveTag

<a id="opIdretrieveTag"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/tag/{id}/ \
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

A viewset that provides CRUD actions for the user tag

<h3 id="retrievetag-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user tag.|
|search|query|string|false|A search term.|

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

<aside class="success">
This operation does not require authentication
</aside>

## updateTag

<a id="opIdupdateTag"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/tag/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.put('/api/v2/tag/{id}/', headers = headers)

print(r.json())

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

A viewset that provides CRUD actions for the user tag

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
|id|path|string|true|A unique integer value identifying this user tag.|
|search|query|string|false|A search term.|
|body|body|[Tag](#schematag)|false|none|

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

<aside class="success">
This operation does not require authentication
</aside>

## partialUpdateTag

<a id="opIdpartialUpdateTag"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/tag/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.patch('/api/v2/tag/{id}/', headers = headers)

print(r.json())

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

`PATCH /api/v2/tag/{id}/`

A viewset that provides CRUD actions for the user tag

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

<h3 id="partialupdatetag-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user tag.|
|search|query|string|false|A search term.|
|body|body|[Tag](#schematag)|false|none|

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

<h3 id="partialupdatetag-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Tag](#schematag)|

<aside class="success">
This operation does not require authentication
</aside>

## destroyTag

<a id="opIddestroyTag"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v2/tag/{id}/

```

```python
import requests

r = requests.delete('/api/v2/tag/{id}/')

print(r.json())

```

```javascript

fetch('/api/v2/tag/{id}/',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`DELETE /api/v2/tag/{id}/`

A viewset that provides CRUD actions for the user tag

<h3 id="destroytag-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user tag.|
|search|query|string|false|A search term.|

<h3 id="destroytag-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="success">
This operation does not require authentication
</aside>
