<h2 id="tocS_NotificationTypeCustomNotification">NotificationTypeCustomNotification</h2>
<!-- backwards compatibility -->
<a id="schemanotificationtypecustomnotification"></a>
<a id="schema_NotificationTypeCustomNotification"></a>
<a id="tocSnotificationtypecustomnotification"></a>
<a id="tocsnotificationtypecustomnotification"></a>

```json
{
    "is_new": false,
    "sid": 16052592493610000000054990,
    "notification_type": "custom_notification",
    "notification_active_at": "2020-11-13T10:20:49.361022+01:00",
    "custom_notification": {},
    "user": {}
}
```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|is_new|boolean|false|read-only|Notification not yet read|
|sid|string|false|read-only|Serialization id of the notification block|
|notification_type|string|false|read-only|Type "mention"|
|notification_active_at|string(date-time)|false|read-only|Time when the notification was generated|
|custom_notification|[CustomNotification](#schemacustomnotification)|false|read-only|Custom notification|
|user|[User](#schemauser)]|true|read-only|User generate the custom notification|
