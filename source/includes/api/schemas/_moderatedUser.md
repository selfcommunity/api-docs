<h3 id="tocS_ModerationUser">ModerationUser</h3>
<!-- backwards compatibility -->
<a id="schemamoderationuser"></a>
<a id="schema_ModerationUser"></a>
<a id="tocSmoderationuser"></a>
<a id="tocsmoderationuser"></a>

```json
{
 .. All User fields ..
  "reputation": 25,
  "followings_counter": 3,
  "followers_counter": 0,
  "posts_counter": 0,
  "discussions_counter": 0,
  "statuses_counter": 0,
  "polls_counter": 0,
  "blocked_at": "2019-08-24T14:15:22Z",
  "days_blocked": "string",
  "expire_at": "2019-08-24T14:15:22Z",
  "last_seen": "2019-08-24T14:15:22Z",
  "email_isvalid": true,
  "flags_given": 0,
  "flags_received": 0,
  "last_score_variation": {
      "score": 10,
      "comment": "string",
      "reputed_at": "2021-07-06T12:06:57.168320+02:00",
      "created_by": {
          "id": 1,
          "username": "admin",
          "avatar": "url"
      }
  }  
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
| All [User](#schemauser) fields|--|--|--|All [User](#schemauser) fields|
|reputation|integer|false|none|User reputation.|
|followings_counter|integer|false|none|Number of followings.|
|followers_counter|integer|false|none|Number of followers.|
|posts_counter|integer|false|none|Number of posts.|
|discussions_counter|integer|false|none|Number of discussions.|
|statuses_counter|integer|false|none|Number of statuses.|
|polls_counter|integer|false|none|Number of polls.|
|reputation|integer|false|none|User reputation.|
|blocked_at|string(date-time)|true|none|Block start date|
|days_blocked|string|false|read-only|Number of days of block duration (if none and block date set, it means forever)|
|expire_at|string(date-time)|true|none|Date on which the auto unblock will take place|
|last_seen|string(date-time)|false|read-only|Date on which the user has been seen in the community|
|email_isvalid|boolean|false|read-only|Email is valid|
|flags_given|integer|false|read-only|Number of flags given by the user|
|flags_received|integer|false|read-only|Number of flags received by the user (in his contents)|
|last_score_variation|object|false|none|Full description of the last score variation made by a moderator.|
