<h2 id="tocS_NotificationTypeDeletedFor">NotificationTypeDeletedFor</h2>
<!-- backwards compatibility -->
<a id="schemanotificationtypedeletedfor"></a>
<a id="schema_NotificationTypeDeletedFor"></a>
<a id="tocSnotificationtypedeletedfor"></a>
<a id="tocsnotificationtypedeletedfor"></a>

```json
{
  "is_new": true,
  "sid": 16053813898480000000224680,
  "notification_type": "deleted_for_<type>",
  "notification_active_at": "2020-11-14T20:16:29.848490+01:00",
  "post": {}
```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|is_new|boolean|false|read-only|Notification not yet read|
|sid|string|false|read-only|Serialization id of the notification block|
|notification_type|string|false|read-only|Types: "deleted_for_advertising", deleted_for_aggressive", "deleted_for_vulgar", "deleted_for_poor", "deleted_for_offtopic", "deleted_for_generic", "undeleted_for"|
|notification_active_at|string(date-time)|false|read-only|Time when the notification was generated|
|post|[Discussion](#schemadiscussion), [Post](#schemapost)|false|read-only|Primary object involved.|

#### Enumerated Values

|Property|Value|Description|
|---|---|---|
|notification_type|deleted_for_advertising|none|
|notification_type|deleted_for_aggressive|none|
|notification_type|deleted_for_vulgar|none|
|notification_type|deleted_for_generic|none|
|notification_type|deleted_for_poor|none|
|notification_type|deleted_for_offtopic|none|
|notification_type|undeleted_for|none|
