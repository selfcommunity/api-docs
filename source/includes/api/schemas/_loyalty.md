<h3 id="tocS_LoyaltyPrize">LoyaltyPrize</h3>
<!-- backwards compatibility -->
<a id="schemaloyaltyprize"></a>
<a id="schema_LoyaltyPrize"></a>
<a id="tocSloyaltyprize"></a>
<a id="tocsloyaltyprize"></a>

```json
{
  "id": 0,
  "active": true,
  "title": "string",
  "description": "string",
  "points": 0,
  "link": "http://example.com",
  "image": "string",
  "created_at": "2019-08-24T14:15:22Z",
  "lastmod_datetime": "2019-08-24T14:15:22Z",
  "created_by": {}
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|Unique integer value|
|active|boolean|false|none|Is this prize active?|
|title|string|true|none|The title of the prize|
|description|string¦null|false|none|A description of the prize|
|points|integer(int64)|true|none|Points to request this prize|
|link|string(uri)¦null|false|none|Link to a web resource for this prize|
|image|string(binary)|true|none|Image of this prize|
|created_at|string(date-time)|false|read-only|Date of creation|
|lastmod_datetime|string(date-time)|false|read-only|Date of last modify|
|created_by|object|false|read-only|[User](#schemauser)|

<h3 id="tocS_LoyaltyPrizeUser">LoyaltyPrizeUser</h3>
<!-- backwards compatibility -->
<a id="schemaloyaltyprizeuser"></a>
<a id="schema_LoyaltyPrizeUser"></a>
<a id="tocSloyaltyprizeuser"></a>
<a id="tocsloyaltyprizeuser"></a>

```json
{
  "id": 0,
  "user": {},
  "prize": {},
  "prize_points": 0,
  "pending_at": "2019-08-24T14:15:22Z",
  "status": 0,
  "status_description": "string"
}
```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|Unique integer value|
|user|object|false|read-only|[User](#schemauser)|
|prize|object|false|read-only|[LoyaltyPrize](#schemaloyaltyprize)|
|prize_points|integer|false|read-only|Prize points when the request was created|
|pending_at|string(date-time)|false|read-only|Date since it was in pending status|
|status|integer|false|none|Integer value representing the status|
|status_description|string|false|read-only|The string representation of the status|

#### Enumerated Values

|Property|Value|Description|
|---|---|---|
|status|0|pending|
|status|1|refused|
|status|2|sent|
