<h2 id="tocS_NotificationTypeIncubatorApproved">NotificationTypeIncubatorApproved</h2>
<!-- backwards compatibility -->
<a id="schemanotificationtypeincubatorapproved"></a>
<a id="schema_NotificationTypeIncubatorApproved"></a>
<a id="tocSnotificationtypeincubatorapproved"></a>
<a id="tocsnotificationtypeincubatorapproved"></a>

```json
{
    "is_new": false,
    "sid": 16052592493610000000054990,
    "notification_type": "incubator_approved",
    "notification_active_at": "2020-11-13T10:20:49.361022+01:00",
    "incubator": {}
}
```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|is_new|boolean|false|read-only|Notification not yet read|
|sid|string|false|read-only|Serialization id of the notification block|
|notification_type|string|false|read-only|Type "mention"|
|notification_active_at|string(date-time)|false|read-only|Time when the notification was generated|
|incubator|[IncubatorCategory](#schemaincubatorcategory)|false|read-only|Incubator approved|