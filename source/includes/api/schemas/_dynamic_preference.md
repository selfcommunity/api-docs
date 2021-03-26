<h3 id="tocS_DynamicPreference">DynamicPreference</h3>
<!-- backwards compatibility -->
<a id="schemadynamicpreference"></a>
<a id="schema_DynamicPreference"></a>
<a id="tocSdynamicpreference"></a>
<a id="tocsdynamicpreference"></a>

```json
{
  "id": 0,
  "section": "string",
  "name": "string",
  "value": "string"
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|Unique integer value identifying this dynamic preference|
|section|string|false|read-only|Grouping name|
|name|string|false|read-only|Unique name identifying this dynamic preference|
|value|string|true|none|The value of the dynamic preference (can be an integer or a string)|
