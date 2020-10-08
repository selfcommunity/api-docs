<h1 id="selfcommunity-api-media">Media</h1>

## Chunk Upload Media

<a id="opIdcreateMediaChunk"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/media/upload/chunk/ \
  -H 'Content-Type: multipart/form-data' \
  -H 'Accept: application/json'
  -H "Transfer-Encoding: chunked"
  --data-binary $'------WebKitFormBoundaryT4U3VeMJUOwfER55\r\nContent-Disposition: form-data; name="cors"\r\n\r\n1\r\n------WebKitFormBoundaryT4U3VeMJUOwfER55\r\nContent-Disposition: form-data; name="image"; filename="p.gif"\r\nContent-Type: image/gif\r\n\r\n\r\n------WebKitFormBoundaryT4U3VeMJUOwfER55--\r\n' \
  --compressed
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

This Endpoint perform the chunk upload of a media with type image or document. The client must split the file into chunks and send to the server in series. After all the chunks have been uploaded the client must call the [Chunk Upload Complete](#opIdcreateMediaChunkComplete) endpoint.

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/media/upload/chunk/`

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
|» upload_id|body|string|true|returned by the first call and required from the second|
|» offset|body|string|true|offset of the chunk|
|» expires|body|string|false|expiration time|
|» image|body|string|false|Image chunk to be uploaded|
|» document|body|string|false|Document chunk to be uploaded|

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

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

## Chunk Upload Media Complete

<a id="opIdcreateMediaChunkComplete"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/media/upload/complete/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  --data-raw 'upload_id=UPLOAD_ID&md5=FILE_MD5' \
  --compressed
```

```javascript
const inputBody = '{
  "type": "image",
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

This Endpoint complete the chunk upload and create the Media.

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/media/upload/complete/`

> Body parameter

```json
{
  "type": "image",
  "upload_id": "string",
  "md5": "string"
}
```

```yaml
type: image
upload_id: string
md5: string

```

<h3 id="createmediachunkcomplete-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|» type|body|string|false|Default to image or document based on file extension|
|» upload_id|body|string|true|Id of the chunk uploaded file|
|» md5|body|string|true|MD5 hash of the original file|

#### Enumerated Values

|Parameter|Value|Description|
|---|---|---|
|» type|image|Media of type image|
|» type|eimage|Media of type inline image, used in [Discussion](#selfcommunity-api-discussion) or [Post](#selfcommunity-api-post)  text editor|
|» type|document|Media of type document|

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
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Media](#schemamedia)|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

## Create a Media

<a id="opIdcreateMedia"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/media/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  --data-raw 'url=http%3A%2F%2Fwww.example.com&type=url'

```

```javascript
const inputBody = '{
  "type": "url",
  "url": "http://example.com"
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

This Endpoint create a Media.

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/media/`

> Body parameter

```json
{
  "type": "url",
  "url": "http://example.com"
}
```

```yaml
type: url
url: http://example.com

```

<h3 id="createmedia-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|» type|body|string|true|none|
|» url|body|string(uri)|false|Required for type url|
|» embed_type|body|string¦null|false|Required for type embed|
|» embed_id|body|string¦null|false|Required for type embed|

#### Enumerated Values

|Parameter|Value|
|---|---|
|» type|vimeo|
|» type|url|
|» type|embed|

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
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Media](#schemamedia)|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

## Update a Media

<a id="opIdupdateMedia"></a>

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

This Endpoint update a Media. It must be used for media of type url for set the preview image that can be choosed between the images returned by the create call or other images that can be retrieved by an url.

<h3 id="http-request">HTTP Request</h3>

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

<h3 id="updatemedia-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this media object.|
|» image|body|string(uri)|true|Image url|

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
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Media](#schemamedia)|

<aside class="notice">
This operation require authentication. The logged user must be the media creator.
</aside>

## Delete a Media

<a id="opIddestroyMedia"></a>

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

This Endpoint delete a Media.

<h3 id="http-request">HTTP Request</h3>

`DELETE /api/v2/media/{id}/`

<h3 id="destroymedia-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this media object.|

<h3 id="destroymedia-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication. The logged user must be the media creator.
</aside>
