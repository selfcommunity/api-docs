<h2 id="tocS_NotificationTypeAnswer">NotificationTypeBlockedUser</h2>
<!-- backwards compatibility -->
<a id="schemanotificationtypeblockeduser"></a>
<a id="schema_NotificationTypeBlockedUser"></a>
<a id="tocSnotificationtypeblockeduser"></a>
<a id="tocsnotificationtypeblockeduser"></a>

```json
{
  "is_new": true,
  "sid": 16053709616960000000063090,
  "notification_type": "blocked_user",
  "notification_active_at": "2020-11-14T17:52:20.967302+01:00",
  "block_settings": {
    "blocked_at": "2020-11-14T18:11:48.915332+01:00",
    "days_blocked": 1,
    "expire_at": "2020-11-15T18:11:48.915332+01:00",
    "reputation_delta": 161
  }
}
```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|is_new|boolean|false|read-only|Notification not yet read|
|sid|string|false|read-only|Serialization id of the notification block|
|notification_type|string|false|read-only|Type "answer"|
|notification_active_at|string(date-time)|false|read-only|Time when the notification was generated|
|block_settings|[BlockedSettings](#schemablockedsettings)|true|read-only|Data of user block|
