<h2 id="tocS_User">User</h2>
<!-- backwards compatibility -->
<a id="schemauser"></a>
<a id="schema_User"></a>
<a id="tocSuser"></a>
<a id="tocsuser"></a>

```json
{
  "id": 0,
  "username": "string",
  "real_name": "string",
  "email": "user@example.com",
  "email_isvalid": true,
  "date_joined": "2019-08-24T14:15:22Z",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "status": "a",
  "website": "http://example.com",
  "avatar_url": "string",
  "cover": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|real_name|string|false|none|none|
|email|string(email)|false|read-only|none|
|email_isvalid|boolean|false|read-only|none|
|date_joined|string(date-time)|false|read-only|none|
|bio|string|false|none|none|
|location|string|false|none|none|
|birthday|string|false|none|none|
|description|string|false|none|none|
|gender|string|false|none|none|
|status|string|false|read-only|none|
|website|string(uri)|false|none|none|
|avatar_url|string|false|read-only|none|
|cover|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|
