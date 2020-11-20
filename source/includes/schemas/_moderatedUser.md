<h2 id="tocS_ModerationUser">ModerationUser</h2>
<!-- backwards compatibility -->
<a id="schemamoderationuser"></a>
<a id="schema_ModerationUser"></a>
<a id="tocSmoderationuser"></a>
<a id="tocsmoderationuser"></a>

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
  "location_lat_lng": "string",
  "position_lat_lng": "string",
  "date_of_birth": "2019-08-24",
  "description": "string",
  "gender": "Male",
  "status": "a",
  "website": "http://example.com",
  "avatar": "string",
  "cover": "string",
  "ext_id": "string",
  "tags": [
    {
      "id": 0,
      "active": true,
      "type": "user",
      "name": "string",
      "description": "string",
      "color": "string",
      "visible": true,
      "deleted": true,
      "created_at": "2019-08-24T14:15:22Z"
    }
  ],
  "blocked_at": "2019-08-24T14:15:22Z",
  "days_blocked": "string",
  "expire_at": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|username|string|true|none|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|real_name|string|false|none|none|
|email|string(email)|false|none|none|
|email_isvalid|boolean|false|none|none|
|date_joined|string(date-time)|false|none|none|
|bio|string|false|none|none|
|location|string|false|none|none|
|location_lat_lng|string|false|none|none|
|position_lat_lng|string|false|none|none|
|date_of_birth|string(date)¦null|false|none|none|
|description|string|false|none|none|
|gender|string|false|none|none|
|status|string|false|none|none|
|website|string(uri)|false|none|none|
|avatar|string|false|read-only|none|
|cover|string|false|read-only|none|
|ext_id|string|false|read-only|none|
|tags|[object]¦null|false|read-only|none|
|» id|integer|false|read-only|none|
|» active|boolean|false|none|none|
|» type|string|false|none|none|
|» name|string|true|none|none|
|» description|string¦null|false|none|none|
|» color|string|false|none|none|
|» visible|boolean|false|none|none|
|» deleted|boolean|false|none|none|
|» created_at|string(date-time)|false|read-only|none|
|blocked_at|string(date-time)|true|none|none|
|days_blocked|string|false|read-only|none|
|expire_at|string(date-time)|true|none|none|

#### Enumerated Values

|Property|Value|Description|
|---|---|---|
|status|a|approved|
|status|b|blocked|
|status|u|unregistered|
