<h2 id="tocS_NotificationTypeAnswer">NotificationTypeUnBlockedUser</h2>
<!-- backwards compatibility -->
<a id="schemanotificationtypeunblockeduser"></a>
<a id="schema_NotificationTypeUnBlockedUser"></a>
<a id="tocSnotificationtypeunblockeduser"></a>
<a id="tocsnotificationtypeunblockeduser"></a>

```json
{
  "is_new": true,
  "sid": 16053709616960000000063090,
  "notification_type": "unblocked_user",
  "notification_active_at": "2020-11-14T17:52:20.967302+01:00"
}
```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|is_new|boolean|false|read-only|Notification read|
|sid|string|false|read-only|Serialization id of the notification block|
|notification_type|string|false|read-only|Type "unblocked_user"|
|notification_active_at|string(date-time)|false|read-only|Time when the notification was generated|