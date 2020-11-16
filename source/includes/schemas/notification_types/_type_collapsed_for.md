<h2 id="tocS_NotificationTypeDeletedFor">NotificationTypeCollapsedFor</h2>
<!-- backwards compatibility -->
<a id="schemanotificationtypecollapsedfor"></a>
<a id="schema_NotificationTypeCollapsedFor"></a>
<a id="tocSnotificationtypecollapsedfor"></a>
<a id="tocsnotificationtypecollapsedfor"></a>

```json
{
  "is_new": true,
  "sid": 16053813898480000000224680,
  "notification_type": "collapsed_for_<type>",
  "notification_active_at": "2020-11-14T20:16:29.848490+01:00",
  "post": {}
```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|is_new|boolean|false|read-only|Notification not yet read|
|sid|string|false|read-only|Serialization id of the notification block|
|notification_type|string|false|read-only|Types: "collapsed_for_advertising", "collapsed_for_aggressive", "collapsed_for_vulgar", "collapsed_for_poor", "collapsed_for_offtopic", "collapsed_for_generic"|
|notification_active_at|string(date-time)|false|read-only|Time when the notification was generated|
|post|[Discussion](#schemadiscussion), [Post](#schemapost)|false|read-only|Primary object involved.|

#### Enumerated Values

|Property|Value|Description|
|---|---|---|
|notification_type|collapsed_for_advertising|none|
|notification_type|collapsed_for_aggressive|none|
|notification_type|collapsed_for_vulgar|none|
|notification_type|collapsed_for_generic|none|
|notification_type|collapsed_for_poor|none|
|notification_type|collapsed_for_offtopic|none|
