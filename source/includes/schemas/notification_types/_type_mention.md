<h2 id="tocS_NotificationTypeAnswer">NotificationTypeMention</h2>
<!-- backwards compatibility -->
<a id="schemanotificationtypemention"></a>
<a id="schema_NotificationTypeMention"></a>
<a id="tocSnotificationtypemention"></a>
<a id="tocsnotificationtypemention"></a>

```json
{
  "is_new": false,
  "sid": 16052906326300000000007190,
  "notification_type": "mention",
  "notification_active_at": "2020-11-14T17:52:20.967302+01:00",
  "post": {}
}
```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|is_new|boolean|false|read-only|Notification not yet read|
|sid|string|false|read-only|Serialization id of the notification block|
|notification_type|string|false|read-only|Type "mention"|
|notification_active_at|string(date-time)|false|read-only|Time when the notification was generated|
|post|[Discussion](#schemadiscussion), [Post](#schemapost)|false|read-only|Primary object involved.|
