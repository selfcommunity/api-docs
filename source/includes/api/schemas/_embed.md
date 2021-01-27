<h3 id="tocS_Embed">Embed</h3>
<!-- backwards compatibility -->
<a id="schemaembed"></a>
<a id="schema_Embed"></a>
<a id="tocSembed"></a>
<a id="tocsembed"></a>

```json
{
  "id": 0,
  "embed_type": "string",
  "embed_id": "string",
  "url": "http://example.com",
  "metadata": {}
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|embed_type|string|true|none|Type of the embed, can be any string except `sc_vimeo` or `sc_link` that are used for embedded objects auomatically created by the community|
|embed_id|string|true|none|External id for the embed object|
|url|string(uri)¦null|false|none|Url for the resource, if any|
|metadata|json|false|none|Metadata associated to this embed. It mus be a valid json object|
