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
  "added_at": "2019-08-24T14:15:22Z",
  "type": "url",
  "title": "string",
  "description": "string",
  "url": "http://example.com",
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

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|added_at|string(date-time)|false|read-only|none|
|type|string|true|none|none|
|title|string|false|read-only|none|
|description|string|false|read-only|none|
|url|string(uri)|false|none|none|
|image|string(binary)|false|read-only|none|
|image_width|integer|false|read-only|none|
|image_height|integer|false|read-only|none|
|order|integer|false|read-only|none|
|embed|[Embed](#schemaembed)¦null|false|none|none|

### Enumerated Values

|Property|Value|Description|
|---|---|---|
|type|vimeo|Media associated to an uploaded video on vimeo platform|
|type|url|Media associated to a webpage url|
|type|embed|Media of type embed|
|type|image|Media of type image|
|type|eimage|Media of type inline image, used in [Discussion](#selfcommunity-api-discussion) or [Post](#selfcommunity-api-post)  text editor|
|type|doc|Media of type document (pdf)|
