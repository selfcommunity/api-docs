<h3 id="tocS_Score">Score</h3>
<!-- backwards compatibility -->
<a id="schemascore"></a>
<a id="schema_Score"></a>
<a id="tocSscore"></a>
<a id="tocsscore"></a>

```json
{
  "id": 0,
  "user": {
    "id": 0,
    "username": "string",
    "real_name": "string",
    "email": "user@example.com",
    "description": "string",
    "avatar": "string",
    "reputation": 0
  },
  "score": "string",
  "reputation_type": 1,
  "reputation_type_description": "string",
  "comment": "string"
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|Unique integer value|
|user|object|false|read-only|[User](#schemauser)|
|score|string|false|read-only|Positive or negative integer value|
|reputation_type|integer|false|read-only|Integer code|
|reputation_type_description|string|false|read-only|String description of the code|
|comment|string¦null|false|none|Custom comment for this score variation|
