<h3 id="tocS_User">User</h3>
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
  "website": "https://example.com",
  "avatar": "string",
  "cover": "string",
  "ext_id": 3,
  "tags": [],
  "permission": {
    "upload_video": false,
    "create_contribute": true,
    "create_poll": true,
    "locate_post": false,
    "create_post": true,
    "create_post_with_category": true,
    "follow_user": true,
    "request_connection": true,
    "accept_connection": true
  },
  "reputation": 0,
  "connection_status": "string",
  "followings_counter": 1,
  "followers_counter": 0,
  "posts_counter": 2,
  "discussions_counter": 4,
  "statuses_counter": 1,
  "polls_counter": 6
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|Note|
|---|---|---|---|---|---|
|id|integer|false|read-only|The ID of the user.|
|username|string|false|read-only|The username of the user. Max 255 characters. Letters, numbers and -/_ characters.|
|real_name|string|false|none|Real name. Max 255 characters.|
|email|string(email)|false|read-only|Email of the user.|
|email_isvalid|boolean|false|read-only|Email is valid. Default: False.|
|date_joined|string(date-time)|false|read-only|Date joined to the community.|
|bio|string|false|none|User biography.|
|location|string|false|none|User location. Max 100 characters.|
|location_lat_lng|string|false|none|Location in coordinates. It is populated automatically if "Google Geocoding" integration is active. Format: lat,lng.|
|position_lat_lng|string|false|none|User current position. Format: lat,lng.|
|date_of_birth|string(date)|false|none|Date of birth. Format: YYYY-MM-DD (ISO 8601).|
|description|string|false|none|User description. Max 50 characters.|
|gender|string|false|none|User gender. Values: Male, Female, Unspecified. Default: Unspecified.|
|status|string|false|read-only|User status. Values: a (approved), b (blocked), d (deleted; soft deleted), u (unregistered; hard deleted). Default: a.|
|website|string(uri)|false|none|User website. Max 200 characters.|
|avatar|string(binary)¦null|false|none|Avatar of the user.|
|cover|string(binary)¦null|false|none|Cover of the user.|
|ext_id|integer|false|read-only|The external ID of the user. It is assigned only during signup.|
|tags|[Object]¦[]|false|none|User's tag list. List of [Tag](#schematag).|
|reputation|integer|false|read-only|User reputation.|
|permission|[UserPermission](#schemauserpermission)|false|read-only|List of user permission. Only for the resource [/user/me/](#opIdmeUser).|
|connection_status|string¦null|false|read-only|The connection status between the request user and this user|
|connection_requests_sent_counter|integer¦null|false|read-only|Number of connection requests sent by the user|Only if dynamic preference `configurations.follow_enabled` is `false`|
|connection_requests_received_counter|integer¦null|false|read-only|Number of connection requests received by the user|Only if dynamic preference `configurations.follow_enabled` is `false`|
|connections_counter|integer¦null|false|read-only|Number of connections of the user|Only if dynamic preference `configurations.follow_enabled` is `false`|
|followings_counter|integer¦null|false|read-only|Number of followings of the user|Only if dynamic preference `configurations.follow_enabled` is `true`|
|followers_counter|integer¦null|false|read-only|Number of followers of the user|Only if dynamic preference `configurations.follow_enabled` is `true`|
|posts_counter|integer¦null|false|read-only|Number of posts created by the user|Only if dynamic preference `configurations.post_type_enabled` is `true`|
|discussions_counter|integer¦null|false|read-only|Number of discussions created by the user|Only if dynamic preference `configurations.post_type_enabled` is `true`|
|statuses_counter|integer¦null|false|read-only|Number of statuses created by the user|Only if dynamic preference `configurations.status_type_enabled` is `true`|
|polls_counter|integer¦null|false|read-only|Number of polls created by the user|Only if dynamic preference `addons.polls_enabled` is `true` or if the user has a staff role|


#### Enumerated Values

|Property|Value|Description|
|---|---|---|
|gender|Male|Male|
|gender|Female|Female|
|gender|Unspecified|Unspecified|
|status|a|Approved|
|status|b|Blocked|
|status|d|Deleted|
|status|u|Unregistered (hard deleted)|
|connection_status|null|No connection status between the request user and this user|
|connection_status|followed|This user is followed|
|connection_status|connected|This user is connected (friend)|
|connection_status|sent_connection_request|Connection (friendship) request sent to this user|
|connection_status|received_connection_request|Connection (friendship) request received from this user|
