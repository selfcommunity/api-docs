<h2 id="tocS_NotificationTypeAnswer">NotificationTypeAnswer</h2>
<!-- backwards compatibility -->
<a id="schemanotificationtypeanswer"></a>
<a id="schema_NotificationTypeAnswer"></a>
<a id="tocSnotificationtypeanswer"></a>
<a id="tocsnotificationtypeanswer"></a>

```json
{
    "is_new": false,
    "sid": 16052906326300000000007190,
    "notification_type": "answer",
    "notification_active_at": "2020-11-14T17:52:20.967302+01:00",
    "post": {},
    "answer": {}
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
|answer|[Comment](#schemacomment)|true|read-only|Answer|