<h3 id="tocS_CustomNotification">CustomNotification</h3>
<!-- backwards compatibility -->
<a id="schemacustomnotification"></a>
<a id="schema_CustomNotification"></a>
<a id="tocScustomnotification"></a>
<a id="tocscustomnotification"></a>

```json
{
  "id": 0,
  "type": "string",
  "embed": {
    "id": 0,
    "embed_type": "string",
    "embed_id": "string",
    "url": "http://example.com",
    "metadata": "{}"
  },
  "title": "string",
  "description": "string"
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|type|string|true|none|Custom type notification|
|embed|[Embed](#schemaembed)|false|none|Embed object if exist|
|title|string¦null|false|none|Notification title|
|description|string¦null|false|none|Notification description|
