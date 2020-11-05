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
  "location_lat_lng": "string",
  "position_lat_lng": "string",
  "date_of_birth": "string",
  "description": "string",
  "gender": "Male",
  "status": "a",
  "website": "http://example.com",
  "avatar": "string",
  "cover": "string",
  "ext_id": 3,
  "tags": []
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|The ID of the user.|
|username|string|false|read-only|The username of the user. Max 255 characters. Letters, numbers and -/_ characters.|
|real_name|string|false|none|Real name. Max 255 characters.|
|email|string(email)|false|read-only|Email of the user.|
|email_isvalid|boolean|false|read-only|Email is valid. Default: False. Format: YYYY-MM-ddTHH:mm:ss.ss±hh:mm (ISO 8601).|
|date_joined|string(date-time)|false|read-only|Date joined to the community.|
|bio|string|false|none|User biography.|
|location|string|false|none|User location. Max 100 characters.|
|location_lat_lng|string|false|none|Location in coordinates. It is populated automatically if "Google Geocoding" integration is active. Format: lat,lng.|
|position_lat_lng|string|false|none|User current position. Format: lat,lng.|
|date_of_birth|string(date)|false|none|Date of birth. Format: YYYY-MM-DD (ISO 8601).|
|description|string|false|none|User description. Max 50 characters.|
|gender|string|false|none|User gender. Values: Male, Female, Unspecified. Default: Unspecified.|
|status|string|false|read-only|User status. Values: a (approved), b (blocked), u (unregistered, deleted). Default: a.|
|website|string(uri)|false|none|User website. Max 200 characters.|
|avatar|string(binary)¦null|false|none|Avatar of the user.|
|cover|string(binary)¦null|false|none|Cover of the user.|
|ext_id|integer|false|read-only|The external ID of the user. It is assigned only during signup.|
|tags|[Object]¦[]|false|none|User's tag list. List of [Tag](#schematag).|

#### Enumerated Values

|Property|Value|Description|
|---|---|---|
|gender|Male|Male|
|gender|Female|Female|
|gender|Unspecified|Unspecified|
|status|a|Approved|
|status|b|Blocked|
|status|u|Unregistered|
