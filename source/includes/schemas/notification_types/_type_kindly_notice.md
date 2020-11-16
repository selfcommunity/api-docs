<h2 id="tocS_NotificationTypeComment">NotificationTypeKindlyNotice</h2>
<!-- backwards compatibility -->
<a id="schemanotificationtypekindlynotice"></a>
<a id="schema_NotificationTypekindlynotice"></a>
<a id="tocSnotificationtypekindlynotice"></a>
<a id="tocsnotificationtypekindlynotice"></a>

```json
{
  "is_new": true,
  "sid": 16053813898480000000224680,
  "notification_type": "kindly_notice_<type>",
  "notification_active_at": "2020-11-14T20:16:29.848490+01:00",
  "post": {}
```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|is_new|boolean|false|read-only|Notification not yet read|
|sid|string|false|read-only|Serialization id of the notification block|
|notification_type|string|false|read-only|Types: "kindly_notice_advertising", "kindly_notice_aggressive", "kindly_notice_vulgar", "kindly_notice_poor", "kindly_notice_offtopic", "kindly_notice_generic", "kindly_notice_flag"|
|notification_active_at|string(date-time)|false|read-only|Time when the notification was generated|
|post|[Discussion](#schemadiscussion), [Post](#schemapost)|false|read-only|Primary object involved.|

#### Enumerated Values

|Property|Value|Description|
|---|---|---|
|notification_type|kindly_notice_advertising|Advertising content|
|notification_type|kindly_notice_aggressive|Aggressive content|
|notification_type|kindly_notice_vulgar|Vulgar content|
|notification_type|kindly_notice_poor|Poor content|
|notification_type|kindly_notice_offtopic|Offtopic content|
|notification_type|kindly_notice_flag|Flagged content which is not irregular|