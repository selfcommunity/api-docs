<h2 id="tocS_ModerationUser">ModerationUser</h2>
<!-- backwards compatibility -->
<a id="schemamoderationuser"></a>
<a id="schema_ModerationUser"></a>
<a id="tocSmoderationuser"></a>
<a id="tocsmoderationuser"></a>

```json
{
 .. All User fields ..
  "blocked_at": "2019-08-24T14:15:22Z",
  "days_blocked": "string",
  "expire_at": "2019-08-24T14:15:22Z",
  "low_visibility": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
| All [User](#schemauser) fields|--|--|--|All [User](#schemauser) fields|
|blocked_at|string(date-time)|true|none|Block start date|
|days_blocked|string|false|read-only|Number of days of block duration (if none and block date set, it means forever)|
|expire_at|string(date-time)|true|none|Date on which the auto unblock will take place|
|low_visibility|boolean|false|none|If true, it means that all contributions of this user will be set to low visibility|
