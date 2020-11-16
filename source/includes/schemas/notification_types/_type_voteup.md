<h2 id="tocS_NotificationTypeAnswer">NotificationTypeVoteUp</h2>
<!-- backwards compatibility -->
<a id="schemanotificationtypevoteup"></a>
<a id="schema_NotificationTypeVoteUp"></a>
<a id="tocSnotificationtypevoteup"></a>
<a id="tocsnotificationtypevoteup"></a>

```json
{
  "is_new": true,
  "sid": 16053709616960000000063090,
  "notification_type": "vote_up",
  "notification_active_at": "2020-11-14T17:52:20.967302+01:00",
  "post": {},
}
```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|is_new|boolean|false|read-only|Notification not yet read|
|sid|string|false|read-only|Serialization id of the notification block|
|notification_type|string|false|read-only|Type "answer"|
|notification_active_at|string(date-time)|false|read-only|Time when the notification was generated|
|post|[Discussion](#schemadiscussion), [Post](#schemapost)|false|read-only|Primary object involved.|
