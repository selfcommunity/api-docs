<h2 id="tocS_Tag">Tag</h2>
<!-- backwards compatibility -->
<a id="schematag"></a>
<a id="schema_Tag"></a>
<a id="tocStag"></a>
<a id="tocstag"></a>

```json
{
  "id": 0,
  "active": true,
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "created_at": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|Unique integer value identifying this tag|
|active|boolean|false|none|Is this tag active?|
|name|string|true|none|Unique name of the tag|
|description|string¦null|false|none|Short description of the tag|
|color|string|false|none|Hexadecimal format color code with #|
|visible|boolean|false|none|Is this tag publicly visible?|
|created_at|string(date-time)|false|read-only|Creation date time|
