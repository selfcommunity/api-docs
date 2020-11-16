<h2 id="tocS_NotificationTypeComment">NotificationTypeComment</h2>
<!-- backwards compatibility -->
<a id="schemanotificationtypecomment"></a>
<a id="schema_NotificationTypeComment"></a>
<a id="tocSnotificationtypecomment"></a>
<a id="tocsnotificationtypecomment"></a>

```json
{
  "is_new": false,
  "sid": 16052906326300000000007190,
  "notification_type": "comment",
  "notification_active_at": "2020-11-14T17:52:20.967302+01:00",
  "post": {},
  "comment": {}
}
```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|is_new|boolean|false|read-only|Notification not yet read|
|sid|string|false|read-only|Serialization id of the notification block|
|notification_type|string|false|read-only|Type "comment"|
|notification_active_at|string(date-time)|false|read-only|Time when the notification was generated|
|post|[Discussion](#schemadiscussion), [Post](#schemapost)|false|read-only|Primary object involved.|
|comment|[Comment](#schemacomment)|true|read-only|Comment|