<h2 id="tocS_ChunkMedia">ChunkMedia</h2>
<!-- backwards compatibility -->
<a id="schemachunkmedia"></a>
<a id="schema_ChunkMedia"></a>
<a id="tocSchunkmedia"></a>
<a id="tocschunkmedia"></a>

```json
{
  "upload_id": "string",
  "offset": "string",
  "expires": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|upload_id|string|true|none|none|
|offset|string|true|none|none|
|expires|string|false|read-only|none|

<h2 id="tocS_Media">Media</h2>
<!-- backwards compatibility -->
<a id="schemamedia"></a>
<a id="schema_Media"></a>
<a id="tocSmedia"></a>
<a id="tocsmedia"></a>

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

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|hash_code|string(uuid)|false|read-only|none|
|added_at|string(date-time)|false|read-only|none|
|type|string|true|none|none|
|title|string|false|read-only|none|
|description|string|false|read-only|none|
|url|string(uri)|false|none|none|
|keywords|string|false|read-only|none|
|entities|string|false|read-only|none|
|image|string(binary)|false|read-only|none|
|image_width|integer|false|read-only|none|
|image_height|integer|false|read-only|none|
|oembed_type|string|false|read-only|none|
|oembed_url|string(uri)|false|read-only|none|
|oembed_width|integer|false|read-only|none|
|oembed_height|integer|false|read-only|none|
|oembed_duration|integer|false|read-only|none|
|oembed_html|string|false|read-only|none|
|oembed_preview_ready|boolean|false|read-only|none|
|oembed_available|boolean|false|read-only|none|
|order|integer|false|read-only|none|
|choice_images|[any]|false|read-only|none|
|embed_type|string¦null|false|none|none|
|embed_id|string¦null|false|none|none|

#### Enumerated Values

|Property|Value|Description|
|---|---|---|
|type|vimeo|Media associated to an uploaded video on vimeo platform|
|type|url|Media associated to a webpage url|
|type|embed|Media of type embed|
|type|image|Media of type image|
|type|eimage|Media of type inline image, used in [Discussion](#selfcommunity-api-discussion) or [Post](#selfcommunity-api-post)  text editor|
|type|document|Media of type document (pdf)|
