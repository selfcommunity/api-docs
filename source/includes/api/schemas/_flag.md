<h3 id="tocS_Flag">Flag</h3>
<!-- backwards compatibility -->
<a id="schemaflag"></a>
<a id="schema_Flag"></a>
<a id="tocSflag"></a>
<a id="tocsflag"></a>

```json
{
  "user": {},
  "added_at": "2019-08-24T14:15:22Z",
  "flag_type": 0,
  "flag_type_description": "string"
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|user|object|false|read-only|[User](#schemauser)|
|added_at|string(date-time)|false|read-only|none|
|flag_type|integer|true|none|none|
|flag_type_description|string|false|read-only|none|

#### Enumerated Values

|Parameter|Value|Description|
|---|---|---|
|flag_type|0|spam|
|flag_type|1|aggressive|
|flag_type|2|vulgar|
|flag_type|3|poor|
|flag_type|4|offtopic|
