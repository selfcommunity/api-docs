<h2 id="selfcommunity-api-media">Media</h2>

### Chunk Upload Media

<a id="opIdcreateMediaChunk"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/media/upload/chunk/ \
  -H 'Content-Type: multipart/form-data' \
  -H 'Content-Range: bytes 1433600-1638399/2124437' \
  -H 'Accept: application/json' \
  -H "Transfer-Encoding: chunked" \
  -H "Authorization: Bearer {access_token}"
  --data-binary $'------WebKitFormBoundaryT4U3VeMJUOwfER55\r\nContent-Disposition: form-data; name="image"; filename="p.gif"\r\nContent-Type: image/gif\r\n\r\n\r\n------WebKitFormBoundaryT4U3VeMJUOwfER55--\r\n' \
  --compressed
```

```javascript
const inputBody = '{
  "upload_id": "string",
  "offset": "string",
  "image": "blob"
}';
const headers = {
  'Content-Type':'multipart/form-data',
  'Content-Range': 'bytes 1433600-1638399/2124437',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
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

This endpoint perform the chunk upload of a media with type image or document. The client must split the file into chunks and send to the server in series. After all the chunks have been uploaded the client must call the [Chunk Upload Complete](#opIdcreateMediaChunkComplete) endpoint with the given `upload_id` parameter to finalize the upload and retrieve the [Media](#schemamedia).

To perform chunk upload the request must contain `Content-Range` header with the information about the chunk.

Max file size for image file is 5M.

Max file size for document file is 50M.

Max chunk size is 204800 bytes.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/media/upload/chunk/`

> Body parameter

```json
{
  "upload_id": "string",
  "offset": "string"
}
```

<h4 id="createmediachunk-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|» Content-Range|header|string|true|range of the chunk upload in the format `bytes start-end/total`|
|» upload_id|body|string|true|returned by the first call and required from the second|
|» expires|body|string|false|expiration time|
|» image|body|blob|false|Image chunk to be uploaded|
|» document|body|blob|false|Document chunk to be uploaded|

> Example responses

> 201 Response

```json
{
  "upload_id": "string",
  "offset": "string",
  "expires": "string"
}
```

<h4 id="createmediachunk-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[ChunkMedia](#schemachunkmedia)|

<aside class="notice">
This operation require authentication
</aside>

### Chunk Upload Media Complete

<a id="opIdcreateMediaChunkComplete"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/media/upload/complete/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw 'upload_id=UPLOAD_ID&md5=FILE_MD5' \
```

```javascript
const inputBody = '{
  "type": "image",
  "upload_id": "string",
  "md5": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
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

This endpoint complete the chunk upload and create the [Media](#schemamedia).

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/media/upload/complete/`

> Body parameter

```json
{
  "type": "image",
  "upload_id": "string",
  "md5": "string"
}
```

<h4 id="createmediachunkcomplete-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|» type|body|string|false|Default to image or document based on file extension|
|» upload_id|body|string|true|Id of the chunk uploaded file|
|» md5|body|string|true|MD5 hash of the original file for checksum proposal|

##### Enumerated Values

|Parameter|Value|Description|
|---|---|---|
|» type|image|Image media type|
|» type|doc|Document media type (only pdf documents are supported)|
|» type|eimage|Other images related to contributes. eg. Images uploaded and inserted as `<img>` into the contribute text|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "added_at": "2019-08-24T14:15:22Z",
  "type": "image",
  "title": null,
  "description": null,
  "url": null,
  "image": "string",
  "image_width": 0,
  "image_height": 0,
  "order": 0,
  "embed": null
}
```

<h4 id="createmediachunkcomplete-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Media](#schemamedia)|

<aside class="notice">
This operation require authentication
</aside>

### Create a Media

<a id="opIdcreateMedia"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/media/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
    "type": "url",
    "url": "https://example.com"
  }'

```

```javascript
const inputBody = '{
  "type": "url",
  "url": "https://example.com",
  "embed": null
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
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

This endpoint create a Media. The allowed types for this endpoint are:

 - *vimeo* for video upload. The endpoint must receive the url of the video after the video is fully uploaded to vimeo servers by the client

 - *url* for url fetch. The endpoint retrieve metadata associated with the given url and create a preview

 - *share* for sharing a community object ([Post](#schemapost), [Discussion](#schemadiscussion) or [Status](#schemastatus))

 - *embed* for external objects. The endpoint create an association with an external object using [Embed](#schemaembed) format


If *embed* parameter are set and no [Embed](#schemaembed) with `embed_type` - `embed_id` are in the community database this endpoint create an [Embed](#schemaembed) object with the metadata passed.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/media/`

> Body parameter

```json
{
  "type": "url",
  "url": "https://example.com",
  "embed": {
    "id": 0,
    "embed_type": "string",
    "embed_id": "string",
    "url": "https://example.com",
    "metadata": {}
  }
}
```

<h4 id="createmedia-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|» type|body|string|true|none|
|» url|body|string(uri)|if `type` is *url*|Required for type url|
|» shared_object|body|integer|if `type` is *share*|Required for type share|
|» embed|body|[Embed](#schemaembed)|if `type` is *embed*|none|

##### Enumerated Values

|Parameter|Value|Description|
|---|---|---|
|» type|vimeo|Vimeo video media type|
|» type|url|Url media type (used for any webpages, youtube or vimeo public videos)|
|» type|embed|External resource|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "added_at": "2019-08-24T14:15:22Z",
  "type": "vimeo",
  "title": "string",
  "description": "string",
  "url": "https://example.com",
  "image": "string",
  "image_width": 0,
  "image_height": 0,
  "order": 0,
  "embed": {
    "id": 0,
    "embed_type": "string",
    "embed_id": "string",
    "url": "string",
    "metadata": {}
  }
}
```

<h4 id="createmedia-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Media](#schemamedia)|

<aside class="notice">
This operation require authentication
</aside>

### Get a specific Media

<a id="opIdretrieveMedia"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/media/{id}/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/media/{id}/',
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

This endpoint retrieves a specific media using ID.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/media/{id}/`

<h4 id="retrievemedia-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this media.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "added_at": "2019-08-24T14:15:22Z",
  "type": "vimeo",
  "title": "string",
  "description": "string",
  "url": "https://example.com",
  "image": "string",
  "image_width": 0,
  "image_height": 0,
  "order": 0,
  "embed": {
    "id": 0,
    "embed_type": "string",
    "embed_id": "string",
    "url": "string",
    "metadata": {}
  }
}
```

<h4 id="retrievemedia-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Media](#schemamedia)|

<aside class="notice">
This operation require authentication
</aside>

### Update a Media

<a id="opIdupdateMedia"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/media/{id}/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
    "image": "https://example.com"
  }'

```

```javascript
const inputBody = '{
  "image": "https://example.com"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
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

This endpoint update a Media. It must be used for media of `type` *url* for set the preview image that can be choosed between the images returned by the [create](#opIdcreateMedia) endpoint or other images that can be retrieved by an url.

<h4 id="http-request">HTTP Request</h4>

`PUT /api/v2/media/{id}/`

> Body parameter

```json
{
  "image": "https://example.com"
}
```

<h4 id="updatemedia-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this media object.|
|» image|body|string(uri)|true|Image url|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "added_at": "2019-08-24T14:15:22Z",
  "type": "vimeo",
  "title": "string",
  "description": "string",
  "url": "https://example.com",
  "image": "string",
  "image_width": 0,
  "image_height": 0,
  "order": 0,
  "embed": {
    "id": 0,
    "embed_type": "string",
    "embed_id": "string",
    "url": "string",
    "metadata": {}
  }
}
```

<h4 id="updatemedia-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Media](#schemamedia)|

<aside class="notice">
This operation require authentication. The logged user must be the media creator
</aside>

### Delete a Media

<a id="opIddestroyMedia"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v2/media/{id}/ \
  -H 'Authorization: Bearer {access_token}'
```

```javascript

fetch('/api/v2/media/{id}/',
{
  method: 'DELETE'
  headers: {'Authorization': 'Bearer {access_token}'}
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

This endpoint delete a Media.

<h4 id="http-request">HTTP Request</h4>

`DELETE /api/v2/media/{id}/`

<h4 id="destroymedia-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this media object.|

<h4 id="destroymedia-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication. The logged user must be the media creator.
</aside>
