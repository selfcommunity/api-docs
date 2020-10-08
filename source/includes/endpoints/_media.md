<h1 id="selfcommunity-api-media">media</h1>

## createMediaChunk

<a id="opIdcreateMediaChunk"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/media/upload/chunk/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

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

Handle POST requests.

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

<h3 id="createmediachunk-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ChunkMedia](#schemachunkmedia)|false|none|
|» upload_id|body|string|true|none|
|» offset|body|string|true|none|
|» expires|body|string|false|none|

> Example responses

> 201 Response

```json
{
  "upload_id": "string",
  "offset": "string",
  "expires": "string"
}
```

<h3 id="createmediachunk-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[ChunkMedia](#schemachunkmedia)|

<aside class="success">
This operation does not require authentication
</aside>

## createMediaChunkComplete

<a id="opIdcreateMediaChunkComplete"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/media/upload/complete/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

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

Handle POST requests.

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

<h3 id="createmediachunkcomplete-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ChunkCompleteMedia](#schemachunkcompletemedia)|false|none|
|» id|body|integer|false|none|
|» hash_code|body|string(uuid)|false|none|
|» added_at|body|string(date-time)|false|none|
|» type|body|string|false|none|
|» title|body|string|false|none|
|» description|body|string|false|none|
|» url|body|string(uri)|false|none|
|» keywords|body|string|false|none|
|» entities|body|string|false|none|
|» image|body|string(binary)|false|none|
|» image_width|body|integer|false|none|
|» image_height|body|integer|false|none|
|» oembed_type|body|string|false|none|
|» oembed_url|body|string(uri)|false|none|
|» oembed_width|body|integer|false|none|
|» oembed_height|body|integer|false|none|
|» oembed_duration|body|integer|false|none|
|» oembed_html|body|string|false|none|
|» oembed_preview_ready|body|boolean|false|none|
|» oembed_available|body|boolean|false|none|
|» order|body|integer|false|none|
|» choice_images|body|[any]|false|none|
|» embed_type|body|string|false|none|
|» embed_id|body|string|false|none|
|» upload_id|body|string|true|none|
|» md5|body|string|true|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|» type|vimeo|
|» type|url|
|» type|embed|
|» oembed_type|link|
|» oembed_type|photo|
|» oembed_type|rich|
|» oembed_type|video|

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

<h3 id="createmediachunkcomplete-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[ChunkCompleteMedia](#schemachunkcompletemedia)|

<aside class="success">
This operation does not require authentication
</aside>

## createMediaObject

<a id="opIdcreateMediaObject"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/media/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

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

Viewset for media objects

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

<h3 id="createmediaobject-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CreateMedia](#schemacreatemedia)|false|none|
|» id|body|integer|false|none|
|» hash_code|body|string(uuid)|false|none|
|» added_at|body|string(date-time)|false|none|
|» type|body|string|true|none|
|» title|body|string|false|none|
|» description|body|string|false|none|
|» url|body|string(uri)|false|none|
|» keywords|body|string|false|none|
|» entities|body|string|false|none|
|» image|body|string(binary)|false|none|
|» image_width|body|integer|false|none|
|» image_height|body|integer|false|none|
|» oembed_type|body|string|false|none|
|» oembed_url|body|string(uri)|false|none|
|» oembed_width|body|integer|false|none|
|» oembed_height|body|integer|false|none|
|» oembed_duration|body|integer|false|none|
|» oembed_html|body|string|false|none|
|» oembed_preview_ready|body|boolean|false|none|
|» oembed_available|body|boolean|false|none|
|» order|body|integer|false|none|
|» choice_images|body|[any]|false|none|
|» embed_type|body|string¦null|false|none|
|» embed_id|body|string¦null|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|» type|vimeo|
|» type|url|
|» type|embed|
|» oembed_type|link|
|» oembed_type|photo|
|» oembed_type|rich|
|» oembed_type|video|

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

<h3 id="createmediaobject-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[CreateMedia](#schemacreatemedia)|

<aside class="success">
This operation does not require authentication
</aside>

## updateMediaObject

<a id="opIdupdateMediaObject"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/media/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

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

Viewset for media objects

> Body parameter

```json
{
  "image": "http://example.com"
}
```

```yaml
image: http://example.com

```

<h3 id="updatemediaobject-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this media object.|
|body|body|[UpdateMedia](#schemaupdatemedia)|false|none|
|» id|body|integer|false|none|
|» hash_code|body|string(uuid)|false|none|
|» added_at|body|string(date-time)|false|none|
|» type|body|string|false|none|
|» title|body|string|false|none|
|» description|body|string|false|none|
|» url|body|string(uri)|false|none|
|» keywords|body|string|false|none|
|» entities|body|string|false|none|
|» image|body|string(uri)|true|none|
|» image_width|body|integer|false|none|
|» image_height|body|integer|false|none|
|» oembed_type|body|string|false|none|
|» oembed_url|body|string(uri)|false|none|
|» oembed_width|body|integer|false|none|
|» oembed_height|body|integer|false|none|
|» oembed_duration|body|integer|false|none|
|» oembed_html|body|string|false|none|
|» oembed_preview_ready|body|boolean|false|none|
|» oembed_available|body|boolean|false|none|
|» order|body|integer|false|none|
|» choice_images|body|[any]|false|none|
|» embed_type|body|string|false|none|
|» embed_id|body|string|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|» type|vimeo|
|» type|url|
|» type|embed|
|» type|image|
|» type|eimage|
|» type|doc|
|» oembed_type|link|
|» oembed_type|photo|
|» oembed_type|rich|
|» oembed_type|video|

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

<h3 id="updatemediaobject-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[UpdateMedia](#schemaupdatemedia)|

<aside class="success">
This operation does not require authentication
</aside>

## partialUpdateMediaObject

<a id="opIdpartialUpdateMediaObject"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/media/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

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

Viewset for media objects

> Body parameter

```json
{
  "image": "http://example.com"
}
```

```yaml
image: http://example.com

```

<h3 id="partialupdatemediaobject-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this media object.|
|body|body|[UpdateMedia](#schemaupdatemedia)|false|none|
|» id|body|integer|false|none|
|» hash_code|body|string(uuid)|false|none|
|» added_at|body|string(date-time)|false|none|
|» type|body|string|false|none|
|» title|body|string|false|none|
|» description|body|string|false|none|
|» url|body|string(uri)|false|none|
|» keywords|body|string|false|none|
|» entities|body|string|false|none|
|» image|body|string(uri)|true|none|
|» image_width|body|integer|false|none|
|» image_height|body|integer|false|none|
|» oembed_type|body|string|false|none|
|» oembed_url|body|string(uri)|false|none|
|» oembed_width|body|integer|false|none|
|» oembed_height|body|integer|false|none|
|» oembed_duration|body|integer|false|none|
|» oembed_html|body|string|false|none|
|» oembed_preview_ready|body|boolean|false|none|
|» oembed_available|body|boolean|false|none|
|» order|body|integer|false|none|
|» choice_images|body|[any]|false|none|
|» embed_type|body|string|false|none|
|» embed_id|body|string|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|» type|vimeo|
|» type|url|
|» type|embed|
|» type|image|
|» type|eimage|
|» type|doc|
|» oembed_type|link|
|» oembed_type|photo|
|» oembed_type|rich|
|» oembed_type|video|

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

<h3 id="partialupdatemediaobject-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[UpdateMedia](#schemaupdatemedia)|

<aside class="success">
This operation does not require authentication
</aside>

## destroyMediaObject

<a id="opIddestroyMediaObject"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v2/media/{id}/

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

Viewset for media objects

<h3 id="destroymediaobject-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this media object.|

<h3 id="destroymediaobject-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="success">
This operation does not require authentication
</aside>
